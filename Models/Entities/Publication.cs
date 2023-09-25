using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Entities
{
    public class Publication
    {

        public Publication()
        {

        }

        public Guid Id { get;}

        public DateTime Date { get; set; }

        public User UserPub { get; set; }

        public Category CategoryPub { get; set; }

        public List<Content> ContentsPub { get; set; }

        public List<Picture> PicturesPub { get; set; }
    }
}
