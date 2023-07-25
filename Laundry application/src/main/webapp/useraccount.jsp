<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="useraccount.css">
</head>
<body>


  <div class="filter">
 
     
      <table>
     
      <c:forEach var="cus" items="${cusDetails}">
      
      <c:set var="idCust" value="${cus.idCust}"/>
      <c:set var="nameCust" value="${cus.nameCust}"/>
      <c:set var="addressCust" value="${cus.addressCust}"/>
      <c:set var="phone" value="${cus.phone}"/>
      <c:set var="email" value="${cus.email}"/>
      <c:set var="username" value="${cus.username}"/>
      <c:set var="password" value="${cus.password}"/>
      
     <tr>
		 <th>Customer ID</th>
		 <th>Customer Name</th>
		 <th>Customer ID</th>
		 <th>Customer Phone</th>
		 <th>Customer Email</th>
		 <th>Customer Username</th>
	 </tr>
	 
	 <tr>
  <td>${cus.idCust}</td>
  <td>${cus.nameCust}</td>
  <td>${cus.addressCust}</td>
  <td>${cus.phone}</td>
  <td>${cus.email}</td>
   <td>${cus.username}</td>
   </tr>
     
      
    
     </c:forEach>
     </table>
       <div>
       <c:url value="updatecustomer.jsp" var="cusupdate">
          <c:param name="id" value="${idCust}"/>
          <c:param name="name" value="${nameCust}"/>
          <c:param name="address" value="${addressCust}"/>
          <c:param name="phone" value="${phone}"/>
          <c:param name="email" value="${email}"/>
          <c:param name="username" value="${username}"/>
          <c:param name="password" value="${password}"/>
          
       </c:url>
     <form>
       <a href="${cusupdate}" >
       <input type="button" id="btn1" value="Update my data">     
       </a>
       
       <br>
       <c:url value="deletecustomer.jsp" var="custdelete">
       
          <c:param name="id" value="${idCust}"/>
          <c:param name="name" value="${nameCust}"/>
          <c:param name="address" value="${addressCust}"/>
          <c:param name="phone" value="${phone}"/>
          <c:param name="email" value="${email}"/>
          <c:param name="username" value="${username}"/>
          <c:param name="password" value="${password}"/>
       
       </c:url>
       <a href= "${custdelete}">
       <input type="button" name= "delete" id="btn2" value="delete my account">    
       </a>
       </form>
       </div>
       </div>
       
       
</body>
</html>