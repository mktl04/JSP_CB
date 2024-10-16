<%-- 
    Document   : bai_04
    Created on : Oct 16, 2024, 9:59:27 AM
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
        <h1>Đổi ngoại tệ</h1>
        <form ation="bai_04.jsp" method="post">
            <table border="0">
                <tr>
                    <td>Cho biết số tiền</td>
                    <td><input type="text" name="sotien" value="" required/></td>
                </tr>
                <tr>
                    <td>Chọn loại ngoại tệ</td>
                    <td>
                        <select name="loaingoaite">
                            <option value="USD">USD</option>
                            <option value="GBP">GBP</option>
                            <option value="EUR">EUR</option>
                            <option value="JPY">JPY</option>
                            <option value="AUD">AUD</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit" value="Đổi"/>
                        <input type="submit" value="Tiếp tục"/>
                    </td>
                </tr>
            </table>
        </form>
        <% 
            String soTien = request.getParameter("sotien");
            String loaiNgoaiTe = request.getParameter("loaingoaite");
            if (soTien != null){
                double tien = Double.parseDouble(soTien);
                double tienVND = 0;
                switch (loaiNgoaiTe){
                case "USD":
                    tienVND = tien * 21380;
                    break;
                case "GBP":
                    tienVND = tien * 32682.80;
                    break;
                case "EUR":
                    tienVND = tien * 23555.67;
                    break;
                case "JPY":
                    tienVND = tien * 178.61;
                    break;
                case "AUD":
                    tienVND = tien * 16727.44;
                    break;
                }
                out.println("Số tiền đổi được: " + soTien + "(" + loaiNgoaiTe + ") = " +tienVND + "VND");
            }
        %>
    </body>
</html>
