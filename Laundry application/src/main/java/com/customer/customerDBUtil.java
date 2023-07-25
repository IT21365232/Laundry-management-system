package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class customerDBUtil {

   private static boolean isSuccess;
   private static Connection con =null;
   private static Statement stmt = null;
   private static ResultSet rs = null;
	
   public static List<Customer> validate(String username,String password){
	   
	   ArrayList<Customer> cus = new ArrayList<>();
	   
	   
	   try {
		   
		   con = DBConnect.getConnection(); 
		   stmt = con.createStatement();
		   
		   String sql = "select * from customer where username='"+username+"'and password='"+password+"'";
		   
	       rs = stmt.executeQuery(sql);
	       
	       
	       if(rs.next()) {
	    	   
	    	   int id = rs.getInt(1);
	    	   String name = rs.getString(2);
	    	   String address = rs.getString(3);
	    	   String phone = rs.getString(4);
	    	   String email =rs.getString(5);
	    	   String userN = rs.getString(6);
	    	   String passw = rs.getString(7);
	    	   
	    	   Customer c = new Customer(id,name,address,phone,email,userN,passw);
	           cus.add(c);
	       
	       }
	   
	   }
	   catch(Exception e){
		   e.printStackTrace();
		   
	   }
	    
	   return cus;
	   
   }
   
   
   public static boolean insertcustomer(String name,String address,String phone,String email,String uname,String pwd) {
	   
       boolean isSuccess = false;
       
       
	   
	   
	   try {
           
		   con = DBConnect.getConnection();
		   stmt = con.createStatement();
		   
		   
		   String sql = "insert into customer values(0,'"+name+"','"+address+"','"+phone+"','"+email+"','"+uname+"','"+pwd+"')";
		   
		   int rs = stmt.executeUpdate(sql);
		   
		   
		   if(rs>0) {
			   
			   isSuccess = true;
		   }
		   else {
			   isSuccess = false;
		   }
	   }
	   catch(Exception e) {
		   e.printStackTrace(); 
		   
	   }
       
       
       return isSuccess;
	   
   }
   
public static boolean updatecustomer(String id,String name,String address,String phone,String email,String username,String password){
	   
	   try {
		   
		   con = DBConnect.getConnection();
		   stmt = con.createStatement();
		   
		   String sql = "update customer set nameCust='"+name+"',addressCust='"+address+"',phone='"+phone+"',email='"+email+"',username='"+username+"',password='"+password+"'"
		   + "where idCust='"+id+"'";
		   
		   int rs = stmt.executeUpdate(sql);
		   
		   if(rs > 0) {
			   
			   isSuccess = true;
		   }
		   else {
			   isSuccess = false;
		   }
		   
		   
	   }
	   catch(Exception e) {
		   
		   e.printStackTrace();
	   }
	   
	   return isSuccess;
	   
   }
   
   public static List<Customer> getCustomerDetails(String Id){
	   
	   int convertedID = Integer.parseInt(Id);
	   ArrayList<Customer> cus = new ArrayList<>();
	   
	   try {
		   
		   con = DBConnect.getConnection();
		   stmt = con.createStatement();
		   String sql = "select * from customer where idCust='"+convertedID+"'";
		   rs = stmt.executeQuery(sql);
		   
		   while(rs.next()) {
			   int id = rs.getInt(1);
			   String name = rs.getString(2);
			   String address = rs.getString(3);
			   String phone = rs.getString(4);
			   String email = rs.getString(5);
			   String username = rs.getString(6);
			   String password = rs.getString(7);
		
		      Customer c = new Customer(id,name,address,phone,email,username,password);
		      cus.add(c);
		   }
		   
	   }
	   catch(Exception e){
		   e.printStackTrace();
	   }
	   
	   return cus;
	   
   }
   
   public static boolean deleteCustomer(String id) {
	   
	   int convId = Integer.parseInt(id);
	   
	   
	   try {
		   
		   con = DBConnect.getConnection();
		   stmt = con.createStatement();
		   String sql = "delete from customer where idCust='"+convId+"'";
		   int r = stmt.executeUpdate(sql);
		   
		   if(r > 0 ) {
			   
			   isSuccess = true;
		   }
		   else {
			   
			   isSuccess = false;
		   }
		   
	   }
	   catch(Exception e) {
		   
		   e.printStackTrace();
		   
	   }
	   
	   return isSuccess;
   }
   
   
   

}
