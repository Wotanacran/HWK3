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
        <link href="style.css" rel="stylesheet" type="text/css" >
    </head>
    
    <%
        double hoursWorked = Double.parseDouble(request.getParameter("worked"));
        double hourlyPay = Double.parseDouble(request.getParameter("pay"));
        double preTax = Double.parseDouble(request.getParameter("pre-tax"));
        double postTax = Double.parseDouble(request.getParameter("post-tax"));
        double overtime;
        double overtimeRate = hourlyPay * 1.5;
        double grossPay;
        double preTaxPay;
        double postTaxPay;
        double taxAmount;
        double netPay;
        
        if (hoursWorked > 40)
        {
            overtime = hoursWorked - 40;
        }
        else
        {
            overtime = 0;
        }
        
        if (hoursWorked > 40)
        {
            grossPay = hourlyPay * 40 + overtime * overtimeRate;
        }
        else
        {
            grossPay = hourlyPay * hoursWorked;
        }
        preTaxPay = grossPay - preTax;
        
        if (grossPay < 500)
        {
            taxAmount = grossPay * .18;
        }
        else
        {
            taxAmount = grossPay * .22;
        }
        postTaxPay = grossPay - taxAmount;
        netPay = postTaxPay - postTax;
        %>
    
    
    <body>
        <table border="1">
            <h1>Salary Info</h1>
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
                    <td><%= overtime %></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= overtimeRate %></td>
                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= preTax %></td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= preTaxPay %></td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmount %></td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTax %></td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
