package online.E.booking;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteBookingServlet
 */
@WebServlet("/DeleteBookingServlet")
public class DeleteBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bookingid = request.getParameter("bookID");
		boolean isTrue;
		
		isTrue = bookingDBUtill.deletebooking(bookingid);
		
		if (isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("bkinsert.jsp");
			dis.forward(request,response);
		}
		else {
			
			List<Booking> bookDetails = bookingDBUtill.getBookingDetails(bookingid);
			request.setAttribute("BookingDetails", bookDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("bookingdata.jsp");
			dis.forward(request,response);
		}
	}

}
