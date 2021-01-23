/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.db;

import ict.bean.InteriorDesignBean;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class InteriorDesignDB {

    private String url = "";
    private String username = "";
    private String password = "";

    public InteriorDesignDB(String url, String username, String password) {
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
            Logger.getLogger(InteriorDesignDB.class.getName()).log(Level.SEVERE, null, ex);
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

    public void createCustTable() {
        Connection cnnct = null;
        Statement stmnt = null;
        try {
            cnnct = getConnection();  // the connection 
            stmnt = cnnct.createStatement();  // create statement
            String sql
                    = "CREATE TABLE INTERIORDESIGN("
                    + "ID INTEGER CONSTRAINT PK_INTERIORDESIGN PRIMARY KEY GENERATED ALWAYS AS IDENTITY(Start with 1, Increment by 1), "
                    + "TITLE VARCHAR(25),"
                    + "DESCRIPTION VARCHAR(2550))"
                   ;
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

    public boolean addRecord(String name, String price, String model, String description, int rating, int stock, String detail) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        boolean isSuccess = false;
        try {
            cnnct = getConnection();
            String preQueryStatement = "INSERT  INTO  INTERIORDESIGN(NAME, PRICE, MODEL, DESCRIPTION, RATING, STOCK, DETAILDESCRIPTION)  VALUES  (?,?,?,?,?,?,?)"; //v 
            pStmnt = cnnct.prepareStatement(preQueryStatement); //SET NAME=? ,PRICE=? ,MODEL=?

            pStmnt.setString(1, name); //?
            pStmnt.setString(2, price);
            pStmnt.setString(3, model);
            pStmnt.setString(4, description);
            pStmnt.setInt(5, rating);//?
            pStmnt.setInt(6, stock);
            pStmnt.setString(7, detail);
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

    public InteriorDesignBean queryCustByID(String id) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;

        InteriorDesignBean cb = null;
        try {
            //1.  get Connection
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  INTERIORDESIGN WHERE ID=?";
            //2.  get the prepare Statement
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //3. update the placehoder with id
            pStmnt.setString(1, id);
            ResultSet rs = null;
            //4. execute the query and assign to the result 
            rs = pStmnt.executeQuery();
            if (rs.next()) {
                cb = new InteriorDesignBean();
                cb.setID(rs.getString(1));
                cb.setDescription(rs.getString(2));
                cb.setTitle(rs.getString(3));
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

    public ArrayList queryCust() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  INTERIORDESIGN";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                InteriorDesignBean cb = new InteriorDesignBean();
                cb.setID(rs.getString(1));
                cb.setDescription(rs.getString(2));
                cb.setTitle(rs.getString(3));
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
/*
    public ArrayList queryCustByName(String name) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  INTERIORDESIGN WHERE NAME LIKE ?";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, "%" + name + "%");
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                InteriorDesignBean cb = new InteriorDesignBean();
                cb.setFurnitureId(rs.getString(1));
                cb.setName(rs.getString(2));
                cb.setPrice(rs.getString(3));
                cb.setModel(rs.getString(4));
                cb.setDescription(rs.getString(5));
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
 
   

    public int delRecord(String custId) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "DELETE FROM INTERIORDESIGN WHERE INTERIORDESIGNID=?";
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

    public int editRecord(InteriorDesignBean cb) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "UPDATE INTERIORDESIGN SET NAME=? ,PRICE=? ,MODEL=? , STOCK=?, DESCRIPTION=? WHERE INTERIORDESIGNID=?";
            pStmnt = cnnct.prepareStatement(preQueryStatement);

            pStmnt.setString(1, cb.getName());
            pStmnt.setString(2, cb.getPrice());
            pStmnt.setString(3, cb.getModel());
            pStmnt.setInt(4, cb.getStock());
            pStmnt.setString(5, cb.getDescription());
            pStmnt.setString(6, cb.getFurnitureId());
            //Statement s = cnnct.createStatement();
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
*/
    public int dropCustTable() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "DROP TABLE INTERIORDESIGN";
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
