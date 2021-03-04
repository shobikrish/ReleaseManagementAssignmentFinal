using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReleaseManagementAssignment
{
    public partial class AddModules : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ButtonAddModule_Click(object sender, EventArgs e)
        {
            int mid;
            while (!Int32.TryParse(TextBoxModuleID.Text, out mid))
                Message.Text = "Module ID is a number";

            DateTime expected_start_date;
            while (!(DateTime.TryParse(TextBoxExpectedStartDate.Text, out expected_start_date)))
                Message.Text = "Enter the Correct date";

            DateTime expected_end_date;
            while (!(DateTime.TryParse(TextBoxExpectedEndDate.Text, out expected_end_date)))
                Message.Text = "Enter the Correct date";

            DateTime actual_start_date;
            while (!(DateTime.TryParse(TextBoxActualStartDate.Text, out actual_start_date)))
                Message.Text = "Enter the Correct date";

            DateTime actual_end_date;
            while (!(DateTime.TryParse(TextBoxActualEndDate.Text, out actual_end_date)))
                Message.Text = "Enter the Correct date";

            int pid = Convert.ToInt32(DropDownListPid.SelectedValue);
            //LabelDeveloper.Text = "Select a developer to assign the project:";

            string SelectDeveloper = DropDownList1.SelectedValue;

            //LabelTester.Text = "Select a tester to assign the project:";

            string SelectTester= DropDownList1.SelectedValue;

            using (releasedbEntities1 db = new releasedbEntities1())
            {
                db.S_InsertIntoModule_P(mid, expected_start_date,
                    expected_end_date, actual_start_date, actual_end_date,pid);

                db.I_AssignModuleToDeveloper_P(SelectDeveloper, mid);

                db.I_AssignModuleToTester_P(SelectTester, mid);

                db.SaveChanges();
                Message.Text = "Project Added";

            }
        }

        protected void ButtonHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagerRole.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}