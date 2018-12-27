package servlets;

import Database.WorkWithDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/addproduct")
public class AddProductServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getServletContext().getRequestDispatcher("/addproduct.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String[] data = new String[4];
        data[0] = req.getParameter("num");
        data[1] = req.getParameter("title");
        data[2] = req.getParameter("price");
        data[3] = req.getParameter("delivery_date");

        try {
            WorkWithDB.getInstance().ADD("product", data);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        doGet(req, resp);
    }
}
