
package Controller;

import Beans.BookingBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "BookingUpdateServlet", urlPatterns = {"/BookingUpdateServlet"})
public class BookingUpdateServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BookingUpdateServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookingUpdateServlet at " + request.getContextPath() + "</h1>");
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
        String id = request.getParameter("id");
        String name= request.getParameter("name");
        String contact = request.getParameter("contact");
        String chekin=request.getParameter("checkin");
        String chekout = request.getParameter("checkout");
        String adults= request.getParameter("adults");
        String child= request.getParameter("child");
        String rooms= request.getParameter("rooms");
        
        BookingBean bean = new BookingBean();
        
        bean.setId(id);
        bean.setName(name);
        bean.setContact(contact);
        bean.setCheckin(chekin);
        bean.setCheckout(chekout);
        bean.setAdults(adults);
        bean.setChild(child);
        bean.setRooms(rooms);
        
       bean.update();
        
        response.sendRedirect("ValidBooking.jsp");
        
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
