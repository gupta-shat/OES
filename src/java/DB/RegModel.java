/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;
import Beans.RegisterBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author shatakshi
 */
public class RegModel {
    public static int create( RegisterBean rb){
        int i=0;
         try {
            Connection con=DBConnection.getConnection();
            String quary="insert into Students(name, email) values(?,?)";
            PreparedStatement pst=con.prepareStatement(quary);
            pst.setString(1, rb.getName());
            pst.setString(2, rb.getEmail());
            i=pst.executeUpdate();
            
            String quary1="insert into users(username, password) values(?,?)";
            PreparedStatement pst1=con.prepareStatement(quary1);
            pst1.setString(1, rb.getEmail());
            pst1.setString(2, rb.getPass());
            i += pst1.executeUpdate();
            //con.close();
            
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
         return i;
    }
    
    public static int searchEmail( RegisterBean rb) throws SQLException{
        int i=0;
        Connection con=null;
         try {
            con=DBConnection.getConnection();
            String quary="select * from Students where email='"+rb.getEmail()+"'";
            Statement pst=con.createStatement();
            ResultSet rs=pst.executeQuery(quary);
            rs.last();
            i=rs.getRow();
            System.out.println("Rows"+i);
            //con.close();
            
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
         finally{
             con.close();
         }
         return i;
    }
}