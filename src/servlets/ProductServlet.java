package servlets;

import Data.Customer;
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

@WebServlet("/product")
public class ProductServlet extends HttpServlet {
    ArrayList<Product> tableproduct;

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)

            throws ServletException, IOException {

        if(tableproduct!=null) {
            tableproduct.clear();
        }

        try {
            tableproduct = WorkWithDB.getInstance().SELECTProduct();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        req.setAttribute("tableproduct", tableproduct);
        req.getServletContext().getRequestDispatcher("/showproduct.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

}
