using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Com.Cognizant.Moviecruiser.Dao;

namespace MovieCruiser
{
    public partial class MovieListAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //MovieDaoCollection movieDao = new MovieDaoCollection();
            MovieDaoCollection.MovieListInitialization();
            MovieListGridView.DataSource = MovieDaoCollection.movieList;
            MovieListGridView.DataBind();
        }

    }
}