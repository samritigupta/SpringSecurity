<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

<body>
    <!-- Registration Form -->
        <form:form action="${pageContext.request.contextPath}/register/processRegistrationForm"
            modelAttribute="crmUser"
            class="form-horizontal">
            <!-- Check for registration error -->
            <c:if test="${registrationError != null}">
                <div class="alert alert-danger col-xs-offset-1 col-xs-10">
                    ${registrationError}
                </div>
            </c:if>

            <!-- User name -->
            <form:input path="userName" placeholder="username" class="form-control" />
            <!-- Password -->
            <form:password path="password" placeholder="password" class="form-control" />
            <!—- First Name -->
            <form:input path="firstName" placeholder="first name" class="form-control" />
            <button type="submit" class="btn btn-primary">Register</button>
        </form:form>
</body>

</html>