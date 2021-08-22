<%-- 
    Document   : Courses
    Created on : 08-Aug-2021, 1:04:12 am
    Author     : shatakshi
--%>
<%@page import="DB.ExamModel"%>
<%@page import="DB.SubjectModel"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="theme-color" content="yellow" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylrsheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
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
            String uname = (String) session.getAttribute("username");
            if (uname == null) {
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
                                <form method="POST" action="/OES/ExamCtrl">
                                    <div class="row">
                                        <div class="form-group col-lg-6 col-sm-12">
                                            <span class="">Subject:</span>
                                            <select class="form-control" name="subject">
                                                <%
                                                    ResultSet rs = SubjectModel.fetchSubject();
                                                    while (rs.next()) {
                                                %>
                                                <option value="<%=rs.getInt(1)%>"><%=rs.getString(2) + "(" + rs.getInt(1) + ")"%></option>
                                                <% } %>
                                            </select>
                                        </div>
                                        <div class="form-group col-lg-6 col-sm-12">
                                            <span class=" ">Exam Date & Time:</span>
                                            <input id="time" type="datetime-local" class="form-control" name="time" required="">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-lg-6 col-sm-12">
                                            <span class=" ">Exam Title:</span>
                                            <input id="exam" type="text" class="form-control" name="exam" required="">
                                        </div>
                                        <div class="form-group col-lg-6 col-sm-12">
                                            <span class=" ">Exam Duration:</span>
                                            <input id="duration" type="time" class="form-control" name="duration" required="">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-lg-6 col-sm-12">
                                            <span class=" ">Marks Per Question:</span>
                                            <input id="marks" type="Number" class="form-control" name="marks" required="">
                                        </div>
                                        <div class="form-group col-lg-6 col-sm-12">
                                            <span class=" ">Total Number of Questions :</span>
                                            <input type="totalqus" class="form-control" name="totalqus" required/>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-lg-6 col-sm-12">
                                            <div class="row"> 
                                                <div class="form-group col-lg-4 col-sm-12"><span class=" ">Exam State:   </span></div>
                                                <div class="form-group col-lg-4 col-sm-6"><input type="radio" name="isActive" id="active" value="1">Active</div>
                                                <div class="form-group col-lg-4 col-sm-6"><input type="radio" name="isActive" id="inactive" value="0">Inactive</div>
                                            </div>
                                        </div>
                                    </div>    
                                    <div class="row">
                                        <div class="form-group col-lg-6 col-sm-12">
                                            <div class="row"> 
                                                <div class="form-group col-lg-4 col-sm-12"><span class=" ">Exam Type:   </span></div>
                                                <div class="form-group col-lg-4 col-sm-6"><input type="radio" name="isMain" id="main" value="1">Main Exam</div>
                                                <div class="form-group col-lg-4 col-sm-6"><input type="radio" name="isMain" id="mock" value="0">Mock Test</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="form-group col-lg-6 col-sm-12">
                                            <div class="row"> 
                                                <div class="form-group col-lg-4 col-sm-12"><span class=" ">Result State:   </span></div>
                                                <div class="form-group col-lg-4 col-sm-6"><input type="radio" name="isResult" id="Declared" value="1">Declared</div>
                                                <div class="form-group col-lg-4 col-sm-6"><input type="radio" name="isResult" id="Not Declared" value="0">Not Declared</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group"><center>
                                            <input class="btn btn-success col-lg-6 col-sm-12" type="submit" value="Submit"></center>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="card" style="padding: 0px; height: auto">
                            <div class="card-header">Exam Details</div>
                            <div class="card-body">
                                <div class="dataTable_wrapper">
                                    <table class="table table-striped table-hover table-responsive" id="dataTables">
                                        <thead>
                                            <tr>
                                                <th>Subject</th>
                                                <th>Exam Title</th>
                                                <th>Exam Date & Time</th>
                                                <th>Exam Duration</th>
                                                <th>Marks Per Question</th>
                                                <th>Total Number of Questions</th>
                                                <th>Active</th>
                                                <th>Main Exam</th>
                                                <th>Result Declared</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                ResultSet rs1 = ExamModel.fetchExam();
                                                while (rs1.next()) {
                                            %>
                                            <tr>
                                                <td><%=rs1.getString(12)%></td>
                                                <td><%=rs1.getString(2)%></td>
                                                <td><%=rs1.getString(3)%></td>
                                                <td><%=rs1.getString(4)%></td>
                                                <td><%=rs1.getString(5)%></td>
                                                <td><%=rs1.getString(7)%></td>
                                                <td><%=rs1.getString(8)%></td>
                                                <td><%=rs1.getString(9)%></td>
                                                <td><%=rs1.getString(10)%></td>
                                                <td><i class="fa fa-edit"></i><i class="fa fa-trash"></i></td>
                                            </tr>
                                            <% }%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- MAIN CARDS ENDS HERE -->
                </div>
            </main>

            <%@include file="include/leftbar.jsp" %>
        </div>
        <script>
            $(document).ready(function () {
                $("#myBtn").click(function () {
                    $("#myModal").modal();

                });
                $('#dataTables').DataTable({
                    responsive: true
                });
            });
            function checkAll(bx) {
                var cbs = document.getElementsByTagName('input');
                for (var i = 0; i < cbs.length; i++) {
                    if (cbs[i].type == 'checkbox') {
                        cbs[i].checked = bx.checked;
                    }
                }
            }
        </script>
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>-->
        <script src="../../resources/JS/script.js" type="text/javascript"></script>
    </body>
</html>