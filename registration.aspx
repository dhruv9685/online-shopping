<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Variables */
        :root {
            --primary-font-family: 'Poppins', sans-serif;
            --light-white:#f5f8fa;
            --gray:#5e6278;
            --gray-1:#e3e3e3;
        }

        body {
            font-family: var(--primary-font-family);
            font-size: 14px;
            background-image: url("Content/bg.jpg");
        }

        /* Main CSS */
        .wrapper {
            padding: 0 0 100px;
            background-image: url("images/bg.png");
            background-position: bottom center;
            background-repeat: no-repeat;
            background-size: contain;
            background-attachment: fixed;
            min-height: 100%;
        }

            .wrapper .logo img {
                max-width: 40%;
            }

            .wrapper input {
                /*/*background-color: var(--light-white);*/ */ border-color: var(--light-white);
                color: var(--gray);
            }

                .wrapper input:focus {
                    box-shadow: none;
                }

            .wrapper .password-info {
                font-size: 10px;
            }

            .wrapper .submit_btn {
                padding: 10px 15px;
                font-weight: 500;
            }

            .wrapper .login_with {
                padding: 8px 15px;
                font-size: 13px;
                font-weight: 500;
                transition: 0.3s ease-in-out;
            }

                .wrapper .submit_btn:focus,
                .wrapper .login_with:focus {
                    box-shadow: none;
                }

                .wrapper .login_with:hover {
                    background-color: var(--gray-1);
                    border-color: var(--gray-1);
                }

                .wrapper .login_with img {
                    max-width: 7%;
                }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <section class="wrapper">
        <div class="container" style="text-align: center">
            <div class="row">
                <%--    <div class="col-xl-7">
                </div>--%>
                <div class="col-xl-5 offset-7" style="margin-top: 58px; padding-right: 5px; padding-left: 90px">
                    <div class="logo">
                        <img width="80" height="40" src="https://tranzgo.com/wp-content/uploads/2022/01/logo-removebg-preview.png" class="attachment-full size-full" alt="logo" loading="lazy" />
                    </div>

                    <h3>Create an Account</h3>

                    <div>
                        Already have an account? <a href="#" style="color: #0e21e7">Sign in here</a>
                    </div>

                    <div>or</div>

                    <a href="#" class="btn btn-light login_with w-100 mb-4">
                        <img src="Content/g.png" style="height: 25px; width: 30px" />Sign in with Google</a>

                    <div class="form-group">
                        <asp:TextBox ID="Firstname" runat="server" placeholder="Enter your First Name" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter your First Name" ValidationGroup="save" SetFocusOnError="true" ForeColor="Red" ControlToValidate="FirstName"></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <asp:TextBox ID="Lastname" runat="server" placeholder="Enter your Last Name" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter your Last Name" ValidationGroup="save" SetFocusOnError="true" ForeColor="Red" ControlToValidate="LastName"></asp:RequiredFieldValidator>
                    </div>
                    <br />
                    <div>
                        <asp:TextBox ID="Email" runat="server" placeholder="Enter your Email" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter your Email" SetFocusOnError="true"  ForeColor="Red" ControlToValidate="Email"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Write  Correct Email" ControlToValidate="Email" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> </div>
                    <br />
                    <div>
                        <asp:TextBox ID="Password" runat="server" placeholder="Enter your Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter your  Password" ValidationGroup="save" SetFocusOnError="true" ForeColor="Red"  ControlToValidate="Password" ControlToCompare="Cpassword" ></asp:RequiredFieldValidator>
                        <br />
                        <span>*Use 8 or more characters with a mix of letters, numbers & symbols.*</span>
                    </div>
                    <br />
                    <div>
                        <asp:TextBox ID="Cpassword" runat="server" placeholder="Confirm password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Enter your  Correct Password" ValidationGroup="save" SetFocusOnError="true" ForeColor="Red"  ControlToValidate="Cpassword"  ></asp:RequiredFieldValidator>
                        
                        </div>
                    <br />
        
                    <asp:Button ID="Button1" class="btn btn-primary submit_btn w-100 my-4" runat="server" Text="Continue" OnClick="Button1_Click"/>
                </div>

            </div>
        </div>
         <asp:Label ID="LabelRegistration" runat="server" Text="label"></asp:Label>

    </section>
    </div>
    </form>
</body>
</html>
