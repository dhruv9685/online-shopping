<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="LoginUser.aspx.cs" Inherits="LoginUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        body{
            background-color: black;
        }
    </style>
<div class="container" style="margin-top:6%; margin-bottom:6%; border:5px solid black">
        <div class="row">
            <div class="col-md-12 text-center">
                <h1 style="font-family: fantasy; padding-top: 50px; color:skyblue;">TRANZ<small style="color:skyblue">go</small></h1>
            </div>
           
        </div>
        <div class="row" style="padding-top: 30px;">
            <div class="col-md-3">&nbsp;</div>
            <div class="col-md-6">
                <asp:TextBox ID="Uname" runat="server" Class="form-control" placeholder="Username or email" ErrorMessage="Please Enter Your Username"></asp:TextBox>
            </div>
            <div class="col-md-3">&nbsp;</div>
        </div>
        <div class="row" style="padding-top: 5px;">
            <div class="col-md-3">&nbsp;</div>
            <div class="col-md-6">
                <asp:TextBox ID="Pwd" runat="server" Class="form-control" placeholder="Password" Type="password" ErrorMessage="Please Enter Your Password"></asp:TextBox>
            </div>
            <div class="col-md-3">&nbsp;</div>
        </div>
        <div class="row" style="padding-top: 20px; padding-bottom: 70px;">
            <div class="col-md-3">&nbsp;</div>
            <div class="col-md-6">
                <asp:Button ID="Button1" runat="server" Class="form-control" Text="Log In" Style="background-color:skyblue;" OnClick="Button1_Click" />
            </div>
            <div class="col-md-3">&nbsp;</div>
        </div>
        <div class="row">
            <div class="col-md-3">&nbsp;</div>
            <div class="col-md-6">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
            <div class="col-md-3">&nbsp;</div>
        </div>
    </div>
</asp:Content>

