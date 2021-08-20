<%-- 
    Document   : STheader
    Created on : 20-Aug-2021, 1:08:09 pm
    Author     : shatakshi
--%>

<%@page import="DB.RegModel"%>
<%@page import="Beans.RegisterBean"%>
 <%
            String uname1=(String)session.getAttribute("username");
            RegisterBean rb=RegModel.search(uname1);
        %>
 <nav class="navbar">
        <div class="nav_icon" onclick="toggleSidebar()">
          <i class="fa fa-bars" aria-hidden="true"></i>
        </div>
        <div class="navbar__left">
          <a class="active_link" href="#"></a>
        </div>
        <div class="navbar__right">
          <a href="#">
            <i class="fa fa-search" aria-hidden="true"></i>
          </a>
       <!--   <a href="#">
            <i class="fa fa-clock-o" aria-hidden="true"></i>
          </a>-->
       <a id='myBtn'>
            <img width="30" src="../../resources/icons/avatar.svg" alt="" />
            <!-- <i class="fa fa-user-circle-o" aria-hidden="true"></i> -->
          </a>
        </div>
      </nav>
 <!-- Modal -->
  <div id="id06" class="modalprofile"> 
    
    <!-- Modal Content -->
    <form class="modalprofile-content animate" style=" border-radius:20px;width:40%; box-shadow:50px 4px 8px 20px rgba(0,0,0,0.2), 50px 6px 20px 30px rgba(0,0,0,0.19);" action=""  method="POST" onsubmit="return validatepassword();">
        <div class="imgcontainer" style=""> 
    <div><b>User Profile</b><span onclick="document.getElementById('id06').style.display='none'" class="cl" title="Close Modal">&times;</span>
    
    </div>
        </div>

    
 <div class="form-group" style=" margin-bottom: 45px !important;">
	<div class="col-xs-12">
            <label for="uname"><i class="fa fa-user fa-fw"></i></label>   <input class="borderbottom" id="iduname" type="text" name="uid"  readonly>
	</div>
<br><br><br>
     <div class="col-xs-12">
            <label for="uname"><i class="fa fa-user fa-fw"></i></label>   <input class="borderbottom" id="iduname" type="text" name="uname"  readonly>
	</div>
<br><br><br>
	<div class="col-xs-12">
            <i class="fa fa-lock fa-fw"></i><input class="borderbottom" id="idopass"type="password" name="opass" placeholder="Old Password"required >
	</div><br><br><br>
	<div class="col-xs-12">
            <i class="fa fa-lock fa-fw"></i><input class="borderbottom" placeholder="New Password" id="idnpass"type="password" name="npass" required >
	</div><br><br><br>

	<div class="col-xs-12">
            <i class="fa fa-lock fa-fw"></i><input class="borderbottom"  placeholder="Confirm Password"id="idcpass" type="password" name="cpass" required>
	</div><br><br>
	
	<div class="col-xs-4">
	</div>
	<div class="col-xs-6">
            <input type="submit" class="btn" style=" background-color: #27ba88" name="usersubmit" value="Submit"></button>
	</div>
</div>

 
</form>
   </div>
 <div class="modal fade animate" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title"><img width="30" src="../../resources/icons/avatar.svg" alt="" />User Profile</h4>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
            <form action="" method="POST">
                <div class="form-group display-flex">
                    <i class="fa fa-user icons"></i><input type="text" class="form-control" placeholder="Enter Name" value="<%=rb.getName()%>">
                    </div>
                <div class="form-group display-flex">
                    <i class="fa fa-lock icons"></i><input types="email" class="form-control" placeholder="Enter Email" value="<%=rb.getEmail()%>" readonly/>
                </div>
                <div class="form-group display-flex">
                    <i class="fa fa-lock icons"></i><input type='number' class="form-control" placeholder="Enter Contact Number" value='<%=rb.getContact()%>'/><!-- comment -->
                </div>
                <div class="form-group display-flex">
                    <i class="fa fa-lock icons"></i><input type='password' class="form-control" placeholder="Enter Password" />
                </div>
                <div class="form-group display-flex">
                    <i class="fa fa-lock icons"></i><input type='password' class="form-control" placeholder="Confirm Password" />
                </div>
                <div class="form-group">
                    <input type='submit' class="form-control" value="Submit" />
                </div>
            </form>
        </div>
        
        <!-- Modal footer 
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>-->
        
      </div>
    </div>
  </div>