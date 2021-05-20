using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (validiatyCheck())
            {
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);

                string column = drpSearchType.SelectedItem.Value;
                string searchText = txtSearch.Text;
                string SearchQuery = "select * from CoursesTable where [" + column + "] =" + searchText;

                SqlCommand DQ = new SqlCommand(SearchQuery, con);
                con.Open();
                SqlDataReader drDQ = DQ.ExecuteReader();
                switch (column)
                {
                    case "Course_ID":
                        while (drDQ.Read())
                        {
                            if (searchText == drDQ.GetValue(0).ToString())
                            {
                                lblResults.Text = drDQ.GetValue(0).ToString();
                                for (int i = 1; i <= 6; i++)
                                {
                                    lblResults.Text += (" " + drDQ.GetValue(i).ToString());
                                }
                            }
                        }
                        con.Close();
                        break;
                    case "Course_Name":
                        while (drDQ.Read())
                        {
                            if (searchText == drDQ.GetValue(1).ToString())
                            {
                                lblResults.Text = drDQ.GetValue(0).ToString();
                                for (int i = 1; i <= 6; i++)
                                {
                                    lblResults.Text += (" " + drDQ.GetValue(i).ToString());
                                }
                            }
                        }
                        con.Close();
                        break;
                    case "Professor_Name":
                        while (drDQ.Read())
                        {
                            if (searchText == drDQ.GetValue(3).ToString())
                            {
                                lblResults.Text = drDQ.GetValue(0).ToString();
                                for (int i = 1; i <= 6; i++)
                                {
                                    lblResults.Text += (" " + drDQ.GetValue(i).ToString());
                                }
                            }
                        }
                        con.Close();
                        break;
                }
            }
        }
        private bool validiatyCheck()
        {
            bool valid = false;
            if (drpSearchType.SelectedItem.Text != "--Select--")
            {
                valid = true;
            }
            return valid;
        }
    }
}