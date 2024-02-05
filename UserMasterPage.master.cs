using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["FirstName"] != null && Session["Email"] != null)
            {
                loginBtn.Visible = false;
                logoutBTN.Visible = true;
                RegisterBtn.Visible = false;
                Dashboard.Visible = true;
            }
            else
            {
                loginBtn.Visible = true;
                logoutBTN.Visible = false;
                Dashboard.Visible = false;
            }
        }
    }
    protected void loginBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginUser.aspx");

    }
    protected void logoutBTN_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("homepage.aspx");
    }

    protected void adminBtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("/Admin/Login.aspx");
    }
    protected void RegisterButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("registration.aspx");
    }
    protected void Dashboard_Click(object sender, EventArgs e)
    {
        Response.Redirect("/User/Index.aspx");
    }
}