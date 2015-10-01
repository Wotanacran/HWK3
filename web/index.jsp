<%-- 
    Document   : index
    Created on : Oct 1, 2015, 4:31:54 PM
    Author     : Tyler
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title
        <link href="C:\Users\Tyler\Documents\NetBeansProjects\HMWK3 Salary Calculator\web\style.css" rel="stylesheet" type="text/css" >
    </head>
    <body>
        <h1>Salary Calculator</h1>
        
        <form name="demoForm" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="worked" value="" size="50" required></td>
                    </tr>
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="pay" value="" size="50" required></td>
                    </tr>
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="pre-tax" value="" size="50"></td>
                    </tr>
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="post-tax" value="" size="50"></td>
                    </tr>
                </tbody>
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
        </form>
    </body>
</html>
