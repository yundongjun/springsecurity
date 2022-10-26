<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
  href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
  integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
  crossorigin="anonymous">
<title>Spring Security Custom Logout Form</title>
</head>
<body>
    <div class="container">
        <div class="card" style="width: 350px; margin-left: auto; margin-right: auto; border: none;">
          <h1 class="display-4">Please Login</h1>
          <form:form action="${pageContext.request.contextPath}/authenticateUser" method="POST">
            <div class="form-group">
              <label for="username">Username</label> 
              <input type="text" id="username" name="username" class="form-control" />
            </div>
            <div class="form-group">
              <label for="password">Password</label>
              <input type="password" id="password" name="password" class="form-control">
              <c:if test="${ param.error != null }">
                <small id="passwordHelpBlock" class="form-text text-warning">
                  Sorry! You entered invalid username/password.
                </small>
              </c:if>          
              <c:if test="${ param.logout != null }">
                <small id="passwordHelpBlock" class="form-text text-info">
                  You have been logged out.
                </small>
              </c:if>          
            </div>  
            <input type="submit" value="Login" class="btn btn-primary">
          </form:form>
        </div>
      </div>
  <p>You are now logged in</p>
  <form:form action="${ pageContext.request.contextPath }/logout" method="POST">
    <input type="submit" class="btn btn-primary" value="Logout"/>
  </form:form>
</body>
</html>