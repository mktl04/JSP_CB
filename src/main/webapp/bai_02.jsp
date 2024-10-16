<%-- 
    Document   : bai_02
    Created on : Oct 16, 2024, 8:36:11 AM
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
        <h1>Diện tích - Chu vi hình chữ nhật</h1>
        <form action="bai_02.jsp" method="post">
            <table border="0">
                <tr>
                    <td>Chiều dài</td>
                    <td><input type="text" name="dai" value="" required /></td>
                </tr>
                <tr>
                    <td>Chiều rộng</td>
                    <td><input type="text" name="rong" value="" required /></td>
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
            String dai = request.getParameter("dai");
            String rong = request.getParameter("rong");
            if (dai != null && rong != null) {
                double d = Double.parseDouble(dai);
                double r = Double.parseDouble(rong);
                double dt = d * r;
                double cv = (d + r) * 2;
                out.println("<hr>");
                out.println("Dien tich: " + dt);
                out.println("Chu vi: " + cv);
            }
        %>
    </body>
</html>
