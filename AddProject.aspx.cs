using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReleaseManagementAssignment
{
    public partial class AddProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            

        }

        protected void ProIDBox_TextChanged(object sender, EventArgs e)
        {
        }

        protected void AddButton_Click1(object sender, EventArgs e)
        {
            int projid;
            while (!(Int32.TryParse(ProIDBox.Text, out projid)))
                MessageLabel.Text = "Enter the Project ID";

            string projname = ProjNameBox.Text;

            DateTime expected_start_date;
            while (!(DateTime.TryParse(TextBoxExpectedStartDate.Text, out expected_start_date)))
                MessageLabel.Text = "Enter the Correct date";

            DateTime expected_end_date;
            while (!(DateTime.TryParse(TextBoxExpectedEndDate.Text, out expected_end_date)))
                MessageLabel.Text = "Enter the Correct date";

            DateTime actual_start_date;
            while (!(DateTime.TryParse(TextBoxActualStartDate.Text, out actual_start_date)))
                MessageLabel.Text = "Enter the Correct date";

            DateTime actual_end_date;
            while (!(DateTime.TryParse(TextBoxActualEndDate.Text, out actual_end_date)))
                MessageLabel.Text = "Enter the Correct date";
            using (releasedbEntities1 db = new releasedbEntities1())
            {
                db.S_InsertIntoProject_p(projid, projname, expected_start_date,
                    expected_end_date, actual_start_date, actual_end_date);
                db.SaveChanges();
                ProjNameBox.Text = "";
                ProIDBox.Text = "";
                MessageLabel.Text = "Project Added";
                
            }
        }

        protected void HomeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagerRole.aspx");
        }
    }
}