<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Update TV Show</title>
<style>
body {
	background-color: lightblue;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
	margin: 0;
}

.option-box {
	background-color: white;
	padding: 20px;
	margin-bottom: 10px;
	border-radius: 5px;
	width: 300px;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	margin: 10px;
}

form {
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<h1>Update TV Show</h1>
	<div class="option-box">
		<form action="updateShowForm.do" method="post">

			<label for="name">ID:</label> <input type="text" name="showId"
				required><br> <label for="name">Name:</label> <input
				type="text" id="name" name="name" required><br> <label
				for="length">Length (in Minutes):</label> <input type="number"
				id="length" name="length" min="1" required><br> <label
				for="numberOfSeasons">Number of Seasons:</label> <input
				type="number" id="numberOfSeasons" name="numberOfSeasons" min="1"
				required><br> <label for="category">Category:</label> <select
				id="category" name="category" required>
				<option value="Documentary">Documentary</option>
				<option value="Cartoons">Cartoons</option>
				<option value="Fantasy">Fantasy</option>
				<option value="War">War</option>
				<option value="Drama">Drama</option>
				<option value="History">History</option>
				<option value="Comedy">Comedy</option>
				<option value="Suspense">Suspense</option>
				<option value="Crime">Crime</option>
				<option value="Horror">Horror</option>
				<option value="Documentary">Documentary</option>
				<option value="Other">Other</option>
			</select><br> <label for="whereToStream">Where to Stream:</label> <input
				type="text" id="whereToStream" name="whereToStream" required><br>

			<label for="recommendedBy">Recommended By:</label> <input type="text"
				id="recommendedBy" name="recommendedBy" required><br> <input
				type="submit" value="Update" class="btn btn-primary">
		</form>
	</div>

	<div class="option-box">
		<form action="allShows.do" method="get">
			<input type="submit" value="Click here if you forgot the ID">
		</form>

	</div>
	<a href="index.do">Back to Home</a>
</body>
</html>
