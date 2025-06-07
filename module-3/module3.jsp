<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
    Author: Jacob Cannamela
    Course: CSD-430
    Assignment: Restaurant Feedback Form (Form JSP)
    Description: This JSP page collects restaurant feedback using a styled form.
                 It includes client-side email validation and sends the form data to a separate JSP for processing.
--%>

<!DOCTYPE html>
<html>
<head>
    <title>Restaurant Feedback Form</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f0f4f8;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background: #ffffff;
            padding: 30px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.1);
            border-radius: 8px;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
        }

        label {
            display: block;
            margin-top: 15px;
            color: #34495e;
        }

        input[type="text"],
        input[type="email"],
        select,
        textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #27ae60;
            color: white;
            padding: 12px 20px;
            margin-top: 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #219150;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Restaurant Experience Feedback</h1>
    <p>Please fill out this form to let us know how your visit was!</p>

    <%-- 
        The form submits POST data to the feedback_response.jsp page.
        HTML5 input validation is applied to ensure required fields and proper email format.
    --%>
    <form action="feedback_response.jsp" method="post">
        <label for="name">Full Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email Address:</label>
        <input type="email" id="email" name="email"
               pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
               title="Please enter a valid email address." required>

        <label for="meal">What did you order?</label>
        <input type="text" id="meal" name="meal" required>

        <label for="rating">Meal Rating (1–5):</label>
        <select id="rating" name="rating">
            <option value="1">1 - Terrible</option>
            <option value="2">2 - Poor</option>
            <option value="3">3 - Okay</option>
            <option value="4">4 - Good</option>
            <option value="5">5 - Excellent</option>
        </select>

        <label for="comments">Additional Comments:</label>
        <textarea id="comments" name="comments" rows="4" placeholder="Tell us what stood out..."></textarea>

        <input type="submit" value="Submit Feedback">
    </form>
</div>

</body>
</html>
