using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Com.Cognizant.Moviecruiser.Dao;
using Com.Cognizant.MovieCruiser.Model;

namespace MovieCruiser
{
    public partial class MovieListCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //MovieDaoCollection movieDao = new MovieDaoCollection();
            MovieDaoCollection.MovieListInitialization();
            MovieListGridView.DataSource = MovieDaoCollection.movieList;
            MovieListGridView.DataBind();

            if (Request.QueryString["id"]!=null)
            {
                //FavoritesDaoCollection favoritesDao = new FavoritesDaoCollection();
                FavoritesDaoCollection.FavoritesListInitialization();
                int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                Movie obj = (from x in MovieDaoCollection.movieList
                             where x.Id == id
                             select x).FirstOrDefault();
                if (obj != null)
                {
                    if (!FavoritesDaoCollection.favoritesMovieList.Contains(obj))
                    {
                        FavoritesDaoCollection.favoritesMovieList.Add(obj);
                    }
                    Boolean ShowPanel = Convert.ToBoolean(Request.QueryString["ShowPanel"].ToString());
                    if (ShowPanel)
                    {
                        NotificationPanel.Visible = true;
                    }
                }
            }
        }
    }
}