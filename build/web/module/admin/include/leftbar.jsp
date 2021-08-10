<%-- 
    Document   : leftbar
    Created on : 06-Aug-2021, 6:29:19 am
    Author     : shatakshi
--%>

<div id="sidebar">
        <div class="sidebar__title">
          <div class="sidebar__img">
            <img src="../../resources/icons/logo.png" alt="logo" />
            <h1>Online Examination System</h1>
          </div>
          <i
            onclick="closeSidebar()"
            class="fa fa-times"
            id="sidebarIcon"
            aria-hidden="true"
          ></i>
        </div>

        <div class="sidebar__menu">
          <div class="sidebar__link active_menu_link">
            <i class="fa fa-home"></i>
            <a href="../admin/Dashboard.jsp">Dashboard</a>
          </div>
          <h2>Manage</h2>
          <div class="sidebar__link">
            <i class="fa fa-user-secret" aria-hidden="true"></i>
            
            <a href="../admin/Course.jsp">Courses</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-building-o"></i>
            <a href="../admin/Session.jsp">Sessions</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-wrench"></i>
            <a href="../admin/Subject.jsp">Subjects</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-archive"></i>
            <a href="../admin/Student.jsp">Students</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-archive"></i>
            <a href="../admin/Exam.jsp">Exams</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-handshake-o"></i>
            <a href="../admin/QuestionPaper.jsp">Question Paper</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-archive"></i>
            <a href="../admin/StudentAnswer.jsp">Student Answer</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-archive"></i>
            <a href="../admin/Result.jsp">Result</a>
          </div>
          <%--<h2>LEAVE</h2>
          <div class="sidebar__link">
            <i class="fa fa-question"></i>
            <a href="#">Requests</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-sign-out"></i>
            <a href="#">Leave Policy</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-calendar-check-o"></i>
            <a href="#">Special Days</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-files-o"></i>
            <a href="#">Apply for leave</a>
          </div>
          <h2>PAYROLL</h2>
          <div class="sidebar__link">
            <i class="fa fa-money"></i>
            <a href="#">Payroll</a>
          </div>
          <div class="sidebar__link">
            <i class="fa fa-briefcase"></i>
            <a href="#">Paygrade</a>
          </div>
          --%>
          <div class="sidebar__logout">
            <i class="fa fa-power-off"></i>
            <a href="../logout.jsp">Log out</a>
          </div>
        </div>
         
      </div> 