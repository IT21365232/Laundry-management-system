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
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<section id="intro">
    <div class="intro-container wow fadeIn">
      
      <div class="center">
      <h2>Register</h2>
      <form method="post" action="insert">
        
		<div class="txt_field">
          <input type="text" name="name" required>
          <span></span>
          <label>Name</label>
        </div>
        
		<div class="txt_field">
          <input type="text" name="address"required >
          <span></span>
          <label>Address</label>
        </div>
		
		<div class="txt_field">
          <input type="text" name="phone"required >
          <span></span>
          <label>Phone</label>
        </div>
		
		<div class="txt_field">
          <input type="text" name="email"required >
          <span></span>
          <label>Email</label>
        </div>
		
		<div class="txt_field">
          <input type="text" name="uid"required >
          <span></span>
          <label>User Name</label>
        </div>
		
		<div class="txt_field">
          <input type="text" name="pass"required >
          <span></span>
          <label>Password</label>
        </div>
		
		
		
        
		
        <input type="submit" name="submit"value="create customer">
        <div class="signup_link">
          
        </div>
      </form>
    </div>
      
      
      
      
      
       
   
   </div>
  </section>
  
  <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>

</body>
</html>