using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Com.Cognizant.MovieCruiser.Model;
using Com.Cognizant.Moviecruiser.Utility;

namespace Com.Cognizant.Moviecruiser.Dao
{
    public class MovieDaoCollection : IMovieDao
    {

        public static List<Movie> movieList = null;
        static public void MovieListInitialization()
        {
            if (movieList == null)
            {
                movieList = new List<Movie>()
                {

                    new Movie() { Id=1, Title="Avatar", BoxOffice=2787965087, Active=true,
                    DateOfLaunch =  DateUtility.ConvertToDate("15/03/2017"), Genre="Science Fiction",
                        HasTeaser=true},

                    new Movie() { Id=2, Title="The Avengers", BoxOffice=1518812988, Active=true,
                    DateOfLaunch =  DateUtility.ConvertToDate("23/12/2017"), Genre="Superhero",
                        HasTeaser=false},

                    new Movie() { Id=3, Title="Titanic", BoxOffice=2187463944, Active=true,
                    DateOfLaunch =  DateUtility.ConvertToDate("21/08/2017"), Genre="Romance",
                    HasTeaser=false},

                    new Movie() { Id=4, Title="Jurassic World", BoxOffice=1671713208, Active=false,
                    DateOfLaunch=  DateUtility.ConvertToDate("02/07/2017"), Genre="Science Fiction",
                    HasTeaser=true},

                    new Movie() { Id=5, Title="Avengers: End Game",BoxOffice=2750760348, Active=true,
                    DateOfLaunch=  DateUtility.ConvertToDate("02/11/2022"), Genre="Superhero",
                    HasTeaser=true }

                };
            }
        }




        // DateUtility.ConvertToDate("12/12/2009");



        public Movie GetMovie(long movieId)
        {
            Movie m = null;

            foreach (Movie movie in movieList)
            {
                if (movieId == movie.Id)
                    m = movie;
            }
            return m;
        }

        public List<Movie> GetMovieListAdmin()
        {
            return movieList;
        }

        public List<Movie> GetMovieListCustomer()
        {
            return movieList;//doubt
        }

        public void ModifyMovie(Movie movie)
        {
            foreach (Movie m in movieList)
            {
                if (m == movie)
                {
                    Console.WriteLine("Enter the correct movie title:");
                    m.Title = Console.ReadLine();
                    Console.WriteLine("Enter the correct Box Office Collection in $:");
                    m.BoxOffice = Convert.ToInt64(Console.ReadLine());
                    Console.WriteLine("Enter 'true' if movie is active or 'false' if movie is not active:");
                    m.Active = Convert.ToBoolean(Console.ReadLine());
                    Console.WriteLine("Enter the correct date of launch in dd/mm/yyyy format:");
                    m.DateOfLaunch = DateUtility.ConvertToDate(Console.ReadLine());
                    Console.WriteLine("Enter the correct movie genre:");
                    m.Genre = Console.ReadLine();
                    Console.WriteLine("Enter 'true' if movie has a teaser or 'false' if movie does not have a teaser:");
                    m.HasTeaser = Convert.ToBoolean(Console.ReadLine());
                }
            }
        }
    }
}
