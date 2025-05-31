<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Class Table</title>
</head>
<body>
    <h2>Student Information Table</h2>
    <table border="1">
        <tr>
            <%-- Using out.println for each cell --%>
            <% 
                String[] data = { "Classname", "CSD-430", "Jacob Cannamela" };
                for(int i = 0; i < data.length; ++i){
                    out.println("<td>" + data[i] + "</td>");
                }
            %>
        </tr>
    </table>
</body>
</html>
