package ch.bibliotheque.servlet;

import ch.bibliotheque.dao.BookService;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RemoveBookServlet extends HttpServlet {

    private final BookService bs;

    @Inject
    public RemoveBookServlet(BookService bs) {
        this.bs = bs;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.parseInt(req.getParameter("id"));
        bs.remove(id);
        resp.sendRedirect(req.getContextPath() + "/showBooks");
    }
}
