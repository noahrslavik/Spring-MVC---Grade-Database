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
		<h1>Grades at Grand Circus</h1>
		<table class="table">
			<tr>
				<th scope="row">Name</th>
				<td>${grade.name}</td>
			</tr>
			<tr>
				<th scope="row">Type</th>
				<td>${grade.type}</td>
			</tr>
			<tr>
				<th scope="row">Score</th>
				<td>${grade.score}</td>
			</tr>
			<tr>
				<th scope="row">Total</th>
				<td>${grade.total}</td>
			</tr>
			
			
		</table>
		<a class="btn btn-secondary" href="/grades/edit?id=${grade.id}">Edit</a>
		<a class="btn btn-danger" href="/grades/delete?id=${grade.id}">Delete</a>
		<a class="btn link" href="/grades">Back to List</a>
	</div>
</body>
</html>