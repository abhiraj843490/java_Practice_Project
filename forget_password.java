package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class forget_password extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String name = request.getParameter("id");

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@119.160.199.94:1521:mefgi",
                    "mef191160107001", "mef191160107001");
            String sql = "select password from register where username=? ";

            PreparedStatement pre = cn.prepareStatement(sql);
            pre.setString(1, name);
            
            ResultSet rs = pre.executeQuery();
            
            String updb = "";
            while (rs.next()) {
                updb = rs.getString("password");
                System.out.println("database password is " + updb);
            }

            request.getSession().setAttribute("pass", updb);
            response.sendRedirect("forget_password.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
