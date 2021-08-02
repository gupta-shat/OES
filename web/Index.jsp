<%-- 
    Document   : index
    Created on : 22-Jul-2021, 7:41:43 pm
    Author     : shatakshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        <link href="CSS/style.css" rel="stylesheet" type="text/css"/>
        <title>Login/Signup</title>
    </head>
    <body style="background-image: url('https://image.shutterstock.com/shutterstock/photos/1719605170/display_1500/stock-vector-online-learning-vector-stock-illustration-the-girl-chooses-the-correct-answer-in-test-smile-the-1719605170.jpg');
                 background-repeat: no-repeat;">
        <div class="container">
            <div >
            
            <form action="Login" id='login' method="POST" style="display: none">
                <div class="card" >
                 <div class="card-header bg-warning text-center">Login</div>
             <div class="card-body">
                 <div class="card-text">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12">UserName :</div>
                <div class="col-lg-8 col-md-8 col-sm-12"> <input type="email" name='username' id='username' autofocus required /></div>
               
            </div>
            <div class="row mt-1">
                <div class="col-lg-4 col-md-4 col-sm-12 ">Password :</div>
                <div class="col-lg-8 col-md-8 col-sm-12"> <input type="password" name='password' id='password'  required>
                    <img src="Resources/icons/closed-eye.png" alt="" id="eyeclose" class="eyeIcon"/>
                    </div>
                              
            </div>
                     <div class="d-grid mt-2 col-6 mx-auto">
                <input class="btn btn-success" type="submit" value="Login">
            </div>
            <div><label style="color: darkgray;" onclick="document.getElementById('signup').style.display='block';document.getElementById('login').style.display='none';">I Have not an Account?</label></div>
                 </div>
            </div>
            </div>
        </form>
            <form id='signup' action="Register" method="POST">
                <div class="card" >
                 <div class="card-header bg-warning text-center">Signup</div>
             <div class="card-body">
                 <div class="card-text">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12">Name :</div>
                <div class="col-lg-8 col-md-8 col-sm-12"> <input type="text" name='name' id='name' required autofocus/></div>
               
            </div>
             <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12">Email :</div>
                <div class="col-lg-8 col-md-8 col-sm-12"> <input type="email" name='email' id='email' required /></div>
               
            </div>
            <div class="row mt-1">
                <div class="col-lg-4 col-md-4 col-sm-12 ">Password :</div>
                <div class="col-lg-8 col-md-8 col-sm-12"> <input type="password" name='password1' id='password1' required />
                <img src="Resources/icons/closed-eye.png" alt="" id="eyeclose1" class="eyeIcon"/>
                 </div>
                              
            </div>
                     <div class="d-grid mt-2 col-6 mx-auto">
                <input class="btn btn-success" type="submit" value="Signup">
            </div>
                     <div><label style="color: darkgray;" onclick="document.getElementById('login').style.display='block';document.getElementById('signup').style.display='none';">Already Have Account?</label></div>
                 </div>
            </div>
            </div>
        </form>
        </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="Resources/JS/myscript.js" type="text/javascript"></script>
    </body>
</html>