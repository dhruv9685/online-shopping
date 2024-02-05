<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="DemoDescription.aspx.cs" Inherits="DemoDescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
 <asp:Label ID="lblID" runat="server" ></asp:Label>
  <div class="container">
      <div class ="row">
          <div class="col-md-6">
               <asp:Image ID="Image2" Class="active"  runat="server" Style="padding-right:20px; Height:85%; width:75% ; margin-top:39px"></asp:Image>
  </div>
          <div class="col-md-6">
              <br />
              <br />
                <asp:Label ID="lblProductName" runat="server" style="font-weight: 200; font-size: 52px; color: #43484D; letter-spacing: -2px; margin-top:15px"></asp:Label>
                  <br />
              <br />
           <asp:Label ID="lblPrice" runat="server" style="font-weight:500; font-size:55px;"></asp:Label> <br /> <br />
              <asp:LinkButton ID="buyNow" runat="server" class="btn btn-success" OnClick="buyNow_Click">BUY NOW</asp:LinkButton>
              <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-danger">ADD TO CART</asp:LinkButton>

          </div>
          </div>
      </div>
    <!-- Product Pricing -->
    <div class="container">
             <p> <asp:Label ID="lblDescription" runat="server" Style=" font-size: 20px; font-weight: 400; color:black; line-height: 24px;"></asp:Label></p>
    </div>
</asp:Content>
