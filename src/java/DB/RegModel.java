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
             if(searchEmail(rb)==0){
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
             }
             else{
                 i=-1;
             }
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
         return i;
    }
    
    public static int searchEmail( RegisterBean rb) throws SQLException{
        int i=0;
        Connection con = null;
         try {
            con=DBConnection.getConnection();
            String quary="select * from Students where email='"+rb.getEmail()+"'";
            Statement pst=con.createStatement();
            ResultSet rs=pst.executeQuery(quary);
            rs.last();
            i=rs.getRow();
            System.out.println("Rows"+i);
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
         finally{
             con.close();
         }
         return i;
    }
    public static RegisterBean search(String uname) {
        Connection con=null;
        RegisterBean rb=new RegisterBean();
        String utype=null;
        try{
            con=DBConnection.getConnection();
            String qry="select * from users where username='"+uname+"'";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(qry);
            while(rs.next()){
                rb.setEmail(rs.getString(2));
                if(rs.getInt(4) == 1){
                    utype="Faculty";
                }
                else{
                    utype="Students";
                }
                
            }
           System.out.println("utype"+utype);
           String qry1="select * from "+utype+" where email='"+uname+"'"; 
           Statement st1=con.createStatement();
           ResultSet rs1=st1.executeQuery(qry1);
           while(rs1.next()){
               rb.setName(rs1.getString(2));
               //rb.setContact(rs1.getLong(4));
           }
            rs.close();
          rs1.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return rb;
    }
}