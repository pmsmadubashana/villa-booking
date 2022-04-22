
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


@WebServlet(name = "BookingServlet", urlPatterns = {"/BookingServlet"})
public class BookingServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BookingServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BookingServlet at " + request.getContextPath() + "</h1>");
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
        
        String name= request.getParameter("name");
        String contact = request.getParameter("contact");
        String checkin = request.getParameter("checkin");
        String checkout = request.getParameter("checkout");
        String adults=request.getParameter("adults");
        String child = request.getParameter("child");
        String rooms= request.getParameter("rooms");
        
        BookingBean bean = new BookingBean();
        
        bean.setName(name);
        bean.setContact(contact);
        bean.setCheckin(checkin);
        bean.setCheckout(checkout);
        bean.setAdults(adults);
        bean.setChild(child);
        bean.setRooms(rooms);
        
        boolean res = bean.addData();
        if(res == false)
        {
            HttpSession session = request.getSession();
            session.setAttribute("error", "ERROR! Please enter valid info");
            response.sendRedirect("AddBooking.jsp");
        }
        else
        {
            HttpSession session = request.getSession();
            session.setAttribute("success", "Booking Has Been Plased! Wait For Validation");
            response.sendRedirect("AddBooking.jsp");
        }
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
