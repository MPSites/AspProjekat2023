﻿using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json.Serialization;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Application.Exceptions;
using FluentValidation;

namespace Api.Core
{
    public class ErrorMiddleware
    {
    
            private readonly RequestDelegate _next;

            public ErrorMiddleware(RequestDelegate next)
            {
                _next = next;
            }

            // IMyScopedService is injected into Invoke
            public async Task Invoke(HttpContext httpContext)
            {
                try
                {
                     await _next(httpContext);
                }
                catch (Exception er)
                {
                    httpContext.Response.ContentType = "application/json";
                    object response = null;
                    var statusCode = StatusCodes.Status500InternalServerError;

                    switch(er)
                    {
                        case EntityNotFoundException ex:
                        httpContext.Response.StatusCode = StatusCodes.Status404NotFound;
                        response = new
                        {
                            message = "Entitet sa tim id ne postoji."
                        };
                        break;
                        case ValidationException ex:
                        httpContext.Response.StatusCode = StatusCodes.Status422UnprocessableEntity;
                        response = new
                        {
                            message = "Obavezna polja!",
                            errors = ex.Errors.Select(x => new {
                                x.PropertyName,
                                x.ErrorMessage
                            })
                        };
                        break;
                        case ForbiddenException ex:
                        httpContext.Response.StatusCode = StatusCodes.Status403Forbidden;
                        response = new
                        {
                            message = "Korisniku nije dozvoljena prosledjena radnja"
                        };
                        break;
                        default:
                        httpContext.Response.StatusCode = statusCode;
                        response = new
                        {
                            message = er.Message,
                        };
                        break;
                    }

                    if(response != null)
                    {
                        await httpContext.Response.WriteAsync(JsonConvert.SerializeObject(response));
                        return;
                    }

                    await Task.FromResult(httpContext.Response);
                }    

            }
        
    }
}
