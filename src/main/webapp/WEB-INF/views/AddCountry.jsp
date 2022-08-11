<%--
  Created by IntelliJ IDEA.
  User: sambit.pradhan
  Date: 2/17/2022
  Time: 5:12 PM
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
    <title>AddCountry</title>
</head>
<body style="margin: 100px">
<div class="col-12 row">
    <div class="col-2"></div>
    <div class="col-6"><button class="btn btn-info" style="width: 18%" onclick="add()">Add</button><button class="btn btn-light" style="width: 18%; margin-left: 1rem;" onclick="view()">View</button></div>
</div>
<div id="addTab">
    <form:form id="AddCountry" action="SaveCountry" method="post" modelAttribute="countryBean">
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
</div>

        <div id="viewTab">
            <h4 style="text-align: center">All Countryl Details</h4>


            <table id="dynamicTable table" class="table table-striped table-bordered">
                <thead>
                <tr>
                    <th>Sl No</th>
                    <th>Country Name</th>
                    <th>Action</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items="${list}" var="e">
                    <tr>
                        <td>${e.cid}</td>
                        <td>${e.cname}</td>
                        <td>
                            <a href = "editCountry/${e.cid}">Edit</a>
                            |
                            <a href = "deleteCountry/${e.cid}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>


                <tfoot>
                </tfoot>

            </table>
        </div>
</body>

<script>
    jQuery(function($) {
        $('#dynamicTable').DataTable({
            pageLength: 10,
            paging: true,
            searching: true,
            order: [[0, "asc"]],
            columnDefs: [{ orderable: true, targets: [4] }]
        });
    function add(){

    }
</script>
</html>
