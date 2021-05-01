package ict.db;

import ict.bean.UserInfo;
import java.io.IOException;
import java.sql.*;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return DriverManager.getConnection(url, username, password);
    }

    public void createUserInfoTable() {
        Connection cnnct = null;
        Statement stmnt = null;

        try {
            cnnct = getConnection();  // the connection 
            stmnt = cnnct.createStatement();  // create statement

            String sql
                    = "CREATE TABLE USERINFO ("
                    + "UserId INTEGER CONSTRAINT PK_USERINFO PRIMARY KEY GENERATED ALWAYS AS IDENTITY(Start with 1, Increment by 1),"
                    + "username varchar(25),"
                    + "password varchar(100),"
                    + "position VARCHAR(10),"
                    + "tel VARCHAR(10))";

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
            String preQueryStatement = "SELECT * FROM  USERINFO WHERE username =  ? and  password =  ?";
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
    
    public boolean existUser(String user) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        boolean exist = false;

        try {
            //1.  get Connection
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  USERINFO WHERE username =  ?";
            //2.  get the prepare Statement
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //3. update the placehoder with id
            pStmnt.setString(1, user);
            ResultSet rs = null;
            //4. execute the query and assign to the result 
            rs = pStmnt.executeQuery();

            if (rs.next()) {
                exist = true;
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
        return exist;
    }
    
    public boolean addUser(String username, String password, String position, String tel) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        boolean isSuccess = false;
        try {
            cnnct = getConnection();
            String preQueryStatement = "INSERT  INTO  userinfo(USERNAME, PASSWORD, POSITION, TEL) VALUES  (?,?,?,?)";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, username);
            pStmnt.setString(2, password);
            pStmnt.setString(3, position);
            pStmnt.setString(4, tel);

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
    public UserInfo getUser(String username) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;

        UserInfo user = null;
        try {

            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM USERINFO WHERE USERNAME = ?";

            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, username);
            ResultSet rs = null;
            rs = pStmnt.executeQuery();
            if (rs.next()) {
                user = new UserInfo();
                user.setUsername(rs.getString(2));
                user.setPassword(rs.getString(3));
                user.setPosition(rs.getString(4));
                user.setTel(rs.getString(5));
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
        return user;
    }
    
        public void editUser(UserInfo user) {
        Connection cnnct = null;
        Statement stmnt = null;
        PreparedStatement pStmnt = null;
        
        try {
            cnnct = getConnection();
            stmnt = cnnct.createStatement();
            String preQueryStatement = "UPDATE USERINFO SET PASSWORD = ?, TEL = ? WHERE USERNAME = ?";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, user.getPassword());
            pStmnt.setString(2, user.getTel());
            pStmnt.setString(3, user.getUsername());
            pStmnt.executeUpdate();
            
            stmnt.close();
            cnnct.close();
        } catch(SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch(IOException ex) {
            ex.printStackTrace();
        }
    }
}
