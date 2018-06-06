package ch.bibliotheque.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthenticationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user = req.getParameter("user");
        String pwd = req.getParameter("pwd");
        try {
            req.login(user, pwd);
            resp.sendRedirect(req.getContextPath() +"/main");
        } catch (ServletException se) {
            req.setAttribute("loginError", true);
            req.getRequestDispatcher( "/WEB-INF/authentication.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (!req.isUserInRole("ADMIN")) {
            req.setAttribute("loginError", false);
            req.getRequestDispatcher("/WEB-INF/authentication.jsp").forward(req, resp);
        } else {
            req.logout();
            resp.sendRedirect(req.getContextPath() + "/main");
        }
    }
}
