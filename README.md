# JSP_Web_Page

Completed my first JSP web application project using Eclipse IDE in 2024.

# First JSP Web Page

A beginner Java Web (JSP) project built with Eclipse IDE. It provides a simple dashboard with multiple calculator features, each backed by a dedicated JSP page.

---

## Features

| Feature | Page | Description |
|---|---|---|
| Hello World | `First.jsp` | Accepts a name and returns a welcome greeting |
| Square Calculator | `Square.jsp` | Computes the square of a number |
| Addition | `Addition.jsp` | Adds two numbers |
| Subtraction | `Substraction.jsp` | Subtracts one number from another |
| Multiplication | `Multiplication.jsp` | Multiplies two numbers |
| Division | `Division.jsp` | Divides one number by another |

---

## Project Structure

```
CSFirstWeb/
├── src/
│   └── main/
│       └── webapp/
│           ├── index.html          # Main dashboard (entry point)
│           ├── First.jsp           # Hello World page
│           ├── Square.jsp          # Square Calculator
│           ├── Addition.jsp        # Addition
│           ├── Substraction.jsp    # Subtraction
│           ├── Multiplication.jsp  # Multiplication
│           ├── Division.jsp        # Division
│           ├── META-INF/
│           │   └── MANIFEST.MF
│           └── WEB-INF/
│               └── web.xml         # Web app deployment descriptor
├── build/
│   └── classes/
├── .classpath
├── .project
└── .settings/                      # Eclipse IDE settings
```

---

## Prerequisites

- **Java JDK** 8 or above
- **Apache Tomcat** (v8.5+ recommended)
- **Eclipse IDE for Enterprise Java Developers** (with Dynamic Web Project support)

---

## How to Run

1. **Clone or extract** the project folder.
2. **Import into Eclipse:**
   - Go to `File → Import → Existing Projects into Workspace`.
   - Select the `CSFirstWeb` folder and click **Finish**.
3. **Configure a Tomcat Server** in Eclipse if not already set up:
   - `Window → Preferences → Server → Runtime Environments → Add → Apache Tomcat`.
4. **Run on Server:**
   - Right-click the project → `Run As → Run on Server`.
   - Select your configured Tomcat instance and click **Finish**.
5. Open your browser and navigate to:
   ```
   http://localhost:8080/CSFirstWeb/
   ```

---

## Usage

- The **dashboard** (`index.html`) presents six cards — one for each feature.
- Fill in the input field(s) on any card and click the corresponding button.
- The result is displayed on a dedicated JSP result page.
- Click **Back to Dashboard** on any result page to return to the main screen.

---

## Tech Stack

- **Frontend:** HTML5, CSS3 (responsive grid layout, Inter font)
- **Backend:** Java Server Pages (JSP)
- **Server:** Apache Tomcat
- **IDE:** Eclipse (Dynamic Web Project)
- **Deployment Descriptor:** Servlet 2.4 (`web.xml`)
