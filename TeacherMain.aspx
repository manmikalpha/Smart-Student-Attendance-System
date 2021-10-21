<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherMain.aspx.cs" Inherits="RegLog.TeacherMain" %>

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
    height: 60px;
    margin-left: 1px;
    margin-right: 1px;
    border-radius: 6px;
    padding-top: 30px;
    padding-left: 25px;
    border-width: thin;
}

.input-group label {
    position: absolute;
    height: 24px;
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
                <li class="nav-item">
                    <a class="nav-link px-3"  href="TeacherHelp.aspx">Manager</a>
                </li>
            </ul>
        </div>
    </nav>
    <div class="card mx-auto col-8 col-md-6 col-lg-4 col-xl-3"> 
        <h5 class="card-header" id="title" runat="server">Attendance Info </h5>
        <form id="form1" class="form-card mx-auto" runat="server">

        <br />

        <asp:Label ID="codetext" runat="server"></asp:Label>

        <br />
        <asp:Label ID="subjectname" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="attendance" class="btn btn-secondary" runat="server" OnClick="ExportToExcel" Text="Save"   />
        <asp:Button ID="clear" class="btn btn-warning" runat="server" OnClick="clear_Click" Text="Clear" />
        <br />
        <br />

    </form>
        </div>
<script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>