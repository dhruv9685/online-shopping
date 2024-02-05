<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="category1">
        <h1 style = "font-family: 'Edu QLD Beginner', cursive;font-family: 'Pacifico', cursive; text-align:center">Books</h1>

          <div class="jumbotron">
            <div class="container">
                <div class="row">

                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2"> 
                        <ItemTemplate>
                       
                            <div class="col-md-4 ">
                                <asp:Image alt="" runat="server" ID="Image2" Visible='<%# Eval("ProductImage").ToString() != "" ? true:false %>' ImageUrl='<%# Eval("ProductImage").ToString() == "" ? "img/favicon.ico": "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("ProductImage")) %>' Style="width: 250px; height: 250px" />
                               <br />
                                <%# Eval("ProductName") %>
                                <br />
                                <br />
                               <a href="DemoDescription.aspx?ID=<%# Eval("ProductID") %>" class="btn btn-danger"> Buy Now  </a>
                                <asp:Label ID="Label1" runat="server" ></asp:Label>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyDBConnection %>" SelectCommand="SELECT [ProductID], [ProductName], [ProductPrice], [ProductImage] FROM [ProductDatabase] where CategoryID='5'"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

