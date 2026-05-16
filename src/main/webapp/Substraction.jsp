<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Subtraction Result</title>
  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(to right, #eef2f3, #8e9eab);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .result-frame {
      background: #ffffff;
      padding: 30px;
      border-radius: 15px;
      width: 400px;
      max-width: 90vw;
      box-shadow: 0 15px 25px rgba(0, 0, 0, 0.15);
      text-align: center;
    }

    .result-frame h1 {
      font-size: 24px;
      color: #333;
      margin-bottom: 20px;
      border-bottom: 1px solid #ccc;
      padding-bottom: 10px;
    }

    .result-frame p {
      font-size: 18px;
      color: #007BFF;
      font-weight: bold;
    }
    .back-button {
  display: inline-block;
  padding: 12px 24px;
  background: linear-gradient(135deg, #4a90e2, #357ABD);
  color: #fff;
  font-weight: 600;
  font-size: 16px;
  border-radius: 30px;
  box-shadow: 0 4px 10px rgba(70, 130, 180, 0.4);
  text-decoration: none;
  transition: background 0.3s ease, box-shadow 0.3s ease, transform 0.2s ease;
  user-select: none;
}

.back-button:hover {
  background: linear-gradient(135deg, #357ABD, #2a5f9e);
  box-shadow: 0 6px 14px rgba(70, 130, 180, 0.6);
  transform: translateY(-2px);
}

.back-button:active {
  transform: translateY(1px);
  box-shadow: 0 2px 6px rgba(70, 130, 180, 0.3);
}
    
  </style>
</head>
<body>
  <div class="result-frame">
    <h1>Subtraction Result</h1>
    <p>
      <% 
        String sub1 = request.getParameter("sub1");
        String sub2 = request.getParameter("sub2");

        try {
          int sb1 = Integer.parseInt(sub1);
          int sb2 = Integer.parseInt(sub2);
          out.print("Subtraction = " + (sb1 - sb2));
        } catch (NumberFormatException e) {
          out.print("Invalid input. Please enter valid numbers.");
        }
      %>
    </p><br>
    <a href="index.html" class="back-button">← Back</a>
    
  </div>
</body>
</html>
