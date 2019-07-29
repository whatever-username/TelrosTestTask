package app;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

/**
 * Created by Innokentiy on 27.07.2019.
 */
public class AuthorizationServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURI();
        if (url.equals("/auth")) {
            String login = req.getParameter("login");
            String pass = req.getParameter("pass");
            if (login.equals("user") && (pass.equals("111111"))) {
                req.getSession().setAttribute("login", "user");

                req.getRequestDispatcher("main.jsp").forward(req, resp);
            } else {
                req.getRequestDispatcher("index.jsp").forward(req, resp);
            }
        }else if (url.equals("/data")){
            req.setCharacterEncoding("UTF-8");
            req.getSession().setAttribute("firstname",req.getParameter("firstname"));
            req.getSession().setAttribute("lastname",req.getParameter("lastname"));
            req.getSession().setAttribute("fathername",req.getParameter("fathername"));
            req.getRequestDispatcher("main.jsp").forward(req,resp);
        }
        else if (url.equals("/exit")){

                req.getSession().invalidate();

            resp.sendRedirect("index.jsp");
        }
    }
}
