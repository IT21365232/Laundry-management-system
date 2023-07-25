package com.customer;

public class Customer {
      private int idCust;
      private String nameCust;
      private String addressCust;
      private String phone;
      private String email;
      private String username;
      private String password;
      
      
	public Customer(int idCust, String nameCust, String addressCust, String phone, String email, String username,
			String password) {
		
		this.idCust = idCust;
		this.nameCust = nameCust;
		this.addressCust = addressCust;
		this.phone = phone;
		this.email = email;
		this.username = username;
		this.password = password;
	}


	public int getIdCust() {
		return idCust;
	}


	public String getNameCust() {
		return nameCust;
	}


	public String getAddressCust() {
		return addressCust;
	}


	public String getPhone() {
		return phone;
	}


	public String getEmail() {
		return email;
	}


	public String getUsername() {
		return username;
	}


	public String getPassword() {
		return password;
	}


	    
}
