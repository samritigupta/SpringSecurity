<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

    <body>
        <h2>User registered successfully!</h2>
        <hr>
        <a href="${pageContext.request.contextPath}/showMyLoginPage">Login with new user</a>
    </body>

</html>