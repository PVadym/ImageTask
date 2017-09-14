<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Prog.kiev.ua</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<div class="jumbotron" align="center" style="background-color: cornflowerblue">
    <div class="container">

        <form  action="/view" method="POST">
            Photo id: <input type="text" name="photo_id">
            <input type="submit" class="btn btn-primary" value="Get Photo"/>
        </form>
    </div>
    <div class="container">
        <form  action="/add_photo" enctype="multipart/form-data" method="POST">
            Load Photo: <input type="file" name="photo" class="form-control">
            <input type="submit" class="btn btn-warning" value="Upload"/>
        </form>
    </div>
</div>

<div class="jumbotron" align="center" style="background-color: beige">
    <table class="table tab-s table-bordered">
        <thead>
        <tr>
            <th>
                <button type="button" class="btn btn-danger" id="remove_photo">Delete selected</button>
            </th>
            <th>ID Photo</th>
            <th>Preview</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${keys}" var="key">
            <tr>
                <td><input type="checkbox" name="toDelete[]" value="${key}" id="checkbox_${key}"></td>
                <td><a href="/photo/${key}">${key}</a></td>
                <td><img class="img-circle" alt="Cinque Terre" width="80" height="60" src="/photo/${key}"/></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script>

    $('#remove_photo').click(function () {
        var data = {'toDelete[]': []};
        $(":checked").each(function () {
            data['toDelete[]'].push($(this).val());
        });
        $.post("/delete", data, function (data, status) {
            window.location.reload();
        });
    });
</script>

</body>

</html>
