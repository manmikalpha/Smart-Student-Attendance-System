<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherHelp.aspx.cs" Inherits="RegLog.TeacherHelp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400&display=swap%27');
        .input-group {
    position: relative;
    width: 100%;
    overflow: hidden
}

.input-group input {
    position: relative;
    height: 52px;
    margin-left: 1px;
    margin-right: 1px;
    border-radius: 6px;
    padding-top: 30px;
    padding-left: 25px;
    border-width: thin;
}

.input-group label {
    position: absolute;
    height: 15px;
    background: none;
    border-radius: 6px;
    line-height: 28px;
    font-size: 15px;
    color: gray;
    width: 100%;
    font-weight: 100;
    padding-left: 25px
}
input:focus+label {
    color: #304FFE
}
.card{
    margin:0;
    margin-top:10%;
    padding:0;
     background: #C9CCD3;
         background-image: linear-gradient(-180deg, rgba(255,255,255,1) 0%, rgba(0,0,0,1) 100%);
         background-blend-mode: screen;
         opacity:0.8;
          border-radius:5%;

}

  

 html{
            font-family: 'Roboto', sans-serif;
            background-image:url("https://www.teahub.io/photos/full/95-956290_minimal-white-wallpaper-4k.jpg");
           background-repeat: no-repeat;
            background-size: cover;
            min-height:100%;
            }
 body{
           background-color:transparent;
            }



        .auto-style1 {
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
                    <a class="nav-link active px-3 pl-lg-5" href="TeacherMain.aspx">Attendance</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-3"  href="/">Home</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="card mx-auto col-8 col-md-6 col-lg-4 col-xl-3"> 
        <h5 class="card-header" id="title" runat="server">Attendance Manager</h5>
        <form id="form1" class="form-card mx-auto" runat="server">

        <br />

        <div class="input-group">
            
            <asp:TextBox ID="rollno" runat="server" CssClass="auto-style1" ></asp:TextBox> <label>Roll No.</label>
            </div>
            <div>
          </br>
        <asp:TextBox runat="server" ID="subject" list="test" placeholder="Select Subject"></asp:TextBox>
                <datalist id="test">
                    <option value="OS">
                    <option value="CNS">
                    <option value="WP">
                    <option value="NOSQL">
                </datalist>

            </div>
        <br />
            <asp:DropDownList ID="idname" runat="server"  class="form-control col-md-5" CssClass="auto-style5">
                    <asp:ListItem Value="ITA">IT A</asp:ListItem>
                    <asp:ListItem Value="ITB">IT B</asp:ListItem>
                    <asp:ListItem Value="COMPA">COMP A</asp:ListItem>
                    <asp:ListItem Value="MECHA ">MECH A </asp:ListItem>
                    <asp:ListItem Value="CivilA">Civil A</asp:ListItem>
                    <asp:ListItem Value="ExtcA">Extc A</asp:ListItem>
                </asp:DropDownList>
            <br /><br />
            <div class="input-group">
           <asp:TextBox ID="iyear" runat="server" CssClass="auto-style1" ></asp:TextBox> <label>Start Year</label>
                </div>
        <br />
        <br />
        <asp:Button ID="incrementbtn" class="btn btn-success" runat="server" OnClick="increment" Text="Increment"   />
        <asp:Button ID="decrementbtn" class="btn btn-danger" runat="server" OnClick="decrement" Text="Decrement" />
            <br />
        <br />

        <asp:Label ID="result" runat="server"></asp:Label>
        <br />

    </form>
        </div>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>