using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ReleaseManagementAssignment
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [Obsolete]
        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            List<proc_CheckLogin_Result> user = null;
            releasedbEntities1 releasedbEntities = new releasedbEntities1();
            int Empid = int.Parse(UsrTxtbox.Text);
            string password = Usrpwd.Text;
            user = releasedbEntities.proc_CheckLogin(Empid, password).ToList();
            string EmpRole = user[0].EmployeeRole;
            if (EmpRole=="Manager")
            {
                FormsAuthentication.RedirectFromLoginPage(UsrTxtbox.Text, true);
                Session.Add("Empid", UsrTxtbox.Text);
                Response.Redirect("ManagerRole.aspx");
            }

            if (EmpRole == "Developer")
            {
                Session.Add("Empid", UsrTxtbox.Text);
                Response.Redirect("DeveloperRole.aspx");
            }

            if (EmpRole == "Tester")
            {
                Session.Add("Empid", UsrTxtbox.Text);
                Response.Redirect("TesterRole.aspx");
            }
        }
    }
}