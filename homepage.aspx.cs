using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class homepage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyDBConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           // FillGrid();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
              if (Txtsearch.Text.Trim().Length > 0) {
                  using (SqlDataAdapter sd = new SqlDataAdapter("select * from ProductDatabase where ProductName like'%" + Txtsearch.Text.Trim() + "%'", con))
                  {
                      DataTable dt = new DataTable();
                      sd.Fill(dt);
                      if (dt.Rows.Count > 0)
                      {
                          rptrsearch.DataSource = dt;
                          rptrsearch.DataBind();
                      }
                      else
                      {
                          lblmsg.Text = "NO DATA FOUND!";
                      }

                  }
              }
              else
              {
                  lblmsg.Text = "Please Enter Value";
              }
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
           
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        rptrsearch.DataSource = null;
        rptrsearch.DataBind();
    }
}