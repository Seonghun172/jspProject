<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
 <META http-equiv=refresh content="1;url=../../../select/index.jsp">
<title>Insert title here</title>
</head>
<body>
 
<body>


<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	   

	String lastname = request.getParameter("lastName");
	String firstname = request.getParameter("firstName");
	String pass = request.getParameter("Passwd");
	String email = request.getParameter("Username");
	String phone = request.getParameter("phone1") +"-"+ request.getParameter("phone2") +"-"+ request.getParameter("phone3");
	String birthday = request.getParameter("year") +":"+ request.getParameter("month") +":"+ request.getParameter("day");
	session.setAttribute("phone", phone);
	session.setAttribute("firstName", firstname);
	session.setAttribute("lastName", lastname);
	session.setAttribute("Passwd", pass);
	session.setAttribute("birthday", birthday);
	PreparedStatement pstmt = null;

	try {
		String sql = "insert into member(lastName, firstName, email, pw, phone, birthday) values(?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, lastname);
		pstmt.setString(2, firstname);
		pstmt.setString(3, email);
		pstmt.setString(4, pass);
		pstmt.setString(5, phone);
		pstmt.setString(6, birthday);
		pstmt.executeUpdate();
		//out.println("Member 테이블  삽입이 성공했습니다.");
	} catch (SQLException ex) {
		out.println("Member 테이블 삽입이 실패했습니다.<br>");
		out.println("SQLException: " + ex.getMessage());
	} finally {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
%>




</body>
 
</body>
</html>