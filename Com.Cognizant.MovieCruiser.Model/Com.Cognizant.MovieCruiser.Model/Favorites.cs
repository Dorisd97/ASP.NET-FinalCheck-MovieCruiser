using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Cognizant.MovieCruiser.Model
{
    public class Favorites
    {
        private List<Movie> movieList;

        public List<Movie> MovieList
        {
            get { return movieList; }
            set { movieList = value; }
        }
        private int no_of_favorites;

        public int No_of_favorites 
        {
            get { return no_of_favorites; }
            set { no_of_favorites = value; }
        }

        public Favorites()
        {

        }

        public Favorites(List<Movie> movieList, int no_of_favorites)
        {
            this.movieList = movieList;
            this.no_of_favorites = no_of_favorites;
        }

    }
}
