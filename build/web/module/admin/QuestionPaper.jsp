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

          <!-- MAIN CARDS STARTS HERE -->
          <div class="main__cards" style="grid-template-columns: auto">
              <div class="card" style="padding: 0px; height: auto">
                  <div class="card-header"><h3>Question Paper</h3></div>
                  <div class="card-body">
                      <div>
                          <% int no_ques=Integer.parseInt(request.getParameter("ques"));
                            String paperId=request.getParameter("pid");
                                for(int i=1;i<=no_ques;i++){
                                        %>
                                <div class="step"><button class="stepbtn" onclick="tabSwitch('<%=i%>')"><%= i%></button></div>
                                <% } %>
                      </div>
                      <hr>
                      <form action="/OES/ExamPaper" method="POST">
                          <input type="hidden" name="ques" value="<%=no_ques%>"><!-- comment -->
                          <input type="hidden" name="paperid" value="<%=paperId%>">
                          <% //int no_ques=Integer.parseInt(request.getParameter("ques"));
                                for(int i=1;i<=no_ques;i++){
                                        %>
                             <div class="tab" id="<%="tab-"+i%>" >   
                             <div class="form-group">
                                <span class=" ">Question-<%=i%>:</span>
                                <textarea row="4" cols="12" id="Question<%=i%>" class="form-control" name="Question<%=i%>" ></textarea>
                            </div> 
                            
                            <div class="row">
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (a):</span>
                                <input id="a<%=i%>" type="text" class="form-control" name="a<%=i%>" required="">
                            </div>
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (b):</span>
                                <input id="b<%=i%>" type="text" class="form-control" name="b<%=i%>" required="">
                            </div>
                            </div>
                            <div class="row">
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (c):</span>
                                <input id="c<%=i%>" type="text" class="form-control" name="c<%=i%>" required="">
                            </div>
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (d):</span>
                                <input id="d<%=i%>" type="text" class="form-control" name="d<%=i%>" required="">
                            </div>
                            </div>
                            <div class="row">
                              <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Correct Option:</span>
                                <select type="text" class="form-control" name="answer<%=i%>" required>
                                    <option value="a">A</option>
                                    <option value="b">B</option>
                                    <option value="c">C</option>
                                    <option value="d">D</option>
                                </select>
                               
                              </div>
                             </div>  
                            
                          </div>
                             <% } %>
                              <!-- tab2
                               <div class="tab" id="tab-2" >   
                             <div class="form-group">
                                <span class=" ">Question2:</span>
                                <textarea row="3" cols="12" id="Question" class="form-control" name="Question" ></textarea>
                            </div> 
                            
                            <div class="row">
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (a):</span>
                                <input id="a" type="text" class="form-control" name="a" required="">
                            </div>
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (b):</span>
                                <input id="b" type="text" class="form-control" name="b" required="">
                            </div>
                            </div>
                            <div class="row">
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (c):</span>
                                <input id="c" type="text" class="form-control" name="c" required="">
                            </div>
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (d):</span>
                                <input id="d" type="text" class="form-control" name="d" required="">
                            </div>
                            </div>
                            <div class="row">
                              <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Correct Option:</span>
                                <input id="Answer" type="text" class="form-control" name="Answer" required="">
                              </div>
                             </div>  
                            
                          </div>
                              <!-- tab3 
                               <div class="tab" id="tab-3" >   
                             <div class="form-group">
                                <span class=" ">Question3:</span>
                                <textarea row="3" cols="12" id="Question" class="form-control" name="Question" ></textarea>
                            </div> 
                            
                            <div class="row">
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (a):</span>
                                <input id="a" type="text" class="form-control" name="a" required="">
                            </div>
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (b):</span>
                                <input id="b" type="text" class="form-control" name="b" required="">
                            </div>
                            </div>
                            <div class="row">
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (c):</span>
                                <input id="c" type="text" class="form-control" name="c" required="">
                            </div>
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (d):</span>
                                <input id="d" type="text" class="form-control" name="d" required="">
                            </div>
                            </div>
                            <div class="row">
                              <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Correct Option:</span>
                                <input id="Answer" type="text" class="form-control" name="Answer" required="">
                              </div>
                             </div>  
                            
                          </div>
                               <div class="tab" id="tab-4" >   
                             <div class="form-group">
                                <span class=" ">Question4:</span>
                                <textarea row="3" cols="12" id="Question" class="form-control" name="Question" ></textarea>
                            </div> 
                            
                            <div class="row">
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (a):</span>
                                <input id="a" type="text" class="form-control" name="a" required="">
                            </div>
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (b):</span>
                                <input id="b" type="text" class="form-control" name="b" required="">
                            </div>
                            </div>
                            <div class="row">
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (c):</span>
                                <input id="c" type="text" class="form-control" name="c" required="">
                            </div>
                            <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Option (d):</span>
                                <input id="d" type="text" class="form-control" name="d" required="">
                            </div>
                            </div>
                            <div class="row">
                              <div class="form-group col-lg-6 col-sm-12">
                                <span class=" ">Correct Option:</span>
                                <input id="Answer" type="text" class="form-control" name="Answer" required="">
                              </div>
                             </div>  
                            
                          </div>
                          
                          <!-- Buttons -->
                          <div style="bottom:0; position: fixed;overflow:auto;">
                            <div style="">
                                <button type="button" class="btn btn-success back" ><i class="fa fa-backward"></i>Previous</button>
                                <button type="button" class="btn btn-success next" >Next<i class="fa fa-forward"></i></button>
                                <input type="submit" class="btn btn-success" id="endbtn" value="Submit">
                            </div>
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
  <script>
            var counter = 1;
            const total=<%=no_ques%>;
            /*if(counter === 1) {
		$('.next').show();
             */ 
$('body').on('click', '.next', function() { 
	$('.tab').hide();
//document.getElementsByClassName("step")[counter].className += " finish";
    counter++;
	$('#tab-'+counter+'').show();
    
	if(counter > 1) {
		$('.back').show();
	};
	if(counter >=total) {
            //alert(counter);
            $('#endbtn').show();
            //$('.next').hide();
            counter=0;
	};
	
});
$('body').on('click', '.back', function() { 
    //alert(counter);
    counter--;
    $('.tab').hide();
    var id = counter;    
	$('#tab-'+id).show();
    if(counter<2){
            $('.back').hide();
    }
    	
});
function tabSwitch(values){
    $('.tab').hide();
    $('#tab-'+values+'').show();
}
        </script>
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>-->
<script src="../../resources/JS/script.js" type="text/javascript"></script>
</body>
</html>