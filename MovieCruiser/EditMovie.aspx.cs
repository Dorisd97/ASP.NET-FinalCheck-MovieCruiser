using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Com.Cognizant.Moviecruiser.Dao;
using Com.Cognizant.MovieCruiser.Model;
using Com.Cognizant.Moviecruiser.Utility;

namespace MovieCruiser
{
    public partial class EditMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    //MovieDaoCollection movieDao = new MovieDaoCollection();
                    MovieDaoCollection.MovieListInitialization();
                    int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                    Movie obj = (from x in MovieDaoCollection.movieList
                                 where x.Id == id
                                 select x).FirstOrDefault();
                    if (obj != null)
                    {
                        txtTitle.Text = obj.Title;
                        txtGross.Text = obj.BoxOffice.ToString();
                        if (obj.Active)
                        {
                            RadioBtnYes.Checked = true;
                        }
                        else
                        {
                            RadioBtnNo.Checked = true;
                        }
                        txtDateOfLaunch.Text = obj.DateOfLaunch.ToString();
                        DropDownListGenre.SelectedValue = obj.Genre;
                        if (obj.HasTeaser)
                        {
                            HasTeaserChkBox.Checked = true;
                        }
                        else
                        {
                            HasTeaserChkBox.Checked = false;
                        }

                        //movieDao.movieList.Where(w => w.Id == id).ToList().ForEach(i =>
                        //{
                        //    i.Title = txtTitle.Text;
                        //    i.BoxOffice = Convert.ToInt64(txtGross.Text);
                        //    i.Active = Convert.ToBoolean(RadioBtnYes.Text);
                        //    i.DateOfLaunch = DateUtility.ConvertToDate(txtDateOfLaunch.Text);
                        //    i.Genre = Genre.SelectedValue;
                        //    i.HasTeaser = Convert.ToBoolean(HasTeaser.Text);
                        //});

                    }
                    //foreach (var x in movieDao.movieList)
                    //{
                    //    Response.Write(x.Id + " " + x.Title);
                    //}

                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //MovieDaoCollection movieDao = new MovieDaoCollection();
            MovieDaoCollection.MovieListInitialization();
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());
            //Movie obj = (from x in movieDao.movieList
            //             where x.Id == id
            //             select x).FirstOrDefault();
            Boolean active;
            Boolean hasTeaser;
            if (RadioBtnYes.Checked)
            {
                active = true;
            }
            else 
            {
                active = false;
            }

            if (HasTeaserChkBox.Checked)
            {
                hasTeaser = true;
            }
            else
            {
                hasTeaser = false;
            }
            MovieDaoCollection.movieList.Where(w => w.Id == id).ToList().ForEach(i =>
            {
                i.Title = txtTitle.Text;
                i.BoxOffice = Convert.ToInt64(txtGross.Text);
                i.Active = active;
                i.DateOfLaunch = DateUtility.ConvertToDate(txtDateOfLaunch.Text);
                i.Genre = DropDownListGenre.SelectedValue;
                i.HasTeaser = hasTeaser;
            });
            Response.Redirect("EditMovieStatus.aspx");
        }
    }
}