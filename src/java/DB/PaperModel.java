/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author shatakshi
 */
public class PaperModel {
     public static int insertqus(String qus, String a, String b, String c, String d, String ans, int pid ) {
        int i=0;
         try {

            Connection con=DBConnection.getConnection();
            String quary="insert into Paper(qus,optA,optB,optC,optD, ans, examId) values(?,?,?,?,?,?,?)";

            PreparedStatement pst=con.prepareStatement(quary);
            pst.setString(1, qus);
            pst.setString(2, a);
            pst.setString(3, b);
            pst.setString(4, c);
            pst.setString(5, d);
            pst.setString(6, ans);
            pst.setInt(7, pid);
            i=pst.executeUpdate();
            /*PreparedStatement pst=con.prepareStatement(quary,Statement.RETURN_GENERATED_KEYS);
            ResultSet rs=pst.getGeneratedKeys();
            if(rs !=null && rs.next()){
            System.out.println("ID:"+rs.getInt(1));
            }*/

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
         return i;
    }
}
