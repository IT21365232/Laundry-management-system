<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="login.css">
<title>Insert title here</title>
</head>
<body>

<% 
		String id = request.getParameter("cusid");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pword");

%>
 
   <h1>Customer account delete</h1>
   
    <div class="center">
      <h1>DELETE ACCOUNT</h1>
      <form method="post" action="delete">
        
		<div class="txt_field">
          Customer ID<input type="text" name="cusid" value="<%= id %>" readonly >
          <span></span>
          
        </div>
		
		<div class="txt_field">
          <input type="text" name="name" value="<%= name %>" >
          <span></span>
          <label>Name</label>
        </div>
		
		<div class="txt_field">
          <input type="text" name="address" value="<%= address %>" >
          <span></span>
          <label>Address</label>
        </div>
		
		<div class="txt_field">
          <input type="text" name="phone" value="<%= phone %>" >
          <span></span>
          <label>Phone</label>
        </div>
		
		<div class="txt_field">
          <input type="text" name="email" value="<%= email %>" >
          <span></span>
          <label>Email</label>
        </div>
		
		<div class="txt_field">
          <input type="text" name="uname" value="<%= username %>" >
          <span></span>
          <label>User name</label>
        </div>
		
        <input type="submit" name="submit" value="Delete my account">
        <div class="signup_link">
          
        </div>
      </form>
    </div> 
</body>
</html>