<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
 
<section id="intro">
    <div class="intro-container wow fadeIn">
      
  
    
    <div class="center">
      <h2>Login</h2>
      <form method="post" action="log">
        <div class="txt_field">
          <input type="text" name="uid" required>
          <span></span>
          <label>Username</label>
        </div>
        <div class="txt_field">
          <input type="password" name="pass"required >
          <span></span>
          <label>Password</label>
        </div>
        <input type="submit" name="submit"value="login">
        <div class="signup_link">
          Not a member? <a href="customerinsert.jsp">Sign up</a>
        </div>
      </form>
    </div>
    
   </div>
  </section>
  
   <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
</body>
</html>