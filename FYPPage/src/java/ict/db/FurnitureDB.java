/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ict.db;

import ict.bean.FurnitureBean;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FurnitureDB {

    private String url = "";
    private String username = "";
    private String password = "";

    public FurnitureDB(String url, String username, String password) {
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
            Logger.getLogger(FurnitureDB.class.getName()).log(Level.SEVERE, null, ex);
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
                    = "CREATE TABLE FURNITURE("
                    + "furnitureId INTEGER CONSTRAINT PK_FURNITURE PRIMARY KEY GENERATED ALWAYS AS IDENTITY(Start with 1, Increment by 1), "
                    + "name VARCHAR(25), price INTEGER, model VARCHAR(2555),"
                    + "RATING INTEGER, STOCK INTEGER,"
                    + "DETAILDESCRIPTION VARCHAR(2555),type VARCHAR(25),IMAGE VARCHAR(2999),description VARCHAR(2555))";
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

    public void InsertFurnitureData() {
        Connection cnnct = null;
        Statement stmnt = null;
        try {
            cnnct = getConnection();  // the connection 
            stmnt = cnnct.createStatement();  // create statement
            String sql
                    = "INSERT INTO APP.FURNITURE1 (\"NAME\", PRICE, MODEL, RATING, STOCK, DETAILDESCRIPTION, \"TYPE\", IMAGE, DESCRIPTION) \n"
                    + "	VALUES ('Sofa', '5999', 'www.', 3, 3, 'The Logan Bi-Sectional balances comfort with a refined, modern style. The back cushions have a unique, channel-stitch detail which creates a subtle play of light and form. Compartmentalized cushions filled with loose-spun poly help to give the feel and comfort of down while maintaining a clean, crisp shape. Every sectional includes 2 sets of legs, allowing you to walnut finished wood legs to suit your style. The sectional is cleverly designed to allow the chaise to be positioned on the left or the right, so it can adapt to any room layout.', 'sofa', NULL, 'size');"
                    + "INSERT INTO APP.FURNITURE1 (\"NAME\", PRICE, MODEL, RATING, STOCK, DETAILDESCRIPTION, \"TYPE\", IMAGE, DESCRIPTION) \n"
                    + "	VALUES ('Carpet', '123', NULL, 5, 4, 'Pro esports players spend full-time hours training at a computer workstation. To stay fresh over long sitting sessions, most use high-end gaming chairs. The best models offer rich ergonomic features, pleasing aesthetics, and superb durability. Even if you’re not an esports pro, these chairs are relevant. As office chairs, these models will help you feel better, sit longer, and be more productive.', 'other', NULL, 'Pro esports players spend full-time hours training at a computer workstation. To stay fresh over long sitting sessions, most use high-end gaming chairs. The best models offer rich ergonomic features, pleasing aesthetics, and superb durability. Even if you’re not an esports pro, these chairs are relevant. As office chairs, these models will help you feel better, sit longer, and be more productive.');"
                    + "INSERT INTO APP.FURNITURE1 (\"NAME\", PRICE, MODEL, RATING, STOCK, DETAILDESCRIPTION, \"TYPE\", IMAGE, DESCRIPTION) \n"
                    + "	VALUES ('Wooden chair', '2233', '', 4, 5, 'The best way to know the qualities of a good computing chair is to test one out. That requires using it full-time for at least a few months. Luckily, top esports pros have already done that work for us. Esports players spend around 10-12 hours of training at their computers every day. That has given gaming chair manufacturers lots of user data to work with. No other type of seating has undergone as much user testing over the past decade', 'chair', NULL, 'The best way to know the qualities of a good computing chair is to test one out. That requires using it full-time for at least a few months. Luckily, top esports pros have already done that work for us. Esports players spend around 10-12 hours of training at their computers every day. That has given gaming chair manufacturers lots of user data to work with. No other type of seating has undergone as much user testing over the past decade');"
                    + "INSERT INTO APP.FURNITURE1 (\"NAME\", PRICE, MODEL, RATING, STOCK, DETAILDESCRIPTION, \"TYPE\", IMAGE, DESCRIPTION) \n"
                    + "	VALUES ('Foldable table', '1111', NULL, 5, 7, 'That’s how we know these gaming chairs hold up well under full-time sitting loads. To keep players performing at their best, these chairs are proven to support good posture and movement while sitting. That helps help players to sit for longer periods — while gaming at peak performance.', 'table', NULL, 'That’s how we know these gaming chairs hold up well under full-time sitting loads. To keep players performing at their best, these chairs are proven to support good posture and movement while sitting. That helps help players to sit for longer periods — while gaming at peak performance.');"
                    + "INSERT INTO APP.FURNITURE1 (\"NAME\", PRICE, MODEL, RATING, STOCK, DETAILDESCRIPTION, \"TYPE\", IMAGE, DESCRIPTION) \n"
                    + "	VALUES ('Lamp', '3120', NULL, 3, 5, 'All gaming chairs come with tall backrests and adjustable support pillows. Pro esports chairs stand apart from cheap models with four essential features.  First, 4D armrests adjust in four directions, giving a full range of support for the arms. Second, a multifunction tilt-lock lets you tilt and lock the seat at angles. Third, cold-cured foam padding provides consistent support. Finally, premium upholstery ensures optimal breathability and durability. The result is consistent, comfortable support that looks and works like new for years.', 'electronic', NULL, 'All gaming chairs come with tall backrests and adjustable support pillows. Pro esports chairs stand apart from cheap models with four essential features.  First, 4D armrests adjust in four directions, giving a full range of support for the arms. Second, a multifunction tilt-lock lets you tilt and lock the seat at angles. Third, cold-cured foam padding provides consistent support. Finally, premium upholstery ensures optimal breathability and durability. The result is consistent, comfortable support that looks and works like new for years.');"
                    + "INSERT INTO APP.FURNITURE1 (\"NAME\", PRICE, MODEL, RATING, STOCK, DETAILDESCRIPTION, \"TYPE\", IMAGE, DESCRIPTION) \n"
                    + "	VALUES ('E-sport chair', '3223', NULL, 4, 4, 'These features serve the needs of the world’s best competitive esports players. They are also a great option for non-gamers. Those include office workers, content creators, and others who spend long periods sitting.', 'chair', NULL, 'These features serve the needs of the world’s best competitive esports players. They are also a great option for non-gamers. Those include office workers, content creators, and others who spend long periods sitting.');"
                    + "INSERT INTO APP.FURNITURE1 (\"NAME\", PRICE, MODEL, RATING, STOCK, DETAILDESCRIPTION, \"TYPE\", IMAGE, DESCRIPTION) \n"
                    + "	VALUES ('Painting', '900', NULL, 3, 2, 'Under full-time sitting conditions, these models excel. Dense foam padding on pro chairs holds up well under heavy use. Pro-class cover fabrics provide optimal breathability without getting clammy. Most important are the adjustments that let players change position on the fly. Changing positions keeps the body in motion while sitting', 'other', NULL, 'Under full-time sitting conditions, these models excel. Dense foam padding on pro chairs holds up well under heavy use. Pro-class cover fabrics provide optimal breathability without getting clammy. Most important are the adjustments that let players change position on the fly. Changing positions keeps the body in motion while sitting');"
                    + "INSERT INTO APP.FURNITURE1 (\"NAME\", PRICE, MODEL, RATING, STOCK, DETAILDESCRIPTION, \"TYPE\", IMAGE, DESCRIPTION) \n"
                    + "	VALUES ('Antique Table', '599', 'black', 5, 10, 'That improves circulation and oxygen intake while helping to distribute stress across various muscle groups. As a result, players can stay fresh over longer sessions, without needing to pause gameplay.', 'table', NULL, 'That improves circulation and oxygen intake while helping to distribute stress across various muscle groups. As a result, players can stay fresh over longer sessions, without needing to pause gameplay.');"
                    + "INSERT INTO APP.FURNITURE1 (\"NAME\", PRICE, MODEL, RATING, STOCK, DETAILDESCRIPTION, \"TYPE\", IMAGE, DESCRIPTION) \n"
                    + "	VALUES ('Tea Table', '699', 'dark wood', 4, 15, 'The time players spend at a computer is intense and mentally taxing. Success in esports demands fine motor skills. Players need elite speed, precision, aim, and hand-eye-coordination. Some games demand as many as 400 actions per minute. That means 400 separate decisions or clicks in under sixty seconds.', 'table', NULL, 'The time players spend at a computer is intense and mentally taxing. Success in esports demands fine motor skills. Players need elite speed, precision, aim, and hand-eye-coordination. Some games demand as many as 400 actions per minute. That means 400 separate decisions or clicks in under sixty seconds.');"
                    + "INSERT INTO APP.FURNITURE1 (\"NAME\", PRICE, MODEL, RATING, STOCK, DETAILDESCRIPTION, \"TYPE\", IMAGE, DESCRIPTION) \n"
                    + "	VALUES ('Wooden Table', '499', 'white', 5, 13, 'Over long periods, these intense demands wear players down. As a result, burnout and mental breakdowns are common. Most pro players start in their teens and retire in their mid-20s.', 'table', NULL, 'Over long periods, these intense demands wear players down. As a result, burnout and mental breakdowns are common. Most pro players start in their teens and retire in their mid-20s.');"
                    + "INSERT INTO APP.FURNITURE1 (\"NAME\", PRICE, MODEL, RATING, STOCK, DETAILDESCRIPTION, \"TYPE\", IMAGE, DESCRIPTION) \n"
                    + "	VALUES ('Ironwood Table', '499', 'walnut', 5, 13, 'That’s why the most successful teams maintain holistic training programs. Players have physical training routines, strict diet guidelines, and proper ergonomic workstations. As the foundation of each pro workstation is a good ergonomic computing chair.', 'table', NULL, 'That’s why the most successful teams maintain holistic training programs. Players have physical training routines, strict diet guidelines, and proper ergonomic workstations. As the foundation of each pro workstation is a good ergonomic computing chair.');"
                    + "INSERT INTO APP.FURNITURE1 (\"NAME\", PRICE, MODEL, RATING, STOCK, DETAILDESCRIPTION, \"TYPE\", IMAGE, DESCRIPTION) \n"
                    + "	VALUES ('Iron Garden Table', '499', 'brown', 5, 14, 'Pro gamers know that a healthy, comfortable body ensures a sharp mind while at a computer. When away from the PC, all computer users need proper rest, nutrition, and exercise. When sat down full-time for work, the quality of the chair has a huge impact on performance. Even for non-gamers, pro chairs yield potent health, wellness, and productivity benefits.', 'table', NULL, 'Pro gamers know that a healthy, comfortable body ensures a sharp mind while at a computer. When away from the PC, all computer users need proper rest, nutrition, and exercise. When sat down full-time for work, the quality of the chair has a huge impact on performance. Even for non-gamers, pro chairs yield potent health, wellness, and productivity benefits.');"
                    + "INSERT INTO APP.FURNITURE1 (\"NAME\", PRICE, MODEL, RATING, STOCK, DETAILDESCRIPTION, \"TYPE\", IMAGE, DESCRIPTION) \n"
                    + "	VALUES ('Antique Mini Table', '499', 'brown', 4, 10, 'Students who do their schoolwork in a gaming chair will be able to focus for longer periods. Office workers can improve mood, vitality, and performance. In fact, everyone who sits full-time at a computer can benefit by using a pro esports gaming chair. That’s because a good gaming chair will let you sit longer, work harder and be more productive.', 'table', NULL, 'Students who do their schoolwork in a gaming chair will be able to focus for longer periods. Office workers can improve mood, vitality, and performance. In fact, everyone who sits full-time at a computer can benefit by using a pro esports gaming chair. That’s because a good gaming chair will let you sit longer, work harder and be more productive.');"
                    + "";
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
            String preQueryStatement = "INSERT  INTO  FURNITURE(NAME, PRICE, MODEL, DESCRIPTION, RATING, STOCK, DETAILDESCRIPTION)  VALUES  (?,?,?,?,?,?,?)"; //v 
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

    public FurnitureBean queryCustByID(String id) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;

        FurnitureBean cb = null;
        try {
            //1.  get Connection
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  FURNITURE WHERE FURNITUREID=?";
            //2.  get the prepare Statement
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //3. update the placehoder with id
            pStmnt.setString(1, id);
            ResultSet rs = null;
            //4. execute the query and assign to the result 
            rs = pStmnt.executeQuery();
            if (rs.next()) {
                cb = new FurnitureBean();
                // set the record detail to the customer bean
                cb = new FurnitureBean();
                cb.setFurnitureId(rs.getString(1));
                cb.setName(rs.getString(2));
                cb.setPrice(rs.getInt(3));
                cb.setModel(rs.getString(4));
                cb.setRating(rs.getInt(5));
                cb.setStock(rs.getInt(6));

                cb.setDetailDescription(rs.getString(7));
                cb.setType(rs.getString(8));
                cb.setImage(rs.getString(9));
                cb.setDescription(rs.getString(10));
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
            String preQueryStatement = "SELECT * FROM  FURNITURE";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                FurnitureBean cb = new FurnitureBean();
                cb.setFurnitureId(rs.getString(1));
                cb.setName(rs.getString(2));
                cb.setPrice(rs.getInt(3));
                cb.setModel(rs.getString(4));
                cb.setRating(rs.getInt(5));
                cb.setStock(rs.getInt(6));
                cb.setDetailDescription(rs.getString(7));
                cb.setImage(rs.getString(8));
                cb.setDescription(rs.getString(9));
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
            String preQueryStatement = "SELECT * FROM  FURNITURE WHERE NAME LIKE ?";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, "%" + name + "%");
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                FurnitureBean cb = new FurnitureBean();
                cb.setFurnitureId(rs.getString(1));
                cb.setName(rs.getString(2));
                cb.setPrice(rs.getInt(3));
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

    public ArrayList queryCustByType(String type) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  FURNITURE WHERE TYPE= ? order by price asc";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, type);
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                FurnitureBean cb = new FurnitureBean();
                cb.setFurnitureId(rs.getString(1));
                cb.setName(rs.getString(2));
                cb.setPrice(rs.getInt(3));
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

    public ArrayList queryFurnitureByTypeDesc(String type) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  FURNITURE WHERE TYPE= ? order by price desc";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, type);
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                FurnitureBean cb = new FurnitureBean();
                cb.setFurnitureId(rs.getString(1));
                cb.setName(rs.getString(2));
                cb.setPrice(rs.getInt(3));
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
    
    public ArrayList queryFurnitureByNameAsc(String type) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  FURNITURE WHERE TYPE= ? order by name";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, type);
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                FurnitureBean cb = new FurnitureBean();
                cb.setFurnitureId(rs.getString(1));
                cb.setName(rs.getString(2));
                cb.setPrice(rs.getInt(3));
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
    
    public ArrayList queryFurnitureByNameDesc(String type) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  FURNITURE WHERE TYPE= ? order by name desc";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, type);
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                FurnitureBean cb = new FurnitureBean();
                cb.setFurnitureId(rs.getString(1));
                cb.setName(rs.getString(2));
                cb.setPrice(rs.getInt(3));
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
    
    public ArrayList queryFurnitureByPrice() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM FURNITURE ORDER BY price";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //pStmnt.setString(1, action);
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                FurnitureBean cb = new FurnitureBean();
                cb.setFurnitureId(rs.getString(1));
                cb.setName(rs.getString(2));
                cb.setPrice(rs.getInt(3));
                cb.setModel(rs.getString(4));
                cb.setRating(rs.getInt(5));
                cb.setStock(rs.getInt(6));
                cb.setDetailDescription(rs.getString(7));
                cb.setImage(rs.getString(8));
                cb.setDescription(rs.getString(9));
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

    public ArrayList queryFurnitureByPriceDesc() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM FURNITURE ORDER BY price desc";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //pStmnt.setString(1, action);
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                FurnitureBean cb = new FurnitureBean();
                cb.setFurnitureId(rs.getString(1));
                cb.setName(rs.getString(2));
                cb.setPrice(rs.getInt(3));
                cb.setModel(rs.getString(4));
                cb.setRating(rs.getInt(5));
                cb.setStock(rs.getInt(6));
                cb.setDetailDescription(rs.getString(7));
                cb.setImage(rs.getString(8));
                cb.setDescription(rs.getString(9));
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

    public ArrayList queryFurnitureByName() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM FURNITURE ORDER BY name";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //pStmnt.setString(1, action);
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                FurnitureBean cb = new FurnitureBean();
                cb.setFurnitureId(rs.getString(1));
                cb.setName(rs.getString(2));
                cb.setPrice(rs.getInt(3));
                cb.setModel(rs.getString(4));
                cb.setRating(rs.getInt(5));
                cb.setStock(rs.getInt(6));
                cb.setDetailDescription(rs.getString(7));
                cb.setImage(rs.getString(8));
                cb.setDescription(rs.getString(9));
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
    
    public ArrayList queryFurnitureByNameDesc() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM FURNITURE ORDER BY name desc";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //pStmnt.setString(1, action);
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                FurnitureBean cb = new FurnitureBean();
                cb.setFurnitureId(rs.getString(1));
                cb.setName(rs.getString(2));
                cb.setPrice(rs.getInt(3));
                cb.setModel(rs.getString(4));
                cb.setRating(rs.getInt(5));
                cb.setStock(rs.getInt(6));
                cb.setDetailDescription(rs.getString(7));
                cb.setImage(rs.getString(8));
                cb.setDescription(rs.getString(9));
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
            String preQueryStatement = "DELETE FROM FURNITURE WHERE FURNITUREID=?";
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

    public int editRecord(FurnitureBean cb) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "UPDATE FURNITURE SET NAME=? ,PRICE=? ,MODEL=? , STOCK=?, DESCRIPTION=? WHERE FURNITUREID=?";
            pStmnt = cnnct.prepareStatement(preQueryStatement);

            pStmnt.setString(1, cb.getName());
            pStmnt.setInt(2, cb.getPrice());
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

    public int dropCustTable() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "DROP TABLE FURNITURE";
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
