package servlets;

import Database.WorkWithDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/addamount")
public class AddAmountServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getServletContext().getRequestDispatcher("/addamount.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String[] data = new String[4];
        data[0] = req.getParameter("num");
        data[1] = req.getParameter("date_of_receipt");
        data[2] = req.getParameter("amount");
        data[3] = req.getParameter("date_of_execution");

        try {
            WorkWithDB.getInstance().ADD("amount", data);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        doGet(req, resp);
    }
}
