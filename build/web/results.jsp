<%-- 
    Document   : results
    Created on : Oct 1, 2015, 4:41:15 PM
    Author     : Tyler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
    
    <%
        int hoursWorked = Integer.parseInt(request.getParameter("worked"));
        double hourlyPay = Double.parseDouble(request.getParameter("pay"));
        double preTax = Double.parseDouble(request.getParameter("pre-tax"));
        double postTax = Double.parseDouble(request.getParameter("post-tax"));
        int overtime = hoursWorked - 40;
        double overtimeRate = hourlyPay * 1.5;
        double grossPay = 
        %>
    
    
    <body>
        <h1>Salary Info</h1>
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyPay %></td>
                </tr>
                <tr>
                    <td># Hours Overtime:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
