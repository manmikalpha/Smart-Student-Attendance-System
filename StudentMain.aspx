<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentMain.aspx.cs" Inherits="RegLog.StudentMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400&display=swap%27');
        .auto-style1 {
            margin-bottom: 5px;
        }

        input {
  width:100%;
  height:50px;
  padding-left: 25px;
}

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
                    <a class="nav-link active px-3 pl-lg-5" href="StudentMain.aspx">Attendance</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-3" href="StudentCheck.aspx">Subject Info</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-3"  href="/">Home</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="card mx-auto col-8 col-md-6 col-lg-4 col-xl-3"> 
        <h5 class="card-header ">Attendance <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-journal-arrow-down" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M8 5a.5.5 0 0 1 .5.5v3.793l1.146-1.147a.5.5 0 0 1 .708.708l-2 2a.5.5 0 0 1-.708 0l-2-2a.5.5 0 1 1 .708-.708L7.5 9.293V5.5A.5.5 0 0 1 8 5z"/>
  <path d="M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2z"/>
  <path d="M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z"/>
</svg>
  <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
  <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
</svg></h5>

    <form id="form1" class="form-card mx-auto" runat="server">

        <div >&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="input-group">
            
            <asp:TextBox ID="code" runat="server" ></asp:TextBox> <label>Code</label>
            </div>
        
&nbsp;&nbsp;&nbsp;&nbsp;
           <div>
          
        <asp:TextBox runat="server" ID="subject" list="test" placeholder="Select Subject"></asp:TextBox>
                <datalist id="test">
                    <option value="OS">
                    <option value="CNS">
                    <option value="WP">
                    <option value="NOSQL">
                </datalist>

            </div>
            
&nbsp;<asp:Button ID="signin" runat="server" class="btn btn-primary text-center btn-lg  btn-block" OnClick="Button1_Click" Text="Mark Attendance" />
            <br />
            <asp:Label ID="result" runat="server"  Text=""></asp:Label>
            
             <br />
            <br />
             
        </div>
    </form>
        </div>
<script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
