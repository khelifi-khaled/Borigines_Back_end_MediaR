using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.Entities
{
    public class Album
    {
        public Album()
        {
            
        }


        public Guid Id { get;}

        public string  Title { get; set; }

        public DateTime Date { get; set; }

        public User UserAlbum { get; set; }

        public List<Picture> PicturesAlbum { get; set; }

    }
}
