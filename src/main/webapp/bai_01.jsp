<%-- 
    Document   : bai_01
    Created on : Oct 16, 2024, 8:27:58 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Chương trình đầu tiên</h1>
        <form action="bai_01.jsp" method="post">
            Cho biết họ tên: <input type="text" name="hoten" value="" required />
            <input type="submit" value="Thi hành"/>
        </form>
        <% 
            request.setCharacterEncoding("UTF-8");
            String hoten = request.getParameter("hoten");
            if(hoten!=null){
                out.println("Chào bạn: <b>" + hoten + "</b>");
            }   
        %>
    </body>
</html>
