<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="createNewPost" >
		Enter PostId: <input type="text" name="postId"/> <br /> <br />
		Enter ProfileId:<input type="text" name="profileId"/> <br /> <br />
		Enter Status:  <input type="text" name="status"/><br /> <br />
  		<input type="submit" value="submit">
		<input type="Reset" value="Reset">
	</form><br />
	<div>
		<jsp:include page="HomeLink.html"></jsp:include>
	</div>
</body>
</html>                                                                                                                                                                                                                                                                                                                                         