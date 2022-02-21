<%--
  Created by IntelliJ IDEA.
  User: sambit.pradhan
  Date: 2/18/2022
  Time: 11:19 AM
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
    <title>AddState</title>
</head>
<body style="margin-top: 50px;">

<form:form id="AddState" modelAttribute="stateBean" method="post" action="SaveState">
    <div style="margin: auto" class="form-group col-md-8">

        <div class="form-group row required">

            <div class="col-md-4">
                <label class="form-label control-label" >Select Country Name</label>
                <form:select class="form-select" aria-label="Default select example" path="countryId">
                    <c:forEach items="${list}" var="e">
                        <form:option value="${e.cid}">${e.cname}</form:option>
                    </c:forEach>
                </form:select>
                    <%--                    <small class="form-text text-muted" >Name must not contains number</small>--%>
                <div id="namealert"></div>
            </div>

            <div class="col-md-4">
                <label class="form-label" >State Name</label>
                <form:input path="sname" type="text" class="form-control" id="inputPan" placeholder="Enter State Name"/>
                    <%--                    <small class="form-text text-muted">Personal details are don't shared</small>--%>
                <div id="stateAlert"></div>
            </div>

        </div>

        <form:hidden path="sid"/>

        <div style="margin: auto; margin-top: 20px" class="form-group row col-md-6">

            <div class="form-group row col-md-3">
                    <%--                    onclick="loadData()"--%>
                <button id="submit"   class="btn btn-success">Submit</button>
            </div>

            <div style="margin-left: 10px" class="form-group row col-md-3">
                <button onclick="window.location='Home'; return false;" class="btn btn-danger">Cancel</button>
            </div>

        </div>

        <div id="display"></div>

    </div>
</form:form>




<%--<form:form id="AddState" action="SaveState" method="post" modelAttribute="stateBean">--%>
<%--<div style="margin: auto" class="form-group col-md-8">--%>

<%--    <div class="form-group row required">--%>
<%--        <div class="col-md-4">--%>
<%--            <label class="form-label control-label" >Select Country</label>--%>
<%--            <form:select path="countryId">--%>
<%--                <c:forEach items="${list}" var="e">--%>
<%--                    <form:option value="${e.cid}">${e.cname}</form:option>--%>
<%--                </c:forEach>--%>
<%--            </form:select>--%>
<%--                &lt;%&ndash;                    <small class="form-text text-muted" >Name must not contains number</small>&ndash;%&gt;--%>
<%--            <div id="alert"></div>--%>

<%--            <div class="col-md-4">--%>
<%--                <label class="form-label control-label" >Country Name</label>--%>
<%--                <form:input path="sname" type="text" class="form-control" id="inputCityName"  placeholder="Enter City Name"/>--%>
<%--                    &lt;%&ndash;                    <small class="form-text text-muted" >Name must not contains number</small>&ndash;%&gt;--%>
<%--                <div id="alert"></div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <form:hidden path="sid"/>--%>
<%--        <div id="display"></div>--%>



<%--        <div style="margin: auto; margin-top: 20px" class="form-group row col-md-6">--%>
<%--            <div class="form-group row col-md-3">--%>
<%--                    &lt;%&ndash;                    onclick="loadData()"&ndash;%&gt;--%>
<%--                <button id="submit"   class="btn btn-success">Submit</button>--%>
<%--            </div>--%>
<%--            <div style="margin-left: 10px" class="form-group row col-md-3">--%>
<%--                <button onclick="window.location='Home'; return false;" class="btn btn-danger">Cancel</button>--%>
<%--            </div>--%>
<%--        </div>--%>


<%--    </div>--%>
<%--    </form:form>--%>
</body>
</html>
