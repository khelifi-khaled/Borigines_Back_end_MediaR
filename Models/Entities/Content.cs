using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace Models.Entities
{
    public class Content
    {
        public Content()
        {
                
        }


        public Guid Id { get; }

        public string Title { get; set; }

        public string Discription { get; set; }

        public Language ContentLanguage { get; set; }
    }
}
