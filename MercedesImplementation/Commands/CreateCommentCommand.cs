using Application.Exceptions;
using FluentValidation;
using Application.Dto;
using Application.Commands;
using Domen.Entities;
using Implementation.Validation;
using System;
using System.Collections.Generic;
using System.Text;
using Application;

namespace Implementation.Commands
{
    public class CreateCommentCommand : ICommentCommand
    {
        private readonly CommentValidate _validations;
        private readonly DataAccess.DataContext _context;
        private readonly IApplicationActor _actor;

        public CreateCommentCommand(CommentValidate validations, IApplicationActor actor, DataAccess.DataContext context)
        {
            _validations = validations;
            _actor = actor;
            _context = context;
        }
        public string Name => "Comment product";

        public void Execute(CommentDto request)
        {
            _validations.ValidateAndThrow(request);

            var product = _context.Products.Find(request.ProductId);

            if(product == null)
            {
                throw new EntityNotFoundException();
            }

            _context.Comments.Add(new Comment
            {
                CommentText = request.CommentText,
                UserId = _actor.Id,
                ProductId = product.Id
            });

            _context.SaveChanges();
        }
    }
}
