
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class register extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        // now conect the jdbc and take values from jsp and insert it into our dbms
        
//        String userID=(String)(request.getParameter("id"));
        String fullname=request.getParameter("fname");
        String username=request.getParameter("uname");
        String email =request.getParameter("email");
        String password=request.getParameter("psw");
        String confirmpass=request.getParameter("cnfpsw");
        
        // here we are taking user enter val from jsp and with the help of this servlet
        
        try{
            Connection con;
            Class.forName("oracle.jdbc.driver.OracleDriver");
        
            con = DriverManager.getConnection("jdbc:oracle:thin:@119.160.199.94:1521:mefgi", "mef191160107001","mef191160107001");
            System.out.println("connected");
         
        // now we connected with dbms
            
            String sql="insert into register (fullname, username, email, password, confirmpass) values(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            
            ps.setString(1, fullname);
            ps.setString(2, username);
            ps.setString(3, email);
            ps.setString(4, password);
            ps.setString(5, confirmpass);
            
            ps.executeUpdate();
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
            
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("ERROR :: "+e.getMessage());
        }
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
