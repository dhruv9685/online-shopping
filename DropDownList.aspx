<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropDownList.aspx.cs" Inherits="DropDownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<link href="Content/bootstrap.css" rel="stylesheet" />
<link href="Content/bootstrap.min.css" rel="stylesheet" />
<script src="Scripts/bootstrap.min.js"></script>
<script src="Scripts/bootstrap.js"></script>
<body>
    <form id="form1" runat="server">
    <div class="jumbotron">
         <p>Please Select Course</p>  
        <div>  
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
            <asp:ListItem Value="0">Please Select</asp:ListItem> 
            <asp:ListItem  Value="1">BCA</asp:ListItem>   
            <asp:ListItem  Value="2">BTECH </asp:ListItem>  
            <asp:ListItem  Value="3">BBA</asp:ListItem> 
            <asp:ListItem  Value="4">MBA</asp:ListItem>    
            <asp:ListItem  Value="5">MCA</asp:ListItem> 
            </asp:DropDownList> 
           
        </div>  
        <p>Please Select Branch</p>  
        <div>  
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
            <asp:ListItem Value="0">Please Select</asp:ListItem> 
            <asp:ListItem  Value="1">CS</asp:ListItem>   
            <asp:ListItem  Value="2">IT </asp:ListItem>  
            <asp:ListItem  Value="3">ME</asp:ListItem> 
            <asp:ListItem  Value="4">EE</asp:ListItem>    
            </asp:DropDownList>  
        </div>  
        <p>Please Select Fee , Duration</p>  
        <div>  
            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
            <asp:ListItem Value="0">Please Select</asp:ListItem> 
            <asp:ListItem  Value="1">40k - 4 year</asp:ListItem>   
            <asp:ListItem  Value="2">50k - 4 year </asp:ListItem>  
            <asp:ListItem  Value="3">60k - 4 year</asp:ListItem> 
            </asp:DropDownList>
         
         
        </div>  
        <br />  
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="btn btn-primary submit_btn w-100 my-4"/>  <br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label><br />
 

    </div>
    </form>
</body>
</html>
