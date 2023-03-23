<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>
new line was added

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TSI - SYSTEMS | Registraion</title>
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style type="text/css">
        body, html {
            background-color: #006c99;
            font-family: 'Oswald', sans-serif;
            font-size: 18px;           
        }

        .register-form {
            font-size: 16px;                        
        }
        .container-fluid{width:49%;padding-left:0px !important;padding-right:0px !important;}

        .regbutton {
            height: 50px;            
            background-color: #ca8b19;
            border-radius: 2px;
            font-size: 18px;
            color: white;
            border: none !important;
            margin-bottom: 5px;
        }

            .regbutton:hover {
                color: white;
                background-color: #f09102;
            }

            .regbutton:active {
                color: white;
                background-color: #ca8b19;
            }            

        .register-form label {
            color: aliceblue;
        }

        .register-form input {
            margin-bottom: 5px;
            width: 667px !important;
                   
        }

        hr {
            background-color: #3da02b;
        }

        
    
  
  @media screen and (max-width: 480px) {
      .register-form input {            
            width: 221px !important;
            min-width:228px !important;
        }
      .container-fluid{margin-left:70px !important;}
       hr {
            width:228px !important;
        }
    
  }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="register-form">
        <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet" />
        <div class="container-fluid">
            
            <h2 style="text-align: center;color:white;">Workshop/Course Registration</h2>
              
            <div class="input-group mb-3">
               <!-- <div class="input-group-prepend">
                    <span class="input-group-text">NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </div>-->
                <asp:TextBox runat="server" ID="txtFullname" CssClass="form-control" Placeholder="Full Name" MaxLength="50"></asp:TextBox>
            </div>
            <div class="input-group mb-3">
              <!--  <div class="input-group-prepend">
                    <span class="input-group-text">EMAIL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </div>-->

                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" Placeholder="Email Address" MaxLength="50"></asp:TextBox>
            </div>
            <div class="input-group mb-3">
                <!--<div class="input-group-prepend">
                    <span class="input-group-text">MOBILE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </div>-->

                <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control" Placeholder="Phone Number" MaxLength="50"></asp:TextBox>
            </div>

            <div class="input-group mb-3">
                <!--<div class="input-group-prepend">
                    <span class="input-group-text">QUALIFICATION</span>
                </div>-->
                <asp:TextBox runat="server" ID="txtEduQuali" CssClass="form-control" Placeholder="Educational Qualification" MaxLength="50"></asp:TextBox>

            </div>
            <div class="input-group mb-3">
               <!-- <div class="input-group-prepend">
                    <span class="input-group-text">MEDIUM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                </div>-->

                <asp:TextBox runat="server" ID="txtMedicumKnew" CssClass="form-control" Placeholder="How do you know this course?" MaxLength="50"></asp:TextBox>
                
            </div>
            <hr />
           
                <div class="input-group mb-3">
                    <asp:Button runat="server" ID="btnRegister" CssClass="btn btn-default regbutton" Text="Register"  ValidationGroup="register" OnClick="btnRegister_Click" />
                     <asp:RequiredFieldValidator Display="None" runat="server" ControlToValidate="txtFullname" ValidationGroup="register" ErrorMessage="Enter Full Name"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator Display="None" runat="server" ControlToValidate="txtPhone" ValidationGroup="register" ErrorMessage="Enter Your Mobile Number"></asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="revEmailAddress" runat="server" SetFocusOnError="true"
                        Display="None" ControlToValidate="txtEmail" resourceKey="revEmailAddress"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="register" ErrorMessage="Enter Valid Email Address"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator Display="None" runat="server" ControlToValidate="txtEduQuali" ValidationGroup="register" ErrorMessage="Enter Qualification"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator Display="None" runat="server" ControlToValidate="txtMedicumKnew" ValidationGroup="register" ErrorMessage="Enter How do you know this course?"></asp:RequiredFieldValidator>
        <asp:ValidationSummary ID="valsumRegister" resourceKey="valsumRegister" runat="server"
                    ShowSummary="false" ShowMessageBox="true" ValidationGroup="register" HeaderText="Please Provide...." />
                </div>
              
           
            
            <div class="row">
              <asp:Label runat="server" ID="lblMessage" Text=""></asp:Label>
                </div>

        </div>
    </form>
</body>
</html>
