using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DemoDescription : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDBConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string IDs = Request.QueryString["ID"].ToString();
            //lblID.Text = IDs;
            ViewState["IDs"] = IDs;
            FillGrid(IDs);
        }
    }
    public void FillGrid(string ProductID)
    {
        try
        {
            using (SqlDataAdapter sda = new SqlDataAdapter("select * from ProductDatabase where ProductID= '" + ProductID + "'", con))
            {
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    lblProductName.Text = dt.Rows[0]["ProductName"].ToString();
                    lblPrice.Text = "₹ " + dt.Rows[0]["ProductPrice"].ToString();
                    lblDescription.Text = dt.Rows[0]["ProductDescription"].ToString();

                    string image = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dt.Rows[0]["ProductImage"]);
                      Image2.ImageUrl = image;
                }
                else
                {
                    lblID.Text = "NO DATA FOUND";
                }
            }


        }
        catch (Exception ex)
        {

            lblID.Text = ex.Message;
        }
    }
    protected void buyNow_Click(object sender, EventArgs e)
    {
        
      if (Session["RegistrationID"] != null && ViewState["IDs"] != null)
        {
            string UserID = Session["RegistrationID"].ToString();
            string ProductID = ViewState["IDs"].ToString();
                using (SqlCommand cmd = new SqlCommand("INSERT INTO OrderTable (ProductId, RegistrationID) VALUES (@productid, @userid)", con))
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@productid", ProductID);
                    cmd.Parameters.AddWithValue("@userid", UserID);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblID.Text = "Order Placed";
                }
            }
            else
            {
                Response.Redirect("LoginUser.aspx");
            }

        }
    }