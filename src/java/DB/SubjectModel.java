/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import Beans.SubjectBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;
//import java.sql.Statement;


/**
 *
 * @author shatakshi
 */
public class SubjectModel {
    
    public static int create( SubjectBean sb){
        int i=0;
         try {
            
            Connection con=DBConnection.getConnection();
            String quary="insert into Subject(subject, description) values(?,?)";

            PreparedStatement pst=con.prepareStatement(quary);
            pst.setString(1, sb.getName());
            pst.setString(2, sb.getEmail());
            i=pst.executeUpdate();
             
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
         return i;
    }
}
