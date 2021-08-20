/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;
import Beans.ExamBean;
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
public class ExamModel {
    public static int create(ExamBean eb) {
        int i = 0;
        try {

            Connection con = DBConnection.getConnection();
            String quary = "insert into ExamDetails(Sub_id,title,duration,time,marks,ques,isActive,isMain,isResult) values(?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(quary, Statement.RETURN_GENERATED_KEYS);
            pst.setInt(1, eb.getSubCode());
            pst.setString(2, eb.getExam());
            pst.setString(3, eb.getDuration());
            pst.setString(4, eb.getTime());
            pst.setInt(5, eb.getMarks());
            pst.setInt(6, eb.getQus());
            pst.setInt(7, eb.getIsActive());
            pst.setInt(8, eb.getIsMain());
            pst.setInt(9, eb.getIsResult());

            pst.executeUpdate();

            ResultSet rs = pst.getGeneratedKeys();
            if (rs != null && rs.next()) {
                i=rs.getInt(1);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return i;
    }
    public static ResultSet fetchExamMain(int isMain){
        ResultSet rs=null;
            Connection con=null;
        try {
            con=DBConnection.getConnection();
            String quary="select * from Exam_Subject where isMain="+isMain+" ";
            Statement st=con.createStatement();
            rs=st.executeQuery(quary);
            //System.out.print(rs.getRow());
        } catch (SQLException ex) {
            Logger.getLogger(SubjectModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}

