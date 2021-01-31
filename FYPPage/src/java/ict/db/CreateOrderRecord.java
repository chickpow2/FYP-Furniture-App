package ict.db;
public class CreateOrderRecord {
    public static void main(String arg[]) {

        String url = "jdbc:derby://localhost:1527/ITP4912_DB";
        String username = "APP";
        String password = "APP";

        OrderRecordDB ORDB = new OrderRecordDB(url, username, password);
        ORDB.createOrderTable();
        ORDB.createORTable();
      

        
    }
}
