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
		<h2>Add a grade</h2>
		<form action="/grades/add" method="post">
		<table class="table">
			<tr>
				<th scope="row">Name</th>
				<td><input type="text" name="name" autofocus/></td>
			</tr>
			<tr>
				<th scope="row">Type</th>
				<td><input type="text" name="type" /></td>
			</tr>
			<tr>
				<th scope="row">Score</th>
				<td><input type="number" name="score" /></td>
			</tr>
			
			<tr>
				<th scope="row">Total</th>
				<td><input type="number" name="total" /></td>
			</tr>
			
			
			
		</table>
		<button type="submit" class="btn btn-primary">Add</button>
		<a class="btn link" href="/grades">Cancel</a>
		</form>
	</div>
</body>
</html>