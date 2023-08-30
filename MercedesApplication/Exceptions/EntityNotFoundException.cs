using Application;
using System;
using System.Collections.Generic;
using System.Text;

namespace Application.Exceptions
{
    public class EntityNotFoundException : Exception
    {
        public EntityNotFoundException() : base($"Entitet sa tim id ne postoji.")
        {
        }
    }
}
