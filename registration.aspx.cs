using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDBConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            if (Firstname.Text.Trim().Length > 0 && Email.Text.Trim().Length > 0)
            {
                string First = Firstname.Text.Trim();
                string Last = Lastname.Text.Trim();
                string Mail = Email.Text.Trim();
                string Pass = Password.Text.Trim();
                string Cpass = Cpassword.Text.Trim();


                using (SqlCommand cmd = new SqlCommand("INSERT INTO Registration (FirstName,LastName,Email,Password,ConfirmPassword)VALUES(@Firstname,@Lastname, @Email , @Password, @ConfirmPassword)", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@FirstName", First);
                    cmd.Parameters.AddWithValue("@LastName", Last);
                    cmd.Parameters.AddWithValue("@Email", Mail);
                    cmd.Parameters.AddWithValue("@Password", Pass);
                    cmd.Parameters.AddWithValue("@ConfirmPassword", Cpass);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Firstname.Text = "";
                    Lastname.Text = "";
                    Email.Text = "";
                    Password.Text = "";
                    Cpassword.Text = "";
                    LabelRegistration.Text = "data added";
                    Response.Redirect("homepage.aspx");
                }
            }
            else
            {
                LabelRegistration.Text = "data not added properly";
            }

        }
        catch (Exception ex)
        {

            LabelRegistration.Text = "something went wrong";
        }
    }

}