<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="updatePostForUpdate">
 
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
				<td><input name="postId" value=${post.postId} readonly="readonly"></td>
				<td><input name="profileId" value=${post.profileId} readonly="readonly"></td>
				<td><input name="status" value=${post.status} ></td>
				<td><input name="url" value=${post.url}></td>
				<td><input name="date" value=${post.date} readonly="readonly"></td>
				<td><input name="likes" value=${post.likes.likes}></td>
				<jstl:forEach var="post" items="${posts}">
					<tr>
					<td><input name="likesProfileId" value=${post.likes.likesProfileId}></td>
					</tr>
				</jstl:forEach>
				<jstl:forEach var="post" items="${posts}">
					<tr>
					<td><input name="commentProfileId" value=${post.comments.commentProfileId}></td>
					</tr>
					</jstl:forEach>
					<td><input name="comment" value=${post.comments.comment}></td>
					<td><input name="commentTime" value=${post.comments.commentTime} readonly="readonly"></td>
					<td><input name="likes" value=${post.comments.likes}></td>
				</tr>
				</jstl:if>
	</table>
	<input type = "submit" value="Submit"> 	&nbsp &nbsp&nbsp
	<input type = "reset" value="reset"> <br>
	</form>
	<div>
		<jsp:include page="HomeLink.html"></jsp:include>
	</div>
</body>
</html>