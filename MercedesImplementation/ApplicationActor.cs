using Application;
using System;
using System.Collections.Generic;
using System.Text;

namespace Implementation
{
    public class ApplicationActor : IApplicationActor
    {
        public int Id => 1;

        public string Identity => "korisnik";

        public ICollection<string> AllowUseCases => new List<string>() { ""};
    }
}
