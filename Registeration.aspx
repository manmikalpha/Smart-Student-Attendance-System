<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registeration.aspx.cs" Inherits="RegLog.Registeration" %>

<!DOCTYPE html>
<link href="Content/bootstrap.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <style type="text/css">
       @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400&display=swap%27');
        *{
            padding:0%;
            margin:0%;
        }
        .auto-style1 {
            width: 40%;
        }
        .auto-style2 {
            width: 80%;
        }
        .auto-style3 {
            width: 70%;
        }
        .auto-style4 {
            width: 50%;
        }
        td{
            padding:2%;
            font-size:1.2em;
        }
        
        
        
        .card{
         background: #C9CCD3;
         background-image: linear-gradient(-180deg, rgba(255,255,255,1) 0%, rgba(0,0,0,1) 100%);
         background-blend-mode: screen;
         opacity:0.8;
          padding:0;
          margin:0;
          border-radius:5%;
        }
        .smaller{
           font-size:0.8em;
           color:red;
        }
        
        body{
            font-family: 'Roboto', sans-serif;
            background-image:url("https://www.teahub.io/photos/full/95-956290_minimal-white-wallpaper-4k.jpg");
           background-repeat: no-repeat;
            background-size: cover;
            background-color:transparent;
            }
 
 html{
            font-family: 'Roboto', sans-serif;
            background-image:url("https://www.teahub.io/photos/full/95-956290_minimal-white-wallpaper-4k.jpg");
           background-repeat: no-repeat;
            background-size: cover;
            min-height:100%;
            }

        
        .auto-style5 {
            left: 0px;
            top: 0px;
        }

        
    </style>
</head>
<body>
    <nav class="navbar sticky-top navbar-expand-md bg-dark navbar-dark">

        <a class="navbar-brand" href="index.html">
            <img src="https://image.flaticon.com/icons/png/512/3073/3073626.png" width="40" height="40" alt="">
            Smart Attendance
        </a>

        <!-- Toggler/collapsibe Button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar links -->
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link px-3 pl-lg-5 active" href="Registeration.aspx">Registration</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-3" href="Login.aspx">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-3"  href="/">Home</a>
                </li>
              
              
            </ul>
        </div>
    </nav>
    <form id="form1" runat="server">
        <br />
        <div class="card  mx-auto col-xl-4 ">
            <h3 class="card-header text-center">Student Sign Up</h3>
            <div>


                <br />
                <table class="auto-style2 mx-auto  col-12" >
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="fname" runat="server" Text="First Name:"></asp:Label>
                        </td>
                        <td class="auto-style3">
            <asp:TextBox ID="ifname"  runat="server"  class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator class="smaller" ID="RequiredFieldValidator4" runat="server"   ControlToValidate="ifname" Display="Dynamic" ErrorMessage="Enter your First Name"> </asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ifname" Display="Dynamic" ErrorMessage="Enter only letters" class="smaller" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="lname" runat="server" Text="Last Name:" ></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:TextBox ID="ilname"  runat="server" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator class="smaller" ID="RequiredFieldValidator5" runat="server" ControlToValidate="ilname" Display="Dynamic" ErrorMessage="Enter your Last Name"> </asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ilname" Display="Dynamic" ErrorMessage="Enter only letters" class="smaller" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="enum" runat="server" Text="ERP No:"></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:TextBox ID="ienum"  runat="server"  class="form-control col-md-10" TextMode="Number"></asp:TextBox>
                            <asp:RequiredFieldValidator class="smaller" ID="RequiredFieldValidator3" runat="server" ControlToValidate="ienum" Display="Dynamic"   ErrorMessage="Enter your ERP No"> </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                <asp:Label ID="rnum" runat="server" Text="Roll No:" ></asp:Label>
                <asp:TextBox ID="irnum"  runat="server"  class="form-control col-md-6" TextMode="Number" ></asp:TextBox>
                            <asp:RequiredFieldValidator class="smaller" ID="RequiredFieldValidator7" runat="server" ControlToValidate="irnum" Display="Dynamic" ErrorMessage="Enter your Roll No"> </asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style4">
                <asp:Label ID="year" runat="server" Text="Joining Year:" ></asp:Label>
                <asp:TextBox ID="iyear"  runat="server"  class="form-control col-md-8" TextMode="Number" ></asp:TextBox>
                            <asp:RequiredFieldValidator class="smaller" ID="RequiredFieldValidator8" runat="server" ControlToValidate="iuname" Display="Dynamic" ErrorMessage="Enter your Joining Year"> </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="dname" runat="server" Text="Department:" ></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:DropDownList ID="idname" runat="server"  class="form-control col-md-5" CssClass="auto-style5">
                    <asp:ListItem Value="ITA">IT A</asp:ListItem>
                    <asp:ListItem Value="ITB">IT B</asp:ListItem>
                    <asp:ListItem Value="COMPA">COMP A</asp:ListItem>
                    <asp:ListItem Value="MECHA ">MECH A </asp:ListItem>
                    <asp:ListItem Value="CivilA">Civil A</asp:ListItem>
                    <asp:ListItem Value="ExtcA">Extc A</asp:ListItem>
                </asp:DropDownList>
                            <asp:RequiredFieldValidator class="smaller" ID="RequiredFieldValidator2" runat="server" ControlToValidate="idname" Display="Dynamic" ErrorMessage="Enter your Department Name"> </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="uname" runat="server" Text="Username:" ></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:TextBox ID="iuname"  runat="server"  class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator class="smaller" ID="RequiredFieldValidator9" runat="server" ControlToValidate="iuname" Display="Dynamic" ErrorMessage="Enter your Username"> </asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="password" runat="server" Text=" Set Password:"></asp:Label>
                        </td>
                        <td class="auto-style3">
                <asp:TextBox ID="ipassword"  TextMode="Password" runat="server"  class="form-control col-md-10"></asp:TextBox>
                            <asp:RequiredFieldValidator class="smaller" ID="RequiredFieldValidator6" runat="server" ControlToValidate="ipassword" Display="Dynamic" ErrorMessage="Enter your Password"> </asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="ipassword" Display="Dynamic" class="smaller" ErrorMessage="8+ Characters Required" ValidationExpression="[^ ]{8,}"></asp:RegularExpressionValidator>
                            
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                <asp:Label ID="cpassword" runat="server" Text="Confirm Password:"></asp:Label>
                        </td>
                        <td class="auto-style3">
            <asp:TextBox ID="icpassword" TextMode="Password" runat="server"  class="form-control col-md-10"></asp:TextBox>
                            <asp:RequiredFieldValidator class="smaller" ID="RequiredFieldValidator1" runat="server" ControlToValidate="icpassword" Display="Dynamic" ErrorMessage="Re-enter your password"> </asp:RequiredFieldValidator>
                       <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="ipassword" ControlToValidate="icpassword" Display="Dynamic" class="smaller" ErrorMessage="Password does not match"></asp:CompareValidator>
                           
                        </td>
                    </tr>
                    <tr >
                        <td class="auto-style1 " colspan="2">
                <asp:Button ID="signup" class="btn btn-primary text-center btn-lg  btn-block" runat="server" OnClick="signup_Click" Text="Sign Up"  />
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="result" runat="server" Text=""></asp:Label>
                        </td>
                        
                    </tr>
                    
                </table>
                <br />
                
                
                </div>

        </div>
        <p>
            &nbsp;</p>
    </form>
<script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>