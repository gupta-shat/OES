<%-- 
    Document   : STleftbar
    Created on : 20-Aug-2021, 1:15:10 pm
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
            <a href="../students/Dashboard.jsp">Dashboard</a>
          </div>
          <h2>Manage</h2>
          <div class="sidebar__link">
            <i class="fa fa-user-secret" aria-hidden="true"></i>
            <a href="#">MockTest</a>
          </div>
           <div class="sidebar__link">
            <i class="fa fa-building-o"></i>
            <a href="#">Results</a>
          </div>
         
           <div class="sidebar__link">
            <i class="fa fa-handshake-o"></i>
            <a href="#">Exam Paper</a>
          </div>
          <div class="sidebar__logout">
            <i class="fa fa-power-off"></i>
            <a href="../logout.jsp">Log out</a>
          </div>
        </div>
      </div>