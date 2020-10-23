<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Delete user</title>
</head>

<body>
<div>
    <h1>Users list application</h1>
</div>

<div>
    <%
        if (request.getAttribute("userName") != null) {
            out.println("<p>User '" + request.getAttribute("userName") + "' deleted!</p>");
        }
    %>
    <div>
        <div>
            <h2>Delete user</h2>
        </div>

        <form method="post">
            <label>Name:
                <input type="text" name="name"><br />
            </label>
            <label>Password:
                <input type="password" name="pass"><br />
            </label>
            <button type="submit">Submit</button>
        </form>
    </div>
</div>

<div>
    <button onclick="location.href='/'">Back to main</button>
</div>
</body>
</html>

