using System;
using System.Windows;
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
        string userType;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (userType == "Admin") {
                btnAdmin.Visible = true;
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            try {
                search();
            }
            catch (ArgumentNullException) {
                txtSearch.Text = "Enter Search Term";
;            }

            catch { }
        }


        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            gridviewCourses.Visible = true;
        }


        protected void btnAdmins_Click(object sender, EventArgs e)
        {
            setUser("Admin");
        }

        private void search(){
            if (validiatyCheck())
            {
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);

                string column = drpSearchType.SelectedItem.Value;
                string searchText = txtSearch.Text;
                int columntype = searchColumnType(column);

                string SearchQuery = "select * from CoursesTable where [Course_ID] like '%" + searchText + "%' or [Course_Name] like '%" + searchText + "%' or [Professor_Name] like '%" + searchText + "%'";

                SqlCommand DQ = new SqlCommand(SearchQuery, con);
                con.Open();
                SqlDataReader drDQ = DQ.ExecuteReader();

                while (drDQ.Read())
                {
                    if (searchText == drDQ.GetValue(columntype).ToString())
                    {
                        
                        lblResults.Text = drDQ.GetValue(0).ToString();
                        for (int i = 1; i <= 6; i++)
                        {

                            lblResults.Text += (" " + drDQ.GetValue(i).ToString());
                        }
                    }
                }
            }
        }

        /// Function to turn the search type to a numero 
        /// 
        /// outputs 0 for course ID 1 for Course name and 3 for Professor name (ARGO)
        private int searchColumnType(String column) 
        {
            if (column == "Course_ID") { 
                return 0; }
            else if (column == "Course_Name") { 
                return 1; }
            else { 
                return 3; }
        }


        /// Makes sure there is text in the box and if there isnt it throws a null reference exception
        /// 
        /// output: True: Valid search false: null search
        private bool validiatyCheck()
        {
            bool valid = false;
            if (txtSearch.Text!="")
            {
                valid = true;
            }
            else
            {
                throw new ArgumentNullException();
                valid = false;
            }
            return valid;
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="usertype"></param>
        public void setUser(string usertype) {
            userType = usertype;
            if (userType == "Admin")
            {
                btnAdmin.Visible = true;
            }
            
        }

        protected void gridviewCourses_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}