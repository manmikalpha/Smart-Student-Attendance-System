<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>student attendance</title>
    <style type="text/css">

        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400&display=swap%27');
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap');


        body{
            min-height:100%;
        }
        header {
            background-color: #e6ecf0;
            font-family: 'Montserrat', sans-serif;
            padding-top:5rem;
            padding-bottom: 8rem;
        }
        .subhead{
            font-size:20px;
        }
        .about {
            background-color: ghostwhite;
            font-family: 'Montserrat', sans-serif;
            padding-top: 5rem;
            padding-bottom: 8rem;
        }
        .divide {
            width: 10rem;
            margin-top: -25%;
            margin-bottom: -25%;
        }
        .avatar{
            width:10rem;
        }
        footer {
            position: relative;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            color: white;
            text-align: center;
            
            padding:0.7%;
        }
        footer div{
            padding-top:0.4%;
        }
        .fa {
            font-size: 30px;
            width: 20px;
            text-align: center;
            text-decoration: none;
            margin: 5px 2px;
            border-radius: 50%;
            color: white;
            margin-left: 30px;
            margin-right:30px;
        }
    </style>
</head>
<body>
    <nav class="navbar sticky-top navbar-expand-md bg-dark navbar-dark">

        <a class="navbar-brand" href="index.html">
            <img src="https://img-premium.flaticon.com/png/512/2995/premium/2995620.png?token=exp=1632422134~hmac=706ebd014f896154c767b022a1b0a5ac" width="40" height="40" alt="">
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
                    <a class="nav-link px-3 pl-lg-5" href="Login.aspx">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-3" " href="Registeration.aspx">Registration</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-3" href="TeacherLogin.aspx">Teacher Portal</a>
                </li>
            </ul>
        </div>
    </nav>

    <header class="text-dark text-center">
        <div class="container d-flex align-items-center flex-column">
            <!--Image-->
            <br />
            <img class="avatar mb-5" src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Icon-notepad.svg/1200px-Icon-notepad.svg.png" alt="File:Icon-notepad.svg - Wikipedia" />
            <!-- Heading-->
            <h1 class="text-uppercase mb-0">Smart Attendance</h1>

            <div>
                <img class="divide" src="https://freesvg.org/img/1543717711.png" alt="https://cdn-icons-png.flaticon.com/512/860/860821.png" />
            </div>
            <!--Subheading-->
            <p class="subhead font-weight-light mb-0"> Smart, Accurate and Hassle free</p>
        </div>
    </header>


    <div class="about text-dark text-center">
        <div class="container d-flex align-items-center flex-column">
            
            <!-- Heading-->
            <h1 class="text-uppercase mb-0">ABOUT US</h1>

            <div>
                <img class="divide" src="https://svg-clipart.com/clipart/gray/GIKpNcO-dark-gray-heading-divider-clipart.png" alt="<---------------------->" />
            </div>
            <!--Subheading-->
            <p class="subhead font-weight-light mb-0"> This is a project made by TE IT B Students of Thakur College of Engineering and Technology for the subject of Professional Skills. Our team consists of 3 students, Aditya Sharma (33), Shaurya Sharma (38), Mihir Tayshete (50). We have made this with the help of .NET framework. Hope you like our project!</p>
        </div>
    </div>



    <footer class="bg-dark">


        <a href="https://www.instagram.com/shaurya_chan/?utm_medium=copy_link" class="fa fa-instagram "></a>
        <a href="https://www.youtube.com/channel/UCRClek5wGLqxN0VffI2W9Og" class="fa fa-youtube"></a>
        <a href="https://www.linkedin.com/in/mihir-tayshete-356169147/" class="fa fa-linkedin"></a>
        <div>&#169; Made by students of TE IT B</div>
        <div>Roll No: 33,38,50</div>
    </footer>


    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>