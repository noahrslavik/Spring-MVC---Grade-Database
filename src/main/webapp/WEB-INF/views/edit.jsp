<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Grades</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Grades for Grand Circus</h1>
		<form action="/grades/edit" method="post">
		<input type="hidden" name="id" value="${grade.id}" />
		<table class="table">
			<tr>
				<th scope="row">Name</th>
				<td><input type="text" name="name" value="${grade.name}" /></td>
			</tr>
			<tr>
				<th scope="row">Type</th>
				<td><input type="text" name="type" value="${grade.type}" /></td>
			</tr>
			<tr>
				<th scope="row">Score</th>
					<td><input type="number" name="score" value="${grade.score}" /></td>
			</tr>
			<tr>
			<th scope="row">Total</th>
					<td><input type="number" name="total" value="${grade.total}" /></td>
			</tr>
		</table>
		<button type="submit" class="btn btn-primary">Save Changes</button>
		<a class="btn link" href="/grades/detail?id=${grade.id}">Cancel</a>
		</form>
	</div>
</body>
</html>