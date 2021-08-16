<%-- 
    Document   : examPaper
    Created on : 16-Aug-2021, 5:32:18 pm
    Author     : shatakshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
        <title>OES Paper</title>
    </head>
    <body>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-12" style="padding: 0px;">
                 <div class="card" style="padding: 0px; height: auto; box-shadow: 0px">
                  <div class="card-header text-center bg-info"><h5>Summary</h5></div>
                  <div class="card-body">
                      <div class="row">
                          <div class="col-2 p-3 mb-2 bg-primary text-white"></div>
                          <div class="col-2 p-3 mb-2 bg-success text-white"></div><!-- comment -->
                          <div class="col-2 p-3 mb-2 bg-info text-white"></div>
                      </div>
                      <hr>
                      <div>
                          <div class="step"><button class="stepbtn" onclick="tabSwitch('1')">1</button></div>
                      <div class="step"><button class="stepbtn" onclick="tabSwitch('2')">2</button></div>
                      <div class="step"><button class="stepbtn" onclick="tabSwitch('3')">3</button></div>
                      <div class="step"><button class="stepbtn" onclick="tabSwitch('4')">4</button></div>
                      </div>
                  </div>
                 </div>
                     
            </div>
            <div class="col-lg-9 col-md-9 col-sm-12" style="padding: 0px;">
                <form>
                <div class="card" style="padding: 0px; height: auto">
                  <div class="card-header text-center"><h5>Question Paper</h5></div>
                  
                  <div class="card-body">
                      
                          <div class="tab" id="tab-1" style="display: block">
                          <div class="form-group">
                              <label style="font-size: 20px">Question-1 : 
                                  <span class="text-justify">Which of this keyword can be used in a subclass to call the constructor of superclass?</span>
                              </label>
                          </div>
                          <div class="form-group">
                              <div class="" style="font-size:18px">
                          <div class="col-lg-1"></div>
                          <div class='col-lg-4'><input type="radio" name="option1" value="extents">
                              <b>A :</b>extents
                            </div>
                            <div class='col-lg-2'></div>
                            <div class='col-lg-4'><input type="radio" name="option1" value="extent">
                                <b> B :</b>extent
                            </div>

                            <div class="col-lg-1"></div>
                            <div class='col-lg-4'><input type="radio" name="option1" value="this">
                                <b>C :</b> this
                            </div>
                            <div class='col-lg-2'></div>
                            <div class='col-lg-4'><input type="radio" name="option1" value="super">
                                <b> D :</b> super
                            </div>
                      </div>
                          </div>
                  </div>
                          <!--<!-- qus2 -->
                          <div class="tab" id="tab-2">
                          <div class="form-group">
                              <label style="font-size: 20px">Question-2 : 
                                  <span class="text-justify">Which of the following is a super class of all exception type classes?</span>
                              </label>
                          </div>
                          <div class="form-group">
                              <div class="" style="font-size:18px">
                          <div class="col-lg-1"></div>
                          <div class='col-lg-4'><input type="radio" name="option2" value="catchable">
                              <b>A :</b>catchable
                            </div>
                            <div class='col-lg-2'></div>
                            <div class='col-lg-4'><input type="radio" name="option2" value="RuntimeException">
                                <b> B :</b>RuntimeException
                            </div>

                            <div class="col-lg-1"></div>
                            <div class='col-lg-4'><input type="radio" name="option2" value="String">
                                <b>C :</b> String
                            </div>
                            <div class='col-lg-2'></div>
                            <div class='col-lg-4'><input type="radio" name="option2" value="Throwable">
                                <b> D :</b> Throwable
                            </div>
                      </div>
                          </div>
                          </div>
                          <!-- qus3 -->
                          <div class="tab" id="tab-3">
                          <div class="form-group">
                              <label style="font-size: 20px">Question-3 : 
                                  <span class="text-justify">Which of these keywords can be used to prevent Method overriding?</span>
                              </label>
                          </div>
                          <div class="form-group">
                              <div class="" style="font-size:18px">
                          <div class="col-lg-1"></div>
                          <div class='col-lg-4'><input type="radio" name="option3" value="final">
                              <b>A :</b>final
                            </div>
                            <div class='col-lg-2'></div>
                            <div class='col-lg-4'><input type="radio" name="option3" value="static">
                                <b> B :</b>static
                            </div>

                            <div class="col-lg-1"></div>
                            <div class='col-lg-4'><input type="radio" name="option3" value="protected">
                                <b>C :</b> protected
                            </div>
                            <div class='col-lg-2'></div>
                            <div class='col-lg-4'><input type="radio" name="option3" value="constant">
                                <b> D :</b> constant
                            </div>
                      </div>
                          </div>
                          </div>
                          <!-- qus4 -->
                          <div class="tab" id="tab-4">
                          <div class="form-group">
                              <label style="font-size: 20px">Question-4 : 
                                  <span class="text-justify">Which of these is supported by method overriding in Java?</span>
                              </label>
                          </div>
                          <div class="form-group">
                              <div class="" style="font-size:18px">
                          <div class="col-lg-1"></div>
                          <div class='col-lg-4'><input type="radio" name="option4" value="abstraction">
                              <b>A :</b>Abstraction
                            </div>
                            <div class='col-lg-2'></div>
                            <div class='col-lg-4'><input type="radio" name="option4" value="Encapsulation">
                                <b> B :</b>Encapsulation
                            </div>

                            <div class="col-lg-1"></div>
                            <div class='col-lg-4'><input type="radio" name="option4" value="Polymorphism">
                                <b>C :</b> Polymorphism
                            </div>
                            <div class='col-lg-2'></div>
                            <div class='col-lg-4'><input type="radio" name="option4" value="None">
                                <b> D :</b> None
                            </div>
                      </div>
                          </div>
                          </div>
                                             
                  </div>
                  <!-- Buttons -->
                          <div class="card-footer" style="bottom:0; position: fixed;overflow:auto;">
                            <div style="">
                                <button type="button" class="btn btn-success back" ><i class="fa fa-backward"></i>Previous</button>
                                <button type="button" class="btn btn-success next" >Next<i class="fa fa-forward"></i></button>
                                <button type="button" class="btn btn-success" id="endbtn" >End Exam</button>
                            </div>
                          </div>
                 </div>
                </form>
            </div>
        </div>
        <script>
            var counter = 1;
            const total=4;
$('body').on('click', '.next', function() { 
	$('.tab').hide();
//document.getElementsByClassName("step")[counter].className += " finish";
    counter++;
	$('#tab-'+counter+'').show();
    
	if(counter > 1) {
		$('.back').show();
	};
	if(counter > total) {
            //alert(counter);
            $('#endbtn').show();
            counter=0;
		$('.content-holder').hide();
		$('.end').show();
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
$('body').on('click', '.edit-previous', function() { 
	
});
function tabSwitch(values){
    $('.tab').hide();
    $('#tab-'+values+'').show();
}
        </script>
        <script src="../../resources/JS/script.js" type="text/javascript"></script>
    </body>
</html>
