<%-- 
    Document   : Courses
    Created on : 08-Aug-2021, 1:04:12 am
    Author     : shatakshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta name="theme-color" content="yellow" />
             <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
            <link href="../../CSS/styles.css" rel="stylesheet" type="text/css"/>
            <link href="../../CSS/modelclass.css" rel="stylesheet" type="text/css"/>
          <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
            integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
            crossorigin="anonymous"
          />
         
        <title>Admin Dashboard</title>
    </head>
    <body id="body">
         <%
            String uname=(String)session.getAttribute("username");
            if(uname == null){
                response.sendRedirect("../../index.jsp");
            }
            
        %>
     
     <div class="mycontainer">
         <%@include file="include/header.jsp" %>

      <main>
        <div class="main__container">
          <!-- MAIN TITLE STARTS HERE -->

          <div class="main__title">
            <img src="../../resources/icons/hello.svg" alt="" />
            <div class="main__greeting">
              <h1>Hello <%=uname%></h1>
              <p>Welcome to your admin dashboard</p>
            </div>
          </div>

          <!-- MAIN TITLE ENDS HERE -->

          <!-- MAIN CARDS STARTS HERE -->
          <div class="main__cards" style="grid-template-columns: auto">
              <div class="card" style="padding: 0px; height: auto">
                  <div class="card-header"><h3>Exam</h3></div>
                  <div class="card-body">
                      <form>
                          <div class="row">
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Exam Title:</span>
                                <input id="Subject" type="text" class="form-control" name="Exam" required="">
                            </div>
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Exam Duration:</span>
                                <input id="Course" type="text" class="form-control" name="Duration" required="">
                            </div>
                          </div>
                          <div class="row">
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Total Marks:</span>
                                <input id="Session" type="text" class="form-control" name="Marks" required="">
                            </div>
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Faculty:</span>
                                <select name="Faculty" id="Faculty" class="form-control">
                                <option value="Neeraj Saxena">Neeraj Saxena</option>
                                <option value="Mayank Rastogi">Mayank Rastogi</option>
                                <option value="Mohit Rajput">Mohit Rajpoot</option>
                                </select>
                            </div>
                          </div>
                          <div class="row">
                              <div class="form-group col-lg-6 col-sm-12">
                                  <div class="row"> 
                                      <div class="form-group col-lg-4 col-sm-12"><span class=" ">Exam State:   </span></div>
                                      <div class="form-group col-lg-4 col-sm-6"><input type="radio" name="is active" id="active" value="Active">Active</div>
                                      <div class="form-group col-lg-4 col-sm-6"><input type="radio" name="is active" id="inactive" value="Inactive">Inactive</div>
                                  </div>
                              </div>
                          </div>    
                          <div class="row">
                              <div class="form-group col-lg-6 col-sm-12">
                                  <div class="row"> 
                                      <div class="form-group col-lg-4 col-sm-12"><span class=" ">Exam Type:   </span></div>
                                      <div class="form-group col-lg-4 col-sm-6"><input type="radio" name="is main" id="Main Exam" value="Main Exam">Main Exam</div>
                                      <div class="form-group col-lg-4 col-sm-6"><input type="radio" name="is main" id="Mock Test" value="Mock Test">Mock Test</div>
                                  </div>
                              </div>
                          </div>
                          <div class="row">
                              <div class="form-group col-lg-6 col-sm-12">
                                  <div class="row"> 
                                      <div class="form-group col-lg-4 col-sm-12"><span class=" ">Result State:   </span></div>
                                      <div class="form-group col-lg-4 col-sm-6"><input type="radio" name="is result declared" id="Declared" value="Declared">Declared</div>
                                      <div class="form-group col-lg-4 col-sm-6"><input type="radio" name="is result declared" id="Not Declared" value="Not Declared">Not Declared</div>
                                  </div>
                              </div>
                          </div>
                            <div class="form-group"><center>
                                    <input class="btn btn-success col-lg-6 col-sm-12" type="submit" value="Submit"></center>
                            </div>
                        </form>
                  </div>
              </div>
          </div>
          <!-- MAIN CARDS ENDS HERE -->
        </div>
      </main>

         <%@include file="include/leftbar.jsp" %>
    </div>
     <script>
$(document).ready(function(){
  $("#myBtn").click(function(){
    $("#myModal").modal();
  });
});
</script>
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>-->
<script src="../../resources/JS/script.js" type="text/javascript"></script>
</body>
</html>