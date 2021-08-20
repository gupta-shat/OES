/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import DB.PaperModel;
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
public class ExamPaperCtrl extends HttpServlet {

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
            out.println("<title>Servlet ExamPaperCtrl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ExamPaperCtrl at " + request.getContextPath() + "</h1>");
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
        PrintWriter out = response.getWriter();
        int no_ques = Integer.parseInt(request.getParameter("ques"));
        int paperId = Integer.parseInt(request.getParameter("paperid"));
        String qus = null, optA = null, optB = null, optC = null, optD = null, ans = null;

        int flag = 0;
        for (int i = 1; i <= no_ques; i++) {
            qus = null;
            optA = null;
            optB = null;
            optC = null;
            optD = null;
            ans = null;
            qus = request.getParameter("Question" + i);
            optA = request.getParameter("a" + i);
            optB = request.getParameter("b" + i);
            optC = request.getParameter("c" + i);
            optD = request.getParameter("d" + i);
            ans = request.getParameter("answer" + i);
            //System.out.println("ANSWER:"+ans);
            if (ans.equals("a")) {
                ans = optA;
            } else if (ans.equals("b")) {
                ans = optB;
            } else if (ans.equals("c")) {
                ans = optC;
            } else {
                ans = optD;
            }

            flag += PaperModel.insertqus(qus, optA, optB, optC, optD, ans, paperId);
            //System.out.println(qus+"    options     "+optA+"#"+optB+"#"+optC+"#"+optD+"#ANS"+ans);
        }
        if (flag == no_ques) {
            out.println("<HTML>" + "\n" + "<head>" + "\n" + "<script>");

            out.println("alert('All questions are entered Successfully!')");
            out.println("javascript:history.go(-1)");
            out.println("</script>" + "\n" + "</head>" + "\n" + "</HTML>");
        } else {
            out.println("<HTML>" + "\n" + "<head>" + "\n" + "<script>");

            out.println("alert('Not Entered, Please Try Again!')");
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