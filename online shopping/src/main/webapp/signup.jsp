<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
    <input type="text"name="name" placeholder="Enter Name"required>
     <input type="email" name="email" placeholder="Enter email"required>
      <input type="number" name="mobileNumber" placeholder="Enter mobile number"required>
    <Select name="SecurityQuestion" required>
    <option value="what was your first car">what was your first car?</option>
    <option value="what is the name of your fist pet">what is the name of your fist pet?</option>
    <option value="what elementory school did you attended">"what elementary school did you attended?"</option>
     <option value="what is the name of the town where you whre born">"what is the name of the town where you where born?"</option>
   </select>    
     <input type="text" name="answer" placeholder="Enter Answer"required>
     <input type="password"name="password" placeholder="Enter password"required>
     <input type="submit" value="singup">
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  <%
 String msg=request.getParameter("msg");
  if("valid".equals(msg));
 {
 %>
 <h1>Successfully Registered</h1>
<%} %>
<%
if("invalid".equals(msg));
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>