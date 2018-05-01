import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

public class MenuServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        switch (req.getParameter("bt")) {
            case "Livres" : req.getRequestDispatcher("/WEB-INF/book_list.jsp").forward(req, resp); break;
            case "Connexion" : req.getRequestDispatcher("/WEB-INF/authentication_page.jsp").forward(req, resp); break;
            default: break;
        }
    }
}

