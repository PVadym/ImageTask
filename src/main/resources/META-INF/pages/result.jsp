<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Prog.kiev.ua</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="jumbotron" align="center" style="background-color: cornflowerblue">

    <h1>Your photo id is: ${photo_id}</h1>
    <input type="submit" class="btn btn-danger" value="Delete Photo" onclick="window.location='/delete/${photo_id}';"/>
    <input type="submit" class="btn btn-primary" value="Return" onclick="window.location='/';"/>
</div>
<div class="jumbotron" align="center" style="background-color: beige">
    <br/><br/><img src="/photo/${photo_id}"/>
</div>
</body>
</html>
