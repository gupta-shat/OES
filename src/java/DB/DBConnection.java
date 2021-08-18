package DB;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author shatakshi
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
public class DBConnection {
    static Connection con=null;
   /* public static Connection getConnection() throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/OES", "root", "");
        */
      public static Connection getConnection(){
         try {
             Class.forName("com.mysql.jdbc.Driver");
                 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/OES", "root", "");
         } catch (ClassNotFoundException ex) {
             Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
         }
         catch (SQLException ex) {
             Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
         }
        return con;
    }
}
