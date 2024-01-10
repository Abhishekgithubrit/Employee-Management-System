<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<%
    // Assuming responseData is a List<List<String>>
    List<List<String>> responseData = (List<List<String>>) request.getAttribute("responseData");
%>
<h1 align="center">List Of Employee</h1>
<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Salary</th>
        </tr>
    </thead>
    <tbody>
    <%
        for (int i = 0; i < responseData.size(); i++) {
    %>
        <tr>
            <td><%= responseData.get(i).get(0) %></td>
            <td><%= responseData.get(i).get(1) %></td>
            <td><%= responseData.get(i).get(2) %></td>
        </tr>
    <%
        }
    %>
    </tbody>
</table>

</body>
</html>
