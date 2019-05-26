package bean;

public class LoginBean {  
	private String username,password,user,accNo,phone,address,intrest,netPassword,targetUser;
	private int id;
	private float balance,transactionAmount;
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}
	public String getUsername() {  
		return username;  
	}
	public void setUsername(String username) {  
		this.username=username; 
	}
	public String getPassword() {  
		return password;  
	}
	public void setPassword(String password) {  
		this.password=password;  
	}
	public String getName() {  
		return user;  
	}
	public void setName(String name) {
		this.user=name;  
	}
	public String getAccNo() {  
		return accNo;  
	}
	public void setAccNo(String accNo) {  
		  this.accNo=accNo;
	}
	public float getBalance() {  
		return balance;  
	}
	public void setBalance(float balance) {  
		this.balance=balance;  
	}
	public String getPhone() {  
		return phone;  
	}
	public void setPhone(String phone) {  
		this.phone=phone;  
	}
	public String getAddress() {  
		return address;  
	}
	public void setAddress(String address) {  
		this.address=address; 
	}
	public String getIntrest() {  
		return intrest;  
	}
	public void setIntrest(String intrest) {  
		this.intrest=intrest;  
	}
	public void setNetBankingPassword(String password){
		this.netPassword=password;
	}
	public String getNetBankingPassword(){
		return netPassword;
	}
	public void setTransactionAmount(float amount){
		this.transactionAmount=amount;
	}
	public float getTransactionAmount(){
		return transactionAmount;
	}
	public void setTargetUser(String account){
		this.targetUser=account;
	}
	public String getTargetUser(){
		return targetUser;
	}
}