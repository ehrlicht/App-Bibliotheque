package ch.bibliotheque.servlet;
import ch.bibliotheque.dao.BookService;
import ch.bibliotheque.exceptions.MissingFieldsException;
import ch.bibliotheque.model.Book;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Year;
import java.util.Date;


public class AddBookServlet extends HttpServlet {

    private final BookService bs;

    @Inject
    public AddBookServlet (BookService bs) {
        this.bs = bs;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.isUserInRole("ADMIN")) {
            req.getRequestDispatcher("/WEB-INF/add_book.jsp").include(req, resp);
        } else {
            req.getRequestDispatcher("/WEB-INF/authentication.jsp").include(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        String publisher = req.getParameter("publisher");
        String year = req.getParameter("year");
        if (!title.isEmpty() && !author.isEmpty() && !publisher.isEmpty() && !year.isEmpty()) {
            bs.save(new Book(title, author, publisher, Year.of(Integer.parseInt(year))));
            resp.sendRedirect(req.getContextPath() + "/showBooks");
        } else {
            throw  new MissingFieldsException();
        }
    }
}
