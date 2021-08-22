/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Beans.CourseBean;
import DB.CourseModel;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author shatakshi
 */
public class CourseCtrl extends HttpServlet {

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
            out.println("<title>Servlet CourseCtrl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CourseCtrl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
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
        //processRequest(request, response);
        PrintWriter out = response.getWriter();
        String course = request.getParameter("Course");
        String duration = request.getParameter("Duration");
        String description = request.getParameter("Description");
        String sessionable = request.getParameter("Sessionable");

        CourseBean cb = new CourseBean();
        cb.setCourse(course);
        cb.setDuration(duration);
        cb.setDescription(description);
        cb.setSessionable(Integer.parseInt(sessionable));
        int i = CourseModel.create(cb);
        if (i != 0) {
            out.println("<HTML>" + "\n" + "<head>" + "\n" + "<script>");
            out.println("alert('Record Entered Successfully!')");
            out.println("javascript:history.go(-1)");
            out.println("</script>" + "\n" + "</head>" + "\n" + "</HTML>");
        } else {
            out.println("<HTML>" + "\n" + "<head>" + "\n" + "<script>");
            out.println("alert('Record not Entered. Please try again!')");
            out.println("javascript:history.go(-1)");
            out.println("</script>" + "\n" + "</head>" + "\n" + "</HTML>");
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
