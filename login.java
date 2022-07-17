
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String un=request.getParameter("uname");
        String ps=request.getParameter("pass");
       
        try{
            Connection con;
            Class.forName("oracle.jdbc.driver.OracleDriver");
        
            con = DriverManager.getConnection("jdbc:oracle:thin:@119.160.199.94:1521:mefgi", "mef191160107001", "mef191160107001");
            System.out.println("connected");
            
            String sql="select * from register where username=? and password=?";
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, un);
            pre.setString(2, ps);
            
            String undb = "";
            String updb = "";
            ResultSet rs = pre.executeQuery();
            
            while(rs.next()){
                undb = rs.getString("username");
                updb = rs.getString("password");
                
                System.out.println("database username is "+undb);
                System.out.println("database password is "+updb);
            }
            if(un.equals(undb) && ps.equals(updb)){
                
                HttpSession session = request.getSession();
                session.setAttribute("username", un);
                
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
            else{
                System.out.println("");
                RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
                rd.forward(request, response);
            }
            
        }
        catch(Exception e){
            System.out.println("ERROR :: "+e.getMessage());
        }
    }

  


}
