<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%-- 
    Author: Jacob Cannamela
    Course: CSD-430
    Assignment: Display data in an HTML table using JSP Scriptlets
    Description: This JSP page displays information about key chapters in the book "Cirque du Freak"
                 by Darren Shan. The page uses an external CSS file for styling and includes a dynamic
                 table populated by Java code embedded within scriptlet tags. All HTML tags are kept
                 outside of Java code blocks to ensure clarity and separation of concerns.
--%>

<html>
<head>
    <title>Cirque du Freak: Key Chapters</title>
    
    <%-- Link to external CSS file for styling --%>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    
    <%-- Page heading and description --%>
    <h1>Cirque du Freak: Key Chapters</h1>
    <p>This table presents an overview of five important chapters from the book "Cirque du Freak" by Darren Shan, including the chapter number, chapter title, and a brief summary for each. The story follows the journey of Darren Shan, who becomes entangled in a world of vampires and magical creatures.</p>
    
    <%-- Start of HTML table to display chapter information --%>
    <table border="1">
        <tr>
            <%-- Table headers --%>
            <th>Chapter Number</th>
            <th>Chapter Title</th>
            <th>Summary</th>
        </tr>

        <% 
            /**
             * Initialize a 2D array of String data representing chapter information.
             * Each inner array contains three elements:
             *  - chapters[i][0]: Chapter number
             *  - chapters[i][1]: Chapter title
             *  - chapters[i][2]: Brief summary of the chapter
             */
            String[][] chapters = {
                {"1", "The Cirque du Freak Show", "Darren and his friend Steve sneak into a mysterious freak show filled with bizarre and wondrous creatures."},
                {"2", "Mr. Crepsley", "Darren becomes fascinated by Mr. Crepsley, a vampire performer, while Steve demands to be turned into a vampire himself."},
                {"3", "The Spider", "Darren steals Mr. Crepsley’s performing spider, Madam Octa, and brings her home, leading to dangerous consequences."},
                {"4", "A Deadly Deal", "When Steve is bitten by Madam Octa, Darren is forced to make a deal with Mr. Crepsley to save his friend’s life."},
                {"5", "Half-Vampire", "Darren agrees to become Mr. Crepsley’s half-vampire assistant, leaving his old life behind to join the Cirque du Freak."}
            };

            /**
             * Iterate through the 2D array of chapter data.
             * For each chapter (row), output an HTML table row (<tr>) and
             * insert the chapter data into HTML table data cells (<td>).
             */
            for(int i = 0; i < chapters.length; ++i){
        %>
        <%-- Output an HTML table row for the current chapter --%>
        <tr>
            <%-- Insert chapter number into the first cell --%>
            <td><%= chapters[i][0] %></td>
            
            <%-- Insert chapter title into the second cell --%>
            <td><%= chapters[i][1] %></td>
            
            <%-- Insert summary of the chapter into the third cell --%>
            <td><%= chapters[i][2] %></td>
        </tr>
        <% 
            } // End of chapter loop
        %>
    </table>

    <%-- Concluding paragraph summarizing themes --%>
    <p>These chapters highlight the transformation of Darren Shan from an ordinary schoolboy into a half-vampire. The story explores themes of friendship, loyalty, and the struggle between right and wrong in a dark, fantastical setting.</p>
</body>
</html>
