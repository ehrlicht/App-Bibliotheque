package ch.bibliotheque.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AuthenticationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user = req.getParameter("user");
        String pwd = req.getParameter("pwd");
        req.login(user, pwd);
        resp.sendRedirect("/books");
        System.out.println(req.isUserInRole("ADMIN"));
        //req.getRequestDispatcher("/WEB-INF/book_list.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        req.getRequestDispatcher("/WEB-INF/authentication_page.jsp").include(req, resp);
    }
}
