using Application.Dto;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace Validations
{
    public class UpdateUsernameValidate : AbstractValidator<UserDto>
    {

        public UpdateUsernameValidate()
        {
            RuleFor(x => x.Username)
              .NotEmpty()
              .WithMessage("Korisničko ime je obavezno")
              .DependentRules(() => {
                  RuleFor(x => x.Username)
                    .MinimumLength(6)
                    .WithMessage("Korisničko ime mora biti duže od 6 karaktera");
              });
             
        }
    }
}
