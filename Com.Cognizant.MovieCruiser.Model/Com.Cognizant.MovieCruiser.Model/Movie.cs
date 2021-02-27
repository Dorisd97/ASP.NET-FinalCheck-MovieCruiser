using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Cognizant.MovieCruiser.Model
{
    public class Movie
    {
        private int id;
        public int Id
        {
            get { return id; }
            set { id = value; }
        }

        private string title;
        public string Title
        {
            get { return title; }
            set { title = value; }
        }

        private long boxOffice;
        public long BoxOffice
        {
            get { return boxOffice; }
            set { boxOffice = value; }
        }

        private Boolean active;
        public Boolean Active
        {
            get { return active; }
            set { active = value; }
        }

        private DateTime dateOfLaunch;
        public DateTime DateOfLaunch
        {
            get { return dateOfLaunch; }
            set { dateOfLaunch = value; }
        }

        private string genre;
        public string Genre
        {
            get { return genre; }
            set { genre = value; }
        }

        private Boolean hasTeaser;
        public Boolean HasTeaser
        {
            get { return hasTeaser; }
            set { hasTeaser = value; }
        }


        //default constructor
        public Movie() { }

        //parameterizeed constructor
        public Movie(int id, string title, long boxOffice, Boolean active, DateTime dateOfLaunch, string genre, Boolean hasTeaser)
        {
            this.id = id;
            this.title = title;
            this.boxOffice = boxOffice;
            this.Active = active;
            this.dateOfLaunch = dateOfLaunch;
            this.genre = genre;
            this.hasTeaser = hasTeaser;
        }

        public override string ToString()
        {
            return base.ToString();
        }

        public override bool Equals(object obj)
        {
            return base.Equals(obj);
        }
    }
}
