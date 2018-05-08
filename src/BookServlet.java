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
    private final Foo foo;

    @Inject //permet de faire la même chose qu'EJB et plus encore
    public BookServlet (BookService bs, Foo foo) {
        this.bs = bs;
        this.foo = foo; //Test de scopes (voir dans la classe Foo)
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");
        String title = req.getParameter("title");
        String isbn = req.getParameter("isbn");
        String author = req.getParameter("author");
        String publicationDate = req.getParameter("publicationDate");
        Date pd =  new Date();
        try {
            pd = sdf.parse(publicationDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        bs.save(new Book(title, isbn, author, pd));
        resp.sendRedirect(req.getContextPath()+"/run");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Book> books = bs.readAll();
        req.setAttribute("books", books);
        req.getRequestDispatcher("/WEB-INF/display.jsp").forward(req,resp);
    }
}
