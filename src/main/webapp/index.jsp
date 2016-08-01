<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="helloworld.Add" %>
<html>
<body>
<h2>Hello issue World!</h2>
<form action="index.jsp" method="GET">
Number1: <input type="text" name="first_number">
<br />
Number2: <input type="text" name="second_number" />
<input type="submit" value="confirm" name="submit" />
<%! String number3=""; 
%>
<%
  //java codes
   int number1=0;
if(request.getParameter("submit")!=null) //btnSubmit is the name of your button, not id of that button.
{
   number1=
		   Integer.parseInt(request.getParameter("first_number"));
   int number2=0;
   number2=
		   Integer.parseInt(request.getParameter("second_number"));
   Add oAdd = new Add();
   
   number3 = String.valueOf(oAdd.Add2Numbers(number1, number2));
   //out.print(number3);
  
   request.setAttribute("sum_number",number3);
}
%>
<br />
Sum: <input type="text" name="sum_number"  value="<%= number3 %>"  />
</form>
</body>
</html>
