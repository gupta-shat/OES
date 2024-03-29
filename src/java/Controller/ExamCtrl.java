/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;
import Beans.ExamBean;
import DB.ExamModel;
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
public class ExamCtrl extends HttpServlet {

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
            out.println("<title>Servlet ExamCtrl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ExamCtrl at " + request.getContextPath() + "</h1>");
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
        PrintWriter out=response.getWriter();
        String subCode=request.getParameter("subject");
        String exam=request.getParameter("exam");
        String duration=request.getParameter("duration");
        String time=request.getParameter("time");
        String marks=request.getParameter("marks");
        //String nmarks=request.getParameter("nmarks");
        String qus=request.getParameter("totalqus");
        String isActive=request.getParameter("isActive");
        String isMain=request.getParameter("isMain");
        String isResult=request.getParameter("isResult");
        
        ExamBean eb=new ExamBean();
        eb.setSubCode(Integer.parseInt(subCode));
        eb.setExam(exam);
        eb.setDuration(duration);
        eb.setTime(time);
        eb.setMarks(Integer.parseInt(marks));
        //eb.setNmarks(Integer.parseInt(nmarks));
        eb.setQus(Integer.parseInt(qus));
        eb.setIsActive(Integer.parseInt(isActive));
        eb.setIsMain(Integer.parseInt(isMain));
        eb.setIsResult(Integer.parseInt(isResult));
        //questionpaper.jsp?ques="qus"
        int idx = ExamModel.create(eb);
        if (idx != 0) {
            response.sendRedirect("module/admin/QuestioPaper.jsp?ques=" + qus + "&pid=" + idx + " ");
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