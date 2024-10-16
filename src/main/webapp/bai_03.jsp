<%-- 
    Document   : bai_03
    Created on : Oct 16, 2024, 8:48:29 AM
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
        <h1>Diện tích - Chu vi hình tròn</h1>
        <form action="bai_03.jsp" method="post">
            <table border="0">
                <tr>
                    <td>Bán kính</td>
                    <td><input type="text" name="bankinh" value="" required /></td>
                </tr>
                <tr>
                    <td>
                <input type="submit" value="Tính toán"/>
                <input type="submit" value="Tiếp theo"/>
                    </td>
                </tr>
            </table>
        </form>
        <% 
            String bankinh = request.getParameter("bankinh");
            if (bankinh != null) {
                double r = Double.parseDouble(bankinh);
                double dientich = Math.PI*r*r;
                double chuvi = 2*Math.PI*r;
                out.println("<hr>");
                out.println("Dien tich: " + dientich);
                out.println("Chu vi: " + chuvi);
            }
        %>
    </body>
</html>
