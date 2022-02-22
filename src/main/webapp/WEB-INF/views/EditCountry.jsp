<%--
  Created by IntelliJ IDEA.
  User: sambit.pradhan
  Date: 2/22/2022
  Time: 12:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%--    Bootstrap for Design--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <%--    For Validation--%>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <%--    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">--%>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.min.css"/>
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.min.js"> </script>
    <title>Edit Country</title>
</head>
<body style="margin: 100px">
<form:form action="UpdateCountry" method="get" modelAttribute="editCountry">
<div style="margin: auto" class="form-group col-md-8">

    <div class="form-group row required">
        <div class="col-md-4">
            <label class="form-label control-label" >Country Name</label>
            <form:input path="cname" type="text" class="form-control" id="inputName"  placeholder="Enter Country Name"/>
                <%--                    <small class="form-text text-muted" >Name must not contains number</small>--%>
            <div id="alert"></div>
        </div>

        <form:hidden path="cid"/>

        <div id="display"></div>

        <div style="margin: auto; margin-top: 20px" class="form-group row col-md-6">

            <div class="form-group row col-md-3">
                    <%--                    onclick="loadData()"--%>
                <button id="submit"   class="btn btn-success">Submit</button>
            </div>

            <div style="margin-left: 10px" class="form-group row col-md-3">
                <button onclick="window.location='Home'; return false;" class="btn btn-danger">Cancel</button>
            </div>

        </div>

    </div>
    </form:form>
</body>
</html>
