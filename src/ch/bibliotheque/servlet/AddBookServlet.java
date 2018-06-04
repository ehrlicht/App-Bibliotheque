package ch.bibliotheque.servlet;
import ch.bibliotheque.dao.BookService;
import ch.bibliotheque.model.Book;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.Year;


public class AddBookServlet extends HttpServlet {

    private final BookService bs;

    @Inject
    public AddBookServlet (BookService bs) {
        this.bs = bs;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.isUserInRole("ADMIN")) {
            req.setAttribute("errorMessage",false);
            req.getRequestDispatcher("/WEB-INF/add_book.jsp").include(req, resp);
        } else {
            req.getRequestDispatcher("/WEB-INF/authentication.jsp").include(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("errorMessage",false);
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        String publisher = req.getParameter("publisher");
        String year = req.getParameter("year");
        if (!title.isEmpty() && !year.isEmpty()) {
            bs.save(new Book(title, author, publisher, Year.of(Integer.parseInt(year))));
            req.getSession().setAttribute("bookAdded", true);
            resp.sendRedirect(req.getContextPath() + "/showBooks");
        } else {
            req.setAttribute("errorMessage",true);
            req.getRequestDispatcher(req.getContextPath() +"/WEB-INF/add_book.jsp").forward(req,resp);
        }
    }
}
