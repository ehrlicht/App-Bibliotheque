package ch.bibliotheque.servlet;
import ch.bibliotheque.dao.BookService;
import ch.bibliotheque.model.Book;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class AddBookServlet extends HttpServlet {

    private final BookService bs;

    @Inject
    public AddBookServlet (BookService bs) {
        this.bs = bs;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/new_book.jsp").include(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
        String titre = req.getParameter("titre_input");
        String auteur = req.getParameter("auteur_input");
        String editeur = req.getParameter("editeur_input");
        String annee_input = req.getParameter("annee_input");
        Date pd =  new Date();
        if (!titre.isEmpty() && !auteur.isEmpty() && !editeur.isEmpty() && !annee_input.isEmpty()) {
            try {
                pd = sdf.parse(annee_input);
            } catch (ParseException e) {
                e.printStackTrace();
            }
            bs.save(new Book(titre, auteur, editeur, pd));
            resp.sendRedirect(req.getContextPath() + "/books");
        }

    }
}
