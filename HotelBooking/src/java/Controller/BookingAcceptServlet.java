
package Controller;

import Beans.BookingBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "BookingAcceptServlet", urlPatterns = {"/BookingAcceptServlet"})
public class BookingAcceptServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BookingAcceptServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookingAcceptServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String state = "done";
        String id = (String) request.getParameter("id");
        BookingBean bean = new BookingBean();
        bean.setId(id);
        bean.setState(state);
        
        boolean res = bean.updateState();
        
        if(res == false)
        {
            HttpSession session = request.getSession();
            session.setAttribute("error", "ERROR! Please enter valid info");
            response.sendRedirect("home.jsp");
        }
        else
        {
            HttpSession session = request.getSession();
            session.setAttribute("success", "Booking Has Been Plased! Wait For Validation");
            response.sendRedirect("home.jsp");
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
