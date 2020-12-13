package ict.db;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;


public class UserDB {

    private String url = "";
    private String username = "";
    private String password = "";

    public UserDB(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;
    }

    public Connection getConnection() throws SQLException, IOException {
        // System.setProperty("jdbc.drivers", "com.mysql.jdbc.Driver");
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return DriverManager.getConnection(url, username, password);
    }

    public boolean addUser(String id, String username, String password) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        boolean isSuccess = false;
        try {
            cnnct = getConnection();
            String preQueryStatement = "INSERT  INTO  userinfo  VALUES  (?,?,?)";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, id);
            pStmnt.setString(2, username);
            pStmnt.setString(3, password);

            int rowCount = pStmnt.executeUpdate();
            if (rowCount >= 1) {
                isSuccess = true;
            }
            pStmnt.close();
            cnnct.close();
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return isSuccess;
    }

    public void createUserInfoTable() {
        Connection cnnct = null;
        Statement stmnt = null;

        try {
            cnnct = getConnection();  // the connection 
            stmnt = cnnct.createStatement();  // create statement
            /*
             String sql = "CREATE  TABLE  USERINFO  ("
             + "UserId  VARCHAR(5)  CONSTRAINT  PK_USER  PRIMARY  KEY,  "
             + "username  VARCHAR(25),  password  VARCHAR(100))";
             */

            String sql
                    = "CREATE TABLE USERINFO ("
                    + "UserId varchar(5) CONSTRAINT PK_USERINFO PRIMARY KEY,"
                    + "username varchar(25),"
                    + "password varchar(100)"
                    + ")";
            /* String sql
                    = "CREATE TABLE IF NOT EXISTS USERINFO ("
                    + "UserId varchar(5)  NOT NULL,"
                    + "username varchar(25) NOT NULL,"
                    + "password varchar(100) NOT NULL,"
                    + "PRIMARY KEY (UserId)"
                    + ")";*/
            
 /*"CREATE TABLE CUSTOMER("
                    + "CustId VARCHAR(5) CONSTRAINT PK_CUSTOMER PRIMARY KEY, "
                    + "Name VARCHAR(25), Tel VARCHAR(10), Age INTEGER)";
            
                        String sql
                    = "CREATE TABLE IF NOT EXISTS USERINFO ("
                    + "UserId varchar(5) CONSTRAINT PK_USERINFO PRIMARY KEY,"
                    + "username varchar(25),"
                    + "password varchar(100),"
                    + "PRIMARY KEY (UserId)"
                    + ")";
             */

            stmnt.execute(sql);

            stmnt.close();
            cnnct.close();
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    public boolean isValidUser(String user, String pwd) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        boolean isValid = false;

        try {
            //1.  get Connection
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  USERINFO WHERE "
                    ;
            //2.  get the prepare Statement
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //3. update the placehoder with id
            pStmnt.setString(1, user); 
            pStmnt.setString(2, pwd);
            ResultSet rs = null;
            //4. execute the query and assign to the result 
            rs = pStmnt.executeQuery();

            if (rs.next()) {
                isValid = true;
            }

            pStmnt.close();
            cnnct.close();
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return isValid;
    }
}
