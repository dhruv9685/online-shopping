using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginUser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDBConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Uname.Text.Trim().Length > 0 && Pwd.Text.Trim().Length > 0)
        {
            using (SqlDataAdapter sda = new SqlDataAdapter("SELECT FirstName,Email, RegistrationID FROM Registration where Email='" + Uname.Text.Trim() + "' and Password = '" + Pwd.Text.Trim() +"'",con))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["FirstName"] = dt.Rows[0]["FirstName"].ToString();
                    Session["Email"] = dt.Rows[0]["Email"].ToString();
                    Session["RegistrationID"] = dt.Rows[0]["RegistrationID"].ToString();
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Label1.Text = "Invalid User";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
        else
        {
            Label1.Text = "Invalid User";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
}