<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Employee Leave Application</title>
    <style type="text/css">
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
    text-align: center;
}

h1 {
    margin-top: 20px;
}

form {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 400px;
    margin: 0 auto;
}

label,
input,
textarea {
    display: block;
    margin-bottom: 10px;
}

input,
textarea {
    width: 100%;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 3px;
}

button {
    background-color: #007BFF;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
}

#message {
    margin-top: 10px;
    color: green;
}
    </style>
    <script type="text/javascript">
    document.getElementById("leaveForm").addEventListener("submit", function (e) {
        e.preventDefault();

        // Get form values
        const name = document.getElementById("name").value;
        const department = document.getElementById("department").value;
        const startDate = document.getElementById("startDate").value;
        const endDate = document.getElementById("endDate").value;
        const reason = document.getElementById("reason").value;

        // You can process or submit the form data here, for example, by sending it to a server.

        // Display a success message
        const messageDiv = document.getElementById("message");
        messageDiv.textContent = "Leave application submitted successfully!";
        messageDiv.style.color = "green";

        // Clear the form
        document.getElementById("leaveForm").reset();
    });
    </script>
</head>
<body>
    <h1>Employee Leave Application Form</h1>
    <form id="leaveForm" action="leave1.jsp" method="post">
        <label for="name">Employee Name:</label>
        <input type="text" name="empname" id="name" required>
         <label for="name">Employee Id:</label>
        <input type="text" name="empid" id="name" required>
        
        <label for="department">Department:</label>
        <input type="text"  name="empdepart"id="department" required>
        
        <label for="startDate">Start Date:</label>
        <input type="date" name="Start_date" id="startDate" required>
        
        <label for="endDate">End Date:</label>
        <input type="date" name="End_date" id="endDate" required>
        
        <label for="reason">Reason for Leave:</label>
        <textarea id="reason"  name="reson" required></textarea>
        
        <button type="submit">Submit Application</button>
    </form>
    <div id="message"></div>
    <script src="script.js"></script>
</body>
</html>