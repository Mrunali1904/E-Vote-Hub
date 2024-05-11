
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body, html {
    margin: 0;
    padding: 0;
    height: 100%;
    font-family: Arial, sans-serif;
}

.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
}

.form-container {
    width: 300px;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
}

.form-container h2 {
    margin-bottom: 20px;
}

.form-container input {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border-radius: 4px;
    border: 1px solid #ccc;
}

.form-container button {
    width: 100%;
    padding: 10px;
    background-color: #007bff;
    border: none;
    border-radius: 4px;
    color: #fff;
    cursor: pointer;
}

.form-container button:hover {
    background-color: #0056b3;
}

.alert-box {
    display: none;
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) scale(0.8); /* Initially scaled down */
    width: 150px;
    height:50px;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
    text-align: center;
    opacity: -7; /* Initially transparent */
    transition: transform 0.6s ease, opacity 0.6s ease; /* Smooth transition for transform and opacity */
}

.alert-box.show {
    transform: translate(-50%, -50%) scale(2); /* Show the alert box and scale it to normal size */
    opacity: 1; /* Make the alert box fully visible */
}

.close-btn {
    position: absolute;
    top: 5px;
    right: 10px;
    cursor: pointer;
}
</style>
</head>
<body>

  <div class="container">
        <div class="form-container">
            <h2>Submit Form</h2>
            <form id="myForm">
                <input type="text" name="name" placeholder="Your Name" required><br>
                <input type="email" name="email" placeholder="Your Email" required><br>
                <button type="submit">Submit</button>
            </form>
        </div>
        <div class="alert-box" id="alertBox">
            <span class="close-btn" onclick="closeAlert()">&times;</span>
            <p>Form submitted successfully!</p>
        </div>
    </div>

    <script>
        function closeAlert() {
            var alertBox = document.getElementById("alertBox");
            alertBox.style.display = "none";
        }

        document.getElementById("myForm").addEventListener("submit", function(event){
            event.preventDefault();
            var alertBox = document.getElementById("alertBox");
            alertBox.style.display = "block";
            alertBox.classList.add("show"); // Adding "show" class to apply the animation
        });
    </script>
</body>
</html>