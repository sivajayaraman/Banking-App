package bean;  
import java.sql.*;  
public class LoginDao {        
    public static boolean validate(LoginBean obj){  
    	boolean status=false;  
		String username=obj.getUsername();
		String password=obj.getPassword();
		String query="select id from login where username= '"+username+"' and password= '"+password+"';";
		//System.out.println(query);
    	try{  
    		Connection con=ConnectionProvider.getCon();     
    		PreparedStatement ps=con.prepareStatement(query);
    		ResultSet rs=ps.executeQuery(); 
    			if(rs.next()){
    				status=true;
    				int id=rs.getInt("id");
    				obj.setId(id);
    				query="select * from account where id="+id+";";
    				ps=con.prepareStatement(query);
    				rs=ps.executeQuery();
    				if(rs.next()){
    					obj.setAccNo(rs.getString("accno"));
    	    			obj.setName(rs.getString("username"));
    	    			obj.setBalance(rs.getFloat("balance"));
    	    			obj.setAddress(rs.getString("address"));
    	    			obj.setPhone(rs.getString("phone"));
    	    			obj.setNetBankingPassword(rs.getString("netpassword"));
    	    			obj.setIntrest(rs.getString("intrest"));
    				}
    			}
    	}catch(Exception e){
    		System.out.print(e);
    	} 
    	return status;   
    }
    public static int depositCash(LoginBean obj){
    	int status=0;  
		try{
    		float balance=obj.getBalance();
    	    float transaction=obj.getTransactionAmount();
    	    float total=balance+transaction;
    	    if(balance<=0){
    	    	return -1;
    	    }
    	    String pswd=obj.getNetBankingPassword();
    		String query="update account set balance="+total+" where id = "+obj.getId()+" and netpassword='"+pswd+"';";
    		Connection con=ConnectionProvider.getCon();
        	PreparedStatement ps=con.prepareStatement(query);
        	ps=con.prepareStatement(query);
    		int m=ps.executeUpdate();
    		if(m==1){
    			obj.setBalance(total);
    			status=1;
    		}
    	}catch(Exception e){
    		System.out.print(e);
    	}
    	return status;
    }
    public static int withdrawCash(LoginBean obj){
    	int status=0;  
		try{
    		float balance=obj.getBalance();
    	    float transaction=obj.getTransactionAmount();
    	    if(transaction<=0){
    	    	return 3;
    	    }
    	    if(transaction>balance){
    	    	return 2;
    	    }
    	    float total=balance-transaction;
    	    String pswd=obj.getNetBankingPassword();
    		String query="update account set balance="+total+" where id = "+obj.getId()+" and netpassword='"+pswd+"';";
    		Connection con=ConnectionProvider.getCon();     
        	PreparedStatement ps=con.prepareStatement(query);
        	ps=con.prepareStatement(query);
    		int m=ps.executeUpdate();
    		if(m==1){
    			obj.setBalance(total);
    			status=1;
    		}
    	}catch(Exception e){
    		System.out.print(e);
    	}
    	return status;
    }
    public static int transactionCash(LoginBean obj){
    	int status=-1;  
		try{  
			String query="select * from account where accno= '"+obj.getAccNo()+"' and netpassword='"+obj.getNetBankingPassword()+"';";
			Connection con=ConnectionProvider.getCon();     
    		PreparedStatement ps=con.prepareStatement(query);
    		ResultSet rs=ps.executeQuery();
    		if(rs.next()){
				float balance=obj.getBalance(),targetBalance;
		    	float transaction=obj.getTransactionAmount();
		    	if(transaction<=0){
		    		return 3;
		    	}
		    	if(transaction>balance){
		    		return 2;
		    	}
				query="select balance from account where accno= '"+obj.getTargetUser()+"';";
	    		ps=con.prepareStatement(query);
	    		rs=ps.executeQuery();
	    		if(rs.next()){
	    			targetBalance=rs.getFloat("balance");
	    			status=0;
	    			float total= targetBalance+transaction;
	    			query="update account set balance="+total+" where accno = '"+ obj.getTargetUser() +"';";
	    			ps=con.prepareStatement(query);
	    			int m=ps.executeUpdate();
	    			total=balance-transaction;
	    			query="update account set balance="+total+" where id = "+ obj.getId() +";";
	    			ps=con.prepareStatement(query);
	    			m=ps.executeUpdate();
	    			if(m==1){
	    				obj.setBalance(total);
	    				status=1;
	    			}
	    		}
    		}
    	}
		catch(Exception e){
    		status=0;
    		System.out.print(e);
    	}
    	return status;
    }
}