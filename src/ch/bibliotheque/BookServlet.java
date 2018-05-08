package ch.bibliotheque;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet("/run")
public class BookServlet extends HttpServlet {

    private final BookService bs;

    @Inject //permet de faire la même chose qu'EJB et plus encore
    public BookServlet (BookService bs) {
        this.bs = bs;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
        String title = req.getParameter("title");
        String publisher = req.getParameter("publisher");
        String author = req.getParameter("author");
        String publicationDate = req.getParameter("publicationDate");
        Date pd =  new Date();
        try {
            pd = sdf.parse(publicationDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        bs.save(new Book(title, author, publisher, pd));
        resp.sendRedirect(req.getContextPath()+"/run");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Book> books = bs.readAll();
        req.setAttribute("books", books);
        req.getRequestDispatcher("/WEB-INF/display.jsp").forward(req,resp);
    }
}
