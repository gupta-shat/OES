<%-- 
    Document   : Student
    Created on : 08-Aug-2021, 8:02:37 pm
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

          <!-- MAIN CARDS STARTS HERE
                Result(Student_id, Exam_id, obtainedMarks, date/time)
          -->
          <div class="main__cards" style="grid-template-columns: auto">
              <div class="card" style="padding: 0px; height: auto">
                  <div class="card-header"><h3>Result</h3></div>
                  <div class="card-body">
                      <form>
                          <div class="row">
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Student:</span>
                                <input id="Student" type="text" class="form-control" name="Student" required="">
                            </div>
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Exam:</span>
                                <select name="Exam" id="Exam" class="form-control">
                                <option value="Yearly">Yearly</option>
                                <option value="Half Yearly">Half Yearly</option>
                                <option value="Semester">Semester</option>
                                <option value="Sessional">Sessional</option>
                                <option value="Mock Test">Mock Test</option>
                                </select>
                            </div>
                            </div>
                          <div class="row">
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Obtained Marks:</span>
                                <input id="Obtained Marks" type="text" class="form-control" name="Obtained Marks" required="">
                            </div>
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Date & Time:</span>
                                <input id="Date/Time" type="text" class="form-control" name="Date & Time" required="">
                            </div>
                          </div>
                            </div>
                            <div class="form-group"><center>
                                    <input class="btn btn-success col-lg-6 col-sm-12" type="submit" value="Submit"></center>
                            </div>
                        </form>
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
