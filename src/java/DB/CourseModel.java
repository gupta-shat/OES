/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import Beans.CourseBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;
//import java.sql.Statement;
//import java.util.logging.Level;
//import java.util.logging.Logger;
/**
 *
 * @author shatakshi
 */
public class CourseModel {

    public static int create( CourseBean cb) {
        int i=0;
         try {

            Connection con=DBConnection.getConnection();
            String quary="insert into Course(course,duration,description,sessionable) values(?,?,?,?)";

            PreparedStatement pst=con.prepareStatement(quary);
            pst.setString(2, cb.getCourse());
            pst.setString(3, cb.getDuration());
            pst.setString(4, cb.getDescription());
            pst.setInt(5, cb.getSessionable());
            
            i=pst.executeUpdate();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
         return i;
    }
    /*public static ResultSet fetchCourse(){
        ResultSet rs=null;
        Connection con=null;
        try {
            con=DBConnection.getConnection();
            String quary="select * from Course";
            Statement st=con.createStatement();
            rs=st.executeQuery(quary);
            //System.out.print(rs.getRow());
        } catch (SQLException ex) {
            Logger.getLogger(CourseModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }*/

}