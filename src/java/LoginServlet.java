/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import DB.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
/**
 *
 * @author shatakshi
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServlet at " + request.getContextPath() + "</h1>");
            out.println("<h1>Servlet LoginInfo at " + request.getParameter("username") + "</h1>"); 
            out.println("</body>");
            out.println("</html>");
        }
    }

   /*protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String pass=request.getParameter("password");
            System.out.println(name+" "+email+" "+pass);
         }
     *
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
           PrintWriter out=response.getWriter();
           String name=request.getParameter("username");
           String pass=request.getParameter("password");
           String uname=null, upass=null;
           int isAdmin=0;
        try {
            Connection con=DBConnection.getConnection();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from users where username='"+name+"'");
            while(rs.next()){
                upass=rs.getString(3);
                uname=rs.getString(2);
                isAdmin=rs.getInt(4);
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
           if(name.equals(uname) && pass.equals(upass))
           {
              
               HttpSession session=request.getSession();
               session.setAttribute("username", uname);
               if(isAdmin==1){
                    response.sendRedirect("module/admin/Dashboard.jsp");
               }
               else{
                   response.sendRedirect("module/students/Dashboard.jsp");
               }
           }
           else{
            out.println("<HTML>"+"\n"+"<head>"+"\n"+"<script>");

            out.println("alert('Please Enter a valid Username and Password!')");
            out.println("javascript:history.go(-1)");
            out.println("</script>"+"\n"+"</head>"+"\n"+"</HTML>"); 
           }

        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}