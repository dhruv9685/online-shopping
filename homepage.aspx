<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <style>
        
        .deal {
            color: black;
            text-align: center;
            margin-top: 30px;
            font-family: Calibri;
        }

        .jumbotron {
            padding-top: 10px;
            padding-bottom: 10px;
            margin-bottom: 0px;
            color: inherit;
            background-color: white;
            font-size: 15px;
            font-weight: bold;

        }



        .btn btn-danger my-cart-btn:hover {
            background-color: black;
        }

        .category1 {
            color: black;
            font-weight: bold;
            text-align: center;
            margin-top: 30px;
            font-family: Calibri;
        }
    </style>
<div style="">
        <!-- Carousel -->
        <div id="demo" class="carousel slide" data-bs-ride="carousel">

            <!-- Indicators/dots -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="3"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="4"></button>
            </div>

            <!-- The slideshow/carousel -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Content/Banner/Banner1.jpg" alt="" class="d-block w-100 h-50">
                </div>
                <div class="carousel-item">
                    <img src="Content/Banner/Banner2.jpg" alt="" class="d-block w-100 h-50">
                </div>
                <div class="carousel-item">
                    <img src="Content/Banner/Banner3.jpg" alt="" class="d-block w-100 h-50">
                </div>
                <div class="carousel-item">
                    <img src="Content/Banner/Banner4.jpg" alt="" class="d-block w-100 h-50">
                </div>
                <div class="carousel-item">
                    <img src="Content/Banner/Banner5.jpg" alt="" class="d-block w-100 h-50">
                </div>
            </div>
            <!-- Left and right controls/icons -->
            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>
    </div>
 <div class ="container" style="text-align:center;margin:auto">
     <ul style="list-style:none;margin:auto">
     <li>  <asp:TextBox ID="Txtsearch" runat="server" placeholder="Search Anything!"></asp:TextBox> 
             <asp:Button ID="Button1" runat="server" Text="SEARCH"  OnClick="Button1_Click" CssClass="btn btn-success"/>
             <asp:Button ID="Button2" runat="server" Text="CLEAR"  OnClick="Button2_Click" CssClass="btn btn-danger"/>
             <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label> <li />
         </ul>
         </div>         
            <div class="container">
                <div class="row">

                    <asp:Repeater ID="rptrsearch" runat="server"> 
                        <ItemTemplate>
                            <div class="col-md-3 " style="padding:10px;">
                                <asp:Image alt="" runat="server" ID="Image2" Visible='<%# Eval("ProductImage").ToString() != "" ? true:false %>' ImageUrl='<%# Eval("ProductImage").ToString() == "" ? "img/favicon.ico": "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("ProductImage")) %>' Style="width: 250px; height: 250px" />
                               <hr />
                                <%# Eval("ProductName") %>
                                 <%# Eval("ProductPrice") %>
                                <br />
                                <br />
                               <a href="DemoDescription.aspx?ID=<%# Eval("ProductID") %>" class="btn btn-danger"> Buy Now  </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
    <div class="circle">
        <div class="deal" >
            <h1 style="font-family: 'Edu QLD Beginner', cursive; color:red; font-weight:500">TODAY'S DEAL</h1>
        </div>

        <div class="jumbotron">
            <div class="container">
                <div class="row">

                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1"> 
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyDBConnection %>" SelectCommand="SELECT TOP 3[ProductID], [ProductName], [ProductPrice], [ProductImage] FROM [ProductDatabase] ORDER BY ProductID desc"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>



    <div class="category1">
        <h1 style = "font-family: 'Edu QLD Beginner', cursive;font-family: 'Pacifico', cursive;">Electronics</h1>

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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyDBConnection %>" SelectCommand="SELECT TOP 3[ProductID], [ProductName], [ProductPrice], [ProductImage] FROM [ProductDatabase] where CategoryID='1'"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>


    <div class="category1">
        <h1 style = "font-family: 'Edu QLD Beginner', cursive;font-family: 'Pacifico', cursive;">Clothing</h1>
<div class="jumbotron">
            <div class="container">
                <div class="row">

                    <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3"> 
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
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MyDBConnection %>" SelectCommand="SELECT TOP 3 [ProductID], [ProductName], [ProductPrice], [ProductImage] FROM [ProductDatabase] where CategoryID='2'"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
    <div class="category1">
        <h1 style = "font-family: 'Edu QLD Beginner', cursive;font-family: 'Pacifico', cursive;">Books</h1>
        <div class="jumbotron">
            <div class="container">
                <div class="row">

                    <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource4"> 
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
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MyDBConnection %>" SelectCommand="SELECT TOP 3 [ProductID], [ProductName], [ProductPrice], [ProductImage] FROM [ProductDatabase] where CategoryID='5'"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
       
        
</asp:Content>

