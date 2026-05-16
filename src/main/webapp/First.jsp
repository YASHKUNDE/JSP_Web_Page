<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Name Page</title>
  
  <!-- Matching Dashboard Font -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

  <style>
    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: #f0f2f5; /* Matching Dashboard Background */
      color: #111827;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 16px;
    }

    /* Card Box Style matched to Dashboard cards */
    .result-frame {
      background: #ffffff;
      padding: 24px;
      border-radius: 16px;
      width: 380px;
      max-width: 100%;
      border: 1px solid #e5e7eb;
      box-shadow: 0 4px 6px rgba(0,0,0,0.05), 0 10px 25px rgba(0,0,0,0.05);
      text-align: center;
      
      /* Subtle entry animation */
      animation: fadeInUp 0.5s cubic-bezier(0.23, 1, 0.32, 1);
    }

    /* Heading matches Dashboard card titles */
    .result-frame h1 {
      font-size: 18px;
      font-weight: 700;
      color: #3b82f6; /* Dashboard primary blue */
      margin-bottom: 20px;
      padding-bottom: 10px;
      border-bottom: 2px solid #e5e7eb;
      letter-spacing: -0.02em;
    }

    /* Clean typography for the output message */
    .result-frame p {
      font-size: 16px;
      font-weight: 500;
      color: #111827;
      margin-bottom: 24px;
      line-height: 1.5;
    }

    /* Button matched to Dashboard Submit interaction rules */
    .back-button {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
      width: 100%;
      padding: 10px 16px;
      background: linear-gradient(135deg, #3b82f6, #2563eb);
      color: white;
      border: none;
      border-radius: 8px;
      font-weight: 600;
      font-size: 14px;
      text-decoration: none;
      letter-spacing: 0.5px;
      transition: transform 0.2s cubic-bezier(0.23, 1, 0.32, 1),
                  box-shadow 0.2s cubic-bezier(0.23, 1, 0.32, 1);
    }

    .back-button:hover {
      transform: translateY(-2px);
      box-shadow: 0 10px 25px -5px rgba(59, 130, 246, 0.3);
    }

    .back-button:active {
      transform: scale(0.97);
    }

    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(15px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }
  </style>
</head>
<body>

<div class="result-frame">
  <h1>Response Status</h1>
  <p>
    <% 
      String nm = request.getParameter("nm");
      if (nm != null && !nm.trim().isEmpty()) {
        out.print("Welcome, " + nm + "!");
      } else {
        out.print("No name provided.");
      }
    %>
  </p>
  
  <!-- Back button with layout fixes (No old <br> tag used) -->
  <a href="index.html" class="back-button">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
      <line x1="19" y1="12" x2="5" y2="12"></line>
      <polyline points="12 19 5 12 12 5"></polyline>
    </svg>
    Back to Dashboard
  </a>
</div>

</body>
</html>