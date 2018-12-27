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

@WebServlet("/customer")
public class CustomerServlet extends HttpServlet {

    ArrayList<Customer> tablecustomer;

    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)

            throws ServletException, IOException {

        if(tablecustomer!=null) {
            tablecustomer.clear();
        }

        try {
            tablecustomer = WorkWithDB.getInstance().SELECTCustomer();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        req.setAttribute("tablecustomer", tablecustomer);
        req.getServletContext().getRequestDispatcher("/showcustomer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}