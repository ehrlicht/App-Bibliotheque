package ch.bibliotheque.servlet;

import ch.bibliotheque.model.Book;
import ch.bibliotheque.service.BookService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class BookListServlet extends HttpServlet {

    private final BookService bs;

    @Inject
    public BookListServlet(BookService bs) {
        this.bs = bs;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Book> books = bs.listAll();
        req.setAttribute("books", books);
        req.getRequestDispatcher("/WEB-INF/book_list.jsp").forward(req, resp);
    }
}
