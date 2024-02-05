using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DropDownList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0 || DropDownList2.SelectedIndex == 0 || DropDownList3.SelectedIndex == 0)  
         {
             Label1.Text = "Please Check either of the fields";
         }
         
         else {
             System.Console.WriteLine("COURSE DETAILS");
             System.Console.WriteLine();
             Label1.Text = "Course Name : "+ DropDownList1.SelectedItem.Text;
             Label2.Text = "Branch Name  : " + DropDownList2.SelectedItem.Text;
             Label3.Text = "FEE/DURATION :  " + DropDownList3.SelectedItem.Text;
             DropDownList1.SelectedItem.Text = " ";
             DropDownList2.SelectedItem.Text = " ";
             DropDownList3.SelectedItem.Text = " ";
         }            
        }  
    }
