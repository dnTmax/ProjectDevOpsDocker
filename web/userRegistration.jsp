<%@ page import="java.sql.*"%>
<%
    String userName = request.getParameter("userName");   
    String password = request.getParameter("password");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://db:3306/webappdb",
            "usermysql", "password");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into USER(id, firstname, lastname, email, username, password) values (null, '" + firstName + "','"
    + lastName + "','" + email + "','" + userName + "','" + password + "');
    if (i > 0) {
        response.sendRedirect("welcome.jsp");
        
    } else {
        response.sendRedirect("login.jsp");
    }
%>