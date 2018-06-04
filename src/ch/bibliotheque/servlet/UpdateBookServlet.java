package ch.bibliotheque.servlet;

import ch.bibliotheque.service.BookService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.Year;


public class UpdateBookServlet extends HttpServlet {
    private final BookService bs;

    @Inject
    public UpdateBookServlet(BookService bs) {
        this.bs = bs;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doGet UpdateServlet");
        if (req.isUserInRole("ADMIN")) {
            req.getRequestDispatcher("/WEB-INF/book_list.jsp").include(req, resp);
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
        String id = req.getParameter("id");
        bs.updateBook(title,author,publisher,Year.of(Integer.parseInt(year)),Integer.parseInt(id));
        req.getSession().setAttribute("bookUpdated", true);
        resp.sendRedirect(req.getContextPath()+"/showBooks");

    }
}
