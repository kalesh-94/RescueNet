<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Volunteer Registration</title>
    <style>
        /* RescueNet Volunteer Registration - Premium Dark Theme */
        
        body {
          margin: 0;
          padding: 0;
          font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
          background: linear-gradient(rgba(10,10,10,0.85), rgba(10,10,10,0.85)),
                      url('https://static.vecteezy.com/system/resources/previews/060/000/966/non_2x/smiling-woman-holds-green-parrot-near-face-happy-expression-with-a-pet-bird-close-up-portrait-of-bird-owner-inside-a-home-photo.jpeg')
                      no-repeat center center fixed;
          background-size: cover;
          color: #e0f7fa;
          min-height: 100vh;
          display: flex;
          justify-content: center;
          align-items: center;
          flex-direction: column;
          text-align: center;
          padding: 40px 20px;
        }
        
        h1 {
          font-size: 2.5em;
          color: #4CAF50;
          text-shadow: 1px 1px 8px rgba(0, 0, 0, 0.9);
          margin-bottom: 30px;
        }
        
        form {
          background: rgba(255, 255, 255, 0.05);
          padding: 30px;
          border-radius: 15px;
          box-shadow: 0 0 15px rgba(76, 175, 80, 0.15);
          width: 100%;
          max-width: 500px;
        }
        
        label {
          display: block;
          margin: 12px 0 5px;
          font-weight: bold;
          color: #b2ebf2;
        }
        
        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="tel"],
        select {
          width: 90%;
          padding: 10px;
          border-radius: 10px;
          border: none;
          outline: none;
          background: rgba(255, 255, 255, 0.1);
          color: #e0f7fa;
          font-size: 1em;
          margin-bottom: 10px;
        }
        
        input::placeholder {
          color: #b2ebf2;
        }
        
        button {
          padding: 12px 30px;
          font-size: 1em;
          font-weight: bold;
          background: linear-gradient(135deg, #4CAF50, #2E7D32);
          color: #fff;
          border: none;
          border-radius: 30px;
          cursor: pointer;
          margin-top: 15px;
          box-shadow: 0 0 10px rgba(76, 175, 80, 0.4);
          transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        
        button:hover {
          transform: scale(1.05);
          box-shadow: 0 0 20px rgba(76, 175, 80, 0.6);
        }
        
        p {
          margin-top: 20px;
          font-size: 1em;
        }
        
        a {
          color: #4CAF50;
          text-decoration: none;
          font-weight: bold;
          transition: color 0.2s ease;
        }
        
        a:hover {
          color: #8BC34A;
        }
        
        .error-message {
          color: #FF5252;
          margin: 10px 0;
          font-weight: bold;
        }
        
        @media (max-width: 480px) {
          form {
            padding: 20px;
            width: 95%;
          }
        
          h1 {
            font-size: 2em;
          }
        
          button {
            width: 90%;
          }
        }
    </style>
</head>
<body>
    <center>
        <h1>Volunteer Registration</h1>
        <form action="registerVolunteer" method="post">
            <%-- Display error message if exists --%>
            
            
            <label>Full Name:</label>
            <input type="text" name="vName" placeholder="Enter your full name" required>
            
            <label>Email:</label>
            <input type="email" name="vEmail" placeholder="Enter your email" required>
            
            <label>Password:</label>
            <input type="password" name="vPassword" placeholder="Create a password" required>
            
            <label>Phone Number:</label>
            <input type="text" name="vcontact" placeholder="Enter your Contact number" required>
            
            <label>Zone/Area:</label>
            <select name="vZone" required>
                <option value="" disabled selected>Select your zone</option>
                <option value="North">North Zone</option>
                <option value="South">South Zone</option>
                <option value="East">East Zone</option>
                <option value="West">West Zone</option>
                <option value="Central">Central Zone</option>
            </select>
            
        
            <button type="submit">Register</button>
        </form>
        
        <p>Already have an account? <a href="volunteerLogin">Login here</a></p>
        
        <br><br>
        <a href="index">Back to Home</a>
    </center>
</body>
</html>