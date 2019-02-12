<%@ page isELIgnored="false"  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table>
		<tr> 
			<th> PostId </th>
			<th> ProfileId </th>
			<th> Status</th>
			<th> Url </th>
			<th> Date </th>
			<th> Likes </th>
			<th> LikesProfileIds </th>
			<th> CommentsProfileIds </th>
			<th> Comments </th>
			<th> commentTime </th>
			<th> commentLikes </th>
		</tr>
		<jstl:if test="${post !=null}">
				<tr>
				<td>${post.postId}</td>
				<td>${post.profileId }</td>
				<td>${post.status}</td>
				<td>${post.url}</td>
				<td>${post.date}</td>
				<td>${post.likes.likes}</td>
				<jstl:forEach var="post" items="${posts}">
					<tr>
					<td>${post.likes.likesProfileId}</td>
					</tr>
					</jstl:forEach>
					<jstl:forEach var="post" items="${posts}">
					<tr>
					<td>${post.comments.CommentProfileId}</td>
					</tr>
					</jstl:forEach>
					<td>${post.comments.comment}</td>
					<td>${post.comments.commentTime}</td>
					<td>${post.comments.likes}</td>
			</tr>
		</jstl:if> 
	<%-- 	<jstl:if test="${posts!=null}"> --%>
			<jstl:forEach var="post" items="${posts}">
				<tr>
					<td>${post.postId}</td>
					<td>${post.profileId}</td>
					<td>${post.status}</td>
					<td>${post.url}</td>
					<td>${post.date}</td>
					<td>${post.likes.likes}</td>
					<jstl:forEach var="post" items="${posts}">
					<tr>
					<%-- <td>${post.likes.likesProfileId}</td> --%>
					</tr>
					</jstl:forEach>
					<jstl:forEach var="post" items="${posts}">
					<tr>
					<td>${post.comments.CommentProfileId}</td>
					</tr>
					</jstl:forEach>
					<td>${post.comments.comment}</td>
					<td>${post.comments.commentTime}</td>
					<td>${post.comments.likes}</td>
				</tr>
			</jstl:forEach>
	<%-- 	</jstl:if> --%>
	</table>
</body>
</html>