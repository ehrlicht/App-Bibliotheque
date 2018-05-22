package ch.bibliotheque.servlet;

import ch.bibliotheque.exceptions.LoginErrorException;
import javafx.fxml.LoadException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;

public class AuthenticationServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user = req.getParameter("user");
        String pwd = req.getParameter("pwd");
        try {
            req.login(user, pwd);
            resp.sendRedirect("/main");
        } catch (ServletException e) {
            throw new LoginErrorException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getRequestURI().equals("/authenticate") || Boolean.TRUE.equals(req.getParameter("cbtn").equals("connexion"))) {
            req.getRequestDispatcher("/WEB-INF/authentication.jsp").include(req, resp);
        }
        if (Boolean.TRUE.equals(req.getParameter("cbtn").equals("deconnexion"))) {
            req.logout();
            resp.sendRedirect("/main");
        }
    }
}
