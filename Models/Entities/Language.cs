using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Entities
{
    public class Language
    {
        public Language()
        {
            
        }

        public Guid Id { get; }

        public string Code { get; set; }
    }
}
