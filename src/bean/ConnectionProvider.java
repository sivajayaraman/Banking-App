package bean;  
import java.sql.*;  
import static bean.Provider.*;       
public class ConnectionProvider {  
    private static Connection con=null;  
    static{  
    	try{  
    		Class.forName(DRIVER);  
    		con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);
    		//System.out.print("Connected\n");
    	}
    	catch(Exception e){
    		//System.out.print(e);
    	}  
    }    
    public static Connection getCon(){  
    	//System.out.print("Connection returned\n");
        return con;  
    }  
}