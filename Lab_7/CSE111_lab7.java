import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class CSE111_lab7 {
	public static Connection conn = null;
	public static ResultSet rs;
	public static Scanner input   = new Scanner(System.in);
	public static void main(String [] args) throws SQLException {
			System.out.println("MENU");
			Scanner input = new Scanner(System.in);
			try {
				while(true) {
					System.out.println("1. Connect To Database");
					System.out.println("2. Create Table");
					System.out.println("3. New User");
					System.out.println("4. Query 1");
							//Find the supplier with the smallest number of warehouses");
					System.out.println("5. Query 2");
							//Find the maximum warehouse capacity across all the suppliers.");
					System.out.println("6. Query 3");
							//List all the warehouses in EUROPE with capacity smaller tha nX, where X is taken as an input from the user.");
					System.out.println("7. Query 4");
							//For a supplier name given by the user, find whether all its warehouses are capable to fit all its products. ");
					System.out.println("8. Query 5");
							//For a nation given by the user, print all the warehouses in that country, in descending order of their capacity.");
					System.out.println("9. Query 6");
							//Update Warehouse Supplier");
					System.out.println("10. Disconnect to Database");
					//int user_input = 0;
					int user_input = input.nextInt();
					switch(user_input) {
						case 1:
							connect();
							break;
						case 2:
							createtable();
							break;
						case 3:
							newuser(conn, input);
							break;
						case 4:
							query1();
							break;
						case 5:
							query2();
							break;
						case 6:
							query3();
							break;
						case 7:
							query4();
							break;
						case 8:
							query5();
							break;
						case 9:
							query6();
							break;
						case 10:
							close();
							break;
						default:
							System.out.println("Please input a valid menu option");
							break;
					}
				}
			} catch(SQLException e)
		    {
			      System.err.println(e.getMessage());
			    }
			    finally
			    {
			      try
			      {
			        if(conn != null)
			        {
			          input.close();
			          conn.close();
			        }
			      }
			      catch(SQLException e)
			      {
			        System.err.println(e.getMessage());
			      }
			    }
			    input.close();
	}
	
	public static void connect() {
		System.out.println("Connecting to database...");
		try {
			conn = DriverManager.getConnection("jdbc:sqlite:C:/Users/dongj/Desktop/NEWSQUL/SQL/sqlite-tools-win32-x86-3240000/TPCH.db");
			Statement stat = conn.createStatement();
		}
		catch(SQLException e) {
			System.err.println(e.getMessage());
		}
		System.out.println("Connected");
	}
		
	public static void createtable() throws SQLException{
		System.out.println("CREATING database...");
		try {
			Statement stat = conn.createStatement();
			stat.executeUpdate("DROP TABLE IF EXISTS warehouse");
			String toinput = ("CREATE TABLE warehouse (w_warehousekey DECIMAL(3,0) NOT NULL, w_name CHAR(25) NOT NULL, w_supplierkey DECIMAL(2,0) NOT NULL, w_capacity DECIMAL(6,2) NOT NULL, w_address VARCHAR(40) NOT NULL, w_nationkey DECIMAL(2,0) NOT NULL);");
			PreparedStatement stats = conn.prepareStatement(toinput);
			stats.executeUpdate();
			//stat.executeUpdate(toinput);
		}catch(SQLException e) {
			System.err.println(e.getMessage());
		}
		System.out.println("Created");
	}

	public static void newuser(Connection conn, Scanner input) throws SQLException{
		 ResultSet rs = null;
		System.out.println("Input ammount");
		int amount = input.nextInt();
		for(int i =0 ; i<=amount-1; i++) {
			 int suppKey, natKey, wKey = 0;
			 Statement stat = conn.createStatement();
			 String why = input.nextLine();
			    System.out.println("Please enter warehouse name: ");
			    String wName = input.nextLine();
	
			    System.out.println("Please enter supplier name: ");
			    String sName = input.nextLine();
			    rs = stat.executeQuery("select s_suppkey from supplier " + " where s_name = \'"+sName+"\'");
			    if(rs.next())
			    {
			      suppKey = rs.getInt("s_suppkey"); 
			    }else
			    {
			      System.out.println("entry not found");
			      return;
			    }
			    System.out.println("Please enter capacity number: ");
			    int cap = input.nextInt();
			    why = input.nextLine();
	
			    System.out.println("Please enter address: ");
			    String address = input.nextLine();
	
			    System.out.println("Please enter nation: ");
			    String nation = input.nextLine().toUpperCase();
	
			    rs = stat.executeQuery("select n_nationkey from nation where n_name = \'"+nation+"\'");
			    if(rs.next())
			    {
			      natKey = rs.getInt("n_nationkey"); 
			    }else
			    {
			      System.out.println("entry not found");
			      return;
			    }
	
			    PreparedStatement pre= conn.prepareStatement("insert into warehouse " +  " values (?, ?, ?, ?, ?, ?)");
			    		//conn.prepareStatement("INSERT INTO warehouse values ("+ (i+1)+ "," + wName + "," + suppKey +","+ cap +"," + address+ ","+natKey+")");
				 pre.setInt(1, (i+1));
				 pre.setString(2, wName);
				 pre.setInt(3, suppKey);
				 pre.setInt(4, cap);
				 pre.setString(5, address);
				 pre.setInt(6, natKey);
				 pre.executeUpdate();
			
			    System.out.println("Update Executed.");
	
			    //pre.close();
			    stat.close();
		}
	}
	
	//Find the supplier with the smallest number of warehouses.
	public static void query1() throws SQLException {
		System.out.println("Find the supplier with the smallest number of warehouses");
		try {
			Statement stat = conn.createStatement();
			ResultSet rs= stat.executeQuery("SELECT s_name FROM (SELECT w_supplierkey, COUNT(w_name) AS counter FROM warehouse GROUP BY w_supplierkey), supplier WHERE counter IN(SELECT min(counter) FROM(SELECT w_supplierkey, COUNT(w_name) AS counter FROM warehouse GROUP BY w_supplierkey)) AND s_suppkey = w_supplierkey;");
			/*ResultSet rs = stat.executeQuery(""
					+ "SELECT s_name "
					+ "FROM supplier, warehouse "
					+ "WHERE s_suppkey=w_supplierkey "
					+ "GROUP BY s_name "
					+ "HAVING MIN(w_warehousekey)");
					*/
			while(rs.next()) {
				 System.out.println("Supplier NAME:  " + rs.getString("s_name"));
			}
			rs.close();
		}catch(SQLException e) {
			System.err.println(e.getMessage());
		}
	}
	//Find the maximum warehouse capacity across all the suppliers.
	public static void query2() throws SQLException {
		System.out.println("Find the maximum warehouse capacity across all the suppliers.");
		Statement stat = conn.createStatement();
		ResultSet rs = stat.executeQuery(""
				+ "SELECT w_name "
				+ "FROM warehouse "
				+ "WHERE w_capacity=(SELECT MAX(w_capacity) FROM warehouse)");
		while(rs.next()) {
			 System.out.println(rs.getString("w_name"));
		}
		rs.close();
	}
	
	
	//List all the warehouses in EUROPE with capacity smaller than X, where X is taken as an input from the user.
	public static void query3() throws SQLException {
		System.out.println("List all the warehouses in EUROPE with capacity smaller tha nX, where X is taken as an input from the user.");
		System.out.println("Enter the X");
		int x = input.nextInt();
		Statement stat = conn.createStatement();
		ResultSet rs = stat.executeQuery(""
				+ "SELECT w_name "
				+ "FROM warehouse, nation,region "
				+ "WHERE w_nationkey = n_nationkey AND n_regionkey = r_regionkey "
				+ 		"AND r_name ='EUROPE' AND w_capacity < '"+x+"'"
				+ "GROUP BY w_name");
		while(rs.next()) {
			 System.out.println(rs.getString("w_name"));
		}
		rs.close();
	}
	//For a supplier name given by the user,
	//find whether all its warehouses are capable to fit all its products (see ps partsupp).
	public static void query4() throws SQLException {
		System.out.println("For a supplier name given by the user, find whether all its warehouses are capable to fit all its products ");
		System.out.println("Enter the Supplier name");
		String supplier = "'"+input.next()+"'";
		Statement stat = conn.createStatement();
		ResultSet rs = stat.executeQuery(""
				+ "SELECT max(w_capacity) "
				+ "FROM warehouse, supplier "
				+ "WHERE s_suppkey = w_supplierkey and s_name = " + supplier + "");
		int capacity= rs.getInt("MAX(w_capacity)");
		ResultSet rs1 = stat.executeQuery(""
				+ "SELECT max(ps_availqty) "
				+ "FROM partsupp, supplier "
				+ "WHERE s_suppkey = ps_suppkey and s_name = " + supplier + "");
		int product= rs1.getInt("MAX(ps_availqty)");
		
		if(product < capacity) {
			System.out.println("Suppliers are capable to fit all its products");
		}else {
			System.out.println("Suppliers are not able to fit all its products");
		}
		rs.close();
		rs1.close();
	}
	//•For a nation given by the user, print all the warehouses in that country, in descending order of their capacity.
	public static void query5() throws SQLException {
		System.out.println("For a nation given by the user, print all the warehouses in that country, in descending order of their capacity.");
		System.out.println("Enter Nation name");
		String nation;
		nation = "'"+input.next()+"'";
		Statement stat = conn.createStatement();
		ResultSet rs =stat.executeQuery(""
				+ "SELECT w_name "
				+ "FROM warehouse,nation "
				+ "WHERE w_nationkey = n_nationkey AND n_name="+ nation+" "
				+ "ORDER BY w_capacity DESC"); 
		while(rs.next()) {
			 System.out.println(rs.getString("w_name"));
		}
		rs.close();
	}
	//•Supplier#000000002is acquired by Supplier#000000001. 
	//Update the warehouse table to reflect this change in ownership. 
	//The actual names of the suppliers are taken as input from the user,they are not constants.
	
	public static void query6() throws SQLException{
		String supplier1, supplier2;
		System.out.print("Enter the current supplier\n");
		supplier1 = "'"+input.next()+"'";
		System.out.print("Enter the new supplier\n");
		supplier2 = "'"+input.next()+"'";
		PreparedStatement ps = conn.prepareStatement("UPDATE warehouse SET w_supplierkey = "+supplier1+" WHERE w_supplierkey = "+supplier2+";");
		ps.executeUpdate();
		System.out.println("DATA UPDATED");
		
	}

	public static void close() {
		System.out.println("Database disconnected");
		try {
			conn.close();
		}
		  catch(SQLException e)
        {
          System.err.println(e.getMessage());
        }
	}
}

	
