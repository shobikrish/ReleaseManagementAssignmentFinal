﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReleaseManagementAssignment
{
    public partial class ViewTeamLeads : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagerRole.aspx");
        }
    }
}