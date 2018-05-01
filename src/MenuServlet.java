import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

public class MenuServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(req.getParameter("bt").equals("Livres"));
        System.out.println(req.getParameter("bt").equals("Connexion"));
        if (req.getParameter("bt").equals("Livres")) {
            req.getRequestDispatcher("/WEB-INF/book_list.jsp").forward(req, resp);
        }
        if (req.getParameter("bt").equals("Connexion")) {
            System.out.println("Going to authentication page !");
            req.getRequestDispatcher("/WEB-INF/authentication_page.jsp").forward(req, resp);
        }
    }
}

