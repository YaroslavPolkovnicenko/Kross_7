package servlets;

import Data.Amount;
import Data.Product;
import Database.WorkWithDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet("/amount")
public class AmountServlet extends HttpServlet {
    ArrayList<Amount> tableamount;

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)

            throws ServletException, IOException {

        if(tableamount!=null) {
            tableamount.clear();
        }

        try {
            tableamount = WorkWithDB.getInstance().SELECTAmount();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        req.setAttribute("tableamount", tableamount);
        req.getServletContext().getRequestDispatcher("/showamount.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
