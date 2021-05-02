/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.db;

import ict.bean.ShoppingCartBean;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ShoppingCartDB {

    private String url = "";
    private String username = "";
    private String password = "";

    public ShoppingCartDB(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;
    }

    public Connection getConnection() throws SQLException, IOException {
        try {
            //    System.setProperty("jdbc.drivers", "com.mysql.jdbc.Driver");
            //System.setProperty("jdbc.drivers", "com.mysql.jdbc.Driver");

            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ShoppingCartDB.class.getName()).log(Level.SEVERE, null, ex);
        }

        return DriverManager.getConnection(url, username, password);
    }

    public void createDB(String createDB) {
        Connection cnnct = null;
        Statement stmnt = null;

        try {
            cnnct = getConnection();  // the connection 
            stmnt = cnnct.createStatement();  // create statement

            String sql
                    = "CREATE DATABASE " + createDB;
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

    public void createBorrowTable() {
        Connection cnnct = null;
        Statement stmnt = null;
        try {
            cnnct = getConnection();  // the connection 
            stmnt = cnnct.createStatement();  // create statement
            String sql
                    = "CREATE TABLE SHOPPINGCART("
                    + "CARTID INTEGER CONSTRAINT PK_SHOPPINGCART PRIMARY KEY GENERATED ALWAYS AS IDENTITY(Start with 1, Increment by 1), "
                    + "FURNITUREID VARCHAR(25),"
                    + "USERID VARCHAR(25),"
                    + "ITEM VARCHAR(25))";

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

   

    public boolean addRecordTech(String sid, String Equipid, String name, String ovdDate, String brwDate, String status) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        boolean isSuccess = false;
        try {
            cnnct = getConnection();
            String preQueryStatement = "INSERT  INTO  SHOPPINGCART (STDID,EQUIPID,BRWITEM,OVDDATE,STATUS,BRWDATE) VALUES  (?,?,?,?,?,?)";
            pStmnt = cnnct.prepareStatement(preQueryStatement);

            pStmnt.setString(1, sid);
            pStmnt.setString(2, Equipid);
            pStmnt.setString(3, name);
            pStmnt.setString(4, ovdDate);
            pStmnt.setString(5, status);
            pStmnt.setString(6, brwDate);
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

    public String UsageRateYear(String id) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;

        String UsageRate = null;
        float count = 0;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT {fn timestampdiff(SQL_TSI_DAY, BRWDATE, OVDDATE)} as DAYS "
                    + "FROM SHOPPINGCART "
                    + "WHERE EQUIPID = ? ";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, id);

            ResultSet rs = null;
            rs = pStmnt.executeQuery();
            while (rs.next()) {
                count = count + rs.getInt(1);
            }
            if (count != 0) {
                count = (count / 360) * 100;
                count = (float) (Math.round(count * 100)) / 100;
            }
            UsageRate = String.valueOf(count);
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
        return UsageRate;
    }

    public double UsageRateMonth(String id) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;

        String UsageRate = null;
        double count = 0;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT {fn timestampdiff(SQL_TSI_DAY, BRWDATE, OVDDATE)} as DAYS "
                    + "FROM SHOPPINGCART "
                    + "WHERE EQUIPID = ? ";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, id);

            ResultSet rs = null;
            rs = pStmnt.executeQuery();
            while (rs.next()) {
                count = count + rs.getInt(1);
            }
            if (count != 0) {
                count = (count / 360) * 12;
                count = (double) (Math.round(count * 100)) / 100;
            }
            UsageRate = String.valueOf(count);
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
        return count;
    }

    public ArrayList<ShoppingCartBean> queryStudent(String id) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;

        ShoppingCartBean bb = null;
        ArrayList<ShoppingCartBean> bbName = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM SHOPPINGCART WHERE STDID = ?";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, id);

            ResultSet rs = null;
            rs = pStmnt.executeQuery();
            bbName = new ArrayList();
            while (rs.next()) {
                bb = new ShoppingCartBean();
                bb.setCartID(rs.getString(1));
                bb.setUserID(rs.getString(2));
                bb.setFurnitureId(rs.getString(3));
                bb.setItem(rs.getString(4));
                
                
                
                bbName.add(bb);
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
        return bbName;
    }

    public ArrayList<ShoppingCartBean> overdueItemStudent(String id) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;

        ShoppingCartBean bb = null;
        ArrayList<ShoppingCartBean> bbName = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM SHOPPINGCART "
                    + "WHERE OVDDATE<=CURRENT_DATE AND STATUS != 'Borrowed' AND STDID = ? "
                    + "ORDER BY OVDDATE DESC";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, id);

            ResultSet rs = null;
            rs = pStmnt.executeQuery();
            bbName = new ArrayList();
            while (rs.next()) {
                bb = new ShoppingCartBean();
                bb.setCartID(rs.getString(1));
                bb.setUserID(rs.getString(2));
                bb.setFurnitureId(rs.getString(3));
                bb.setItem(rs.getString(4));
                
                
                
                bbName.add(bb);
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
        return bbName;
    }

    public ShoppingCartBean queryCustByID(String id) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;

        ShoppingCartBean cb = null;
        try {
            //1.  get Connection
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  SHOPPINGCART WHERE BRWID=?";
            //2.  get the prepare Statement
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //3. update the placehoder with id
            pStmnt.setString(1, id);
            ResultSet rs = null;
            //4. execute the query and assign to the result 
            rs = pStmnt.executeQuery();
            if (rs.next()) {
                cb = new ShoppingCartBean();
                cb.setCartID(rs.getString(1));
                cb.setUserID(rs.getString(2));
                cb.setFurnitureId(rs.getString(3));
                cb.setItem(rs.getString(4));
                
                
                
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
        return cb;
    }

    public ArrayList queryCustByID1(String name) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
           // String preQueryStatement = "SELECT * FROM  SHOPPINGCART WHERE STDID=? ORDER BY OVDDATE DESC";
          String preQueryStatement = "SELECT * FROM  SHOPPINGCART WHERE USERID=?"; //changed to 1 
                    //String preQueryStatement = "SELECT * FROM  SHOPPINGCART WHERE USERID=''"; //cannot get the user id
           //String preQueryStatement = "SELECT * FROM  SHOPPINGCART"; //changed to 1 
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, name); //warning 
            Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                ShoppingCartBean cb = new ShoppingCartBean();
                cb.setCartID(rs.getString(1));
                cb.setUserID(rs.getString(3));
                cb.setFurnitureId(rs.getString(2));
                cb.setItem(rs.getString(4));
                
                
                
                list.add(cb);
            }
            return list;
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (pStmnt != null) {
                try {
                    pStmnt.close();
                } catch (SQLException e) {
                }
            }
            if (cnnct != null) {
                try {
                    cnnct.close();
                } catch (SQLException sqlEx) {
                }
            }
        }
        return null;
    }

    public ArrayList queryCustByOvdDate() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  SHOPPINGCART WHERE OVDDATE<=CURRENT_DATE ORDER BY OVDDATE DESC";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                ShoppingCartBean cb = new ShoppingCartBean();
                cb.setCartID(rs.getString(1));
                cb.setUserID(rs.getString(2));
                cb.setFurnitureId(rs.getString(3));
                cb.setItem(rs.getString(4));
                
                
                
                list.add(cb);
            }
            return list;
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (pStmnt != null) {
                try {
                    pStmnt.close();
                } catch (SQLException e) {
                }
            }
            if (cnnct != null) {
                try {
                    cnnct.close();
                } catch (SQLException sqlEx) {
                }
            }
        }
        return null;
    }

    public ArrayList queryCustByOvdDateStudent(String id) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  SHOPPINGCART WHERE OVDDATE<=CURRENT_DATE AND STATUS='Overdue' AND STDID = ?";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, id);
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                ShoppingCartBean cb = new ShoppingCartBean();
                cb.setCartID(rs.getString(1));
                cb.setUserID(rs.getString(2));
                cb.setFurnitureId(rs.getString(3));
                cb.setItem(rs.getString(4));
                
                
                
                list.add(cb);
            }
            return list;
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (pStmnt != null) {
                try {
                    pStmnt.close();
                } catch (SQLException e) {
                }
            }
            if (cnnct != null) {
                try {
                    cnnct.close();
                } catch (SQLException sqlEx) {
                }
            }
        }
        return null;
    }

    public ArrayList queryCust() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  SHOPPINGCART WHERE STATUS = 'Waiting'";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                ShoppingCartBean cb = new ShoppingCartBean();
                cb.setCartID(rs.getString(1));
                cb.setUserID(rs.getString(2));
                cb.setFurnitureId(rs.getString(3));
                cb.setItem(rs.getString(4));
                
                
                
                list.add(cb);
            }
            return list;
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (pStmnt != null) {
                try {
                    pStmnt.close();
                } catch (SQLException e) {
                }
            }
            if (cnnct != null) {
                try {
                    cnnct.close();
                } catch (SQLException sqlEx) {
                }
            }
        }
        return null;
    }

    public ArrayList queryCustStudent() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  SHOPPINGCART";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                ShoppingCartBean cb = new ShoppingCartBean();
                cb.setCartID(rs.getString(1));
                cb.setItem(rs.getString(2));
                //cb.setOvedDate(rs.getString(3));
                //cb.setStatus(rs.getString(4));
                list.add(cb);
            }
            return list;
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (pStmnt != null) {
                try {
                    pStmnt.close();
                } catch (SQLException e) {
                }
            }
            if (cnnct != null) {
                try {
                    cnnct.close();
                } catch (SQLException sqlEx) {
                }
            }
        }
        return null;
    }

    public ArrayList queryCustByName(String name) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  SHOPPINGCART WHERE BRWITEM LIKE ?";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, "%" + name + "%");
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                ShoppingCartBean cb = new ShoppingCartBean();
                cb.setCartID(rs.getString(1));
                cb.setItem(rs.getString(2));
                //cb.setOvedDate(rs.getString(3));
                //cb.setStatus(rs.getString(4));
                list.add(cb);
            }
            return list;
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (pStmnt != null) {
                try {
                    pStmnt.close();
                } catch (SQLException e) {
                }
            }
            if (cnnct != null) {
                try {
                    cnnct.close();
                } catch (SQLException sqlEx) {
                }
            }
        }
        return null;
    }

    public ArrayList queryCustByAVAILABILITY(String tel) {//no need
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  SHOPPINGCART WHERE AVAILABILITY=?";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, tel);
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                ShoppingCartBean cb = new ShoppingCartBean();
                /*cb.setCustid(rs.getString(1));
                cb.setName(rs.getString(2));
                cb.setTel(rs.getString(3));
                cb.setAge(rs.getString(4));*/
                list.add(cb);
            }
            return list;
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (pStmnt != null) {
                try {
                    pStmnt.close();
                } catch (SQLException e) {
                }
            }
            if (cnnct != null) {
                try {
                    cnnct.close();
                } catch (SQLException sqlEx) {
                }
            }
        }
        return null;
    }
 public boolean addRecord(String furnitureId,String userID) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        boolean isSuccess = false;
        try {
            cnnct = getConnection();
            String preQueryStatement = "INSERT  INTO  SHOPPINGCART (furnitureId,userID) VALUES  (?,?)";
            pStmnt = cnnct.prepareStatement(preQueryStatement);

            pStmnt.setString(1, furnitureId);
            pStmnt.setString(2, userID);

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
 
    public boolean delRecord(String furnitureId,String userID) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
           boolean isSuccess = false;
        try {
            cnnct = getConnection();
            //String preQueryStatement = "DELETE FROM SHOPPINGCART (furnitureId,userID) VALUES  (?,?)";
            String preQueryStatement = "DELETE FROM SHOPPINGCART WHERE furnitureId = ? and userID = ?";
           // String preQueryStatement = "INSERT  INTO  SHOPPINGCART (furnitureId,userID) VALUES  (?,?)";
            pStmnt = cnnct.prepareStatement(preQueryStatement);

            pStmnt.setString(1, furnitureId);
            pStmnt.setString(2, userID);

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

    /*public int editRecord(ShoppingCartBean cb) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "UPDATE SHOPPINGCART SET STDID=? ,BRWITEM=? ,OVDDATE=?,STATUS=? WHERE BRWID=?";
            pStmnt = cnnct.prepareStatement(preQueryStatement);

            pStmnt.setString(1, cb.getStdID());
            pStmnt.setString(2, cb.getBrwItem());
            pStmnt.setString(3, cb.getOvedDate());
            pStmnt.setString(4, cb.getStatus());
            pStmnt.setString(5, cb.getBrwID());
            
            int rs = pStmnt.executeUpdate();
            return rs;
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (pStmnt != null) {
                try {
                    pStmnt.close();
                } catch (SQLException e) {
                }
            }
            if (cnnct != null) {
                try {
                    cnnct.close();
                } catch (SQLException sqlEx) {
                }
            }
        }
        return 0;
    }*/

    public int editRecordWaitingToAccepted(String custId) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "UPDATE SHOPPINGCART SET STATUS='Borrowing' WHERE BRWID=?";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, custId);

            int rs = pStmnt.executeUpdate();
            return rs;
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (pStmnt != null) {
                try {
                    pStmnt.close();
                } catch (SQLException e) {
                }
            }
            if (cnnct != null) {
                try {
                    cnnct.close();
                } catch (SQLException sqlEx) {
                }
            }
        }
        return 0;
    }

    public int editRecordWaitingToDecline(String custId) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "UPDATE SHOPPINGCART SET STATUS='DECLINE' WHERE BRWID=?";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, custId);

            int rs = pStmnt.executeUpdate();
            return rs;
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (pStmnt != null) {
                try {
                    pStmnt.close();
                } catch (SQLException e) {
                }
            }
            if (cnnct != null) {
                try {
                    cnnct.close();
                } catch (SQLException sqlEx) {
                }
            }
        }
        return 0;
    }

    public int dropCustTable() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "DROP TABLE SHOPPINGCART";
            Statement s = cnnct.createStatement();
            int rs = s.executeUpdate(preQueryStatement);
            return rs;
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (pStmnt != null) {
                try {
                    pStmnt.close();
                } catch (SQLException e) {
                }
            }
            if (cnnct != null) {
                try {
                    cnnct.close();
                } catch (SQLException sqlEx) {
                }
            }
        }
        return 0;
    }
    
    public int dropAllRecord() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "DELETE FROM SHOPPINGCART";
            Statement s = cnnct.createStatement();
            int rs = s.executeUpdate(preQueryStatement);
            return rs;
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (pStmnt != null) {
                try {
                    pStmnt.close();
                } catch (SQLException e) {
                }
            }
            if (cnnct != null) {
                try {
                    cnnct.close();
                } catch (SQLException sqlEx) {
                }
            }
        }
        return 0;
    }
}
