<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
    Author: Jacob Cannamela
    Course: CSD-430
    Description: Displays customer feedback in a styled table after form submission.
--%>

<html>
<head>
    <title>Thank You for Your Feedback</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #ecf0f1;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 700px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            color: #2c3e50;
        }

        p {
            color: #555;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #2c3e50;
            color: white;
        }

        tr:hover {
            background-color: #f2f2f2;
        }

        a {
            color: #27ae60;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Customer Feedback Summary</h1>
    <p>Below is a summary of your feedback. Thank you for sharing your experience!</p>

    <%
        // Extract submitted form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String meal = request.getParameter("meal");
        String rating = request.getParameter("rating");
        String comments = request.getParameter("comments");
    %>

    <table>
        <tr>
            <th>Field</th>
            <th>Your Response</th>
        </tr>
        <tr>
            <td>Full Name</td>
            <td><%= name %></td>
        </tr>
        <tr>
            <td>Email Address</td>
            <td><%= email %></td>
        </tr>
        <tr>
            <td>Meal Ordered</td>
            <td><%= meal %></td>
        </tr>
        <tr>
            <td>Meal Rating</td>
            <td><%= rating %> out of 5</td>
        </tr>
        <tr>
            <td>Comments</td>
            <td><%= comments %></td>
        </tr>
    </table>

    <p><a href="module3.jsp">Go back to module 3 form</a></p>
</div>
</body>
</html>
