/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import Beans.SubjectBean;
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
public class SubjectModel {
    public static int create( SubjectBean sb) {
        int i=0;
         try {

            Connection con=DBConnection.getConnection();
            String quary="insert into Subject(subject, description) values(?,?)";

            PreparedStatement pst=con.prepareStatement(quary);
            pst.setString(1, sb.getSubject());
            pst.setString(2, sb.getDescription());
            i=pst.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
         return i;
    }
    public static ResultSet fetchSubject(){
        ResultSet rs=null;
        Connection con=null;
        try {
            con=DBConnection.getConnection();
            String quary="select * from Subject";
            Statement st=con.createStatement();
            rs=st.executeQuery(quary);
            //System.out.print(rs.getRow());
        } catch (SQLException ex) {
            Logger.getLogger(SubjectModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

}
