<%--
  Created by IntelliJ IDEA.
  User: sambit.pradhan
  Date: 3/1/2022
  Time: 3:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Toggle Check</title>
</head>
<body>
<div>
    <ul class="nav nav-pills">
        <li class="active"><a data-toggle="pill" class="btn btn-info" href="#add_Person">Add</a></li>
        <li><a data-toggle="pill" class="btn btn-info" href="#view_Person">View</a></li>
    </ul>

    <div id="add_Person" class="tab-pane fade in active">
        <p>Hello, Sambit Add Person</p>
    </div>

    <div id="view_Person"  class="tab-pane fade">
        <p>Hello, Sambit View Person</p>
    </div>
</div>
</body>
</html>
