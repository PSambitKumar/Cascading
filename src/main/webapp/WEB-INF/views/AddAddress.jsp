<%--
  Created by IntelliJ IDEA.
  User: sambit.pradhan
  Date: 2/21/2022
  Time: 6:03 PM
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
    <%--        Newly Added--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"> </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"> </script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
    <script src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"> </script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
    <title>Add Address</title>
</head>
<body style="margin: 100px">

<script>
    $(document).ready(function (){
        // For State Drop Down From CountryId From State Table
        $('#countryDrop').on('change', function (){
            var countryId = $(this).val();

            $.ajax({
                url : "GetStateListByCountryId/"+countryId,
                type : "GET",
                success : function (result){
                    var result = JSON.parse(result);
                    console.log(result);
                    var s = '';
                    for(var i = 0; i < result.length; i++) {
                        var id =
                            s += '<option value="' + result[i].sid + '">' + result[i].sname + '</option>';
                    }
                    $('#stateDrop').html(s);
                }
            });
        });


        // For City Drop Down From SateId From City Table
        $('#stateDrop').on('change', function (){
            var cityId = $(this).val();

            $.ajax({
                url : "GetCityListByStateId/"+cityId,
                type : "GET",
                success : function (result){
                    var result = JSON.parse(result);
                    console.log(result);
                    var s = '';
                    for(var i = 0; i < result.length; i++) {
                        var id =
                            s += '<option value="' + result[i].cityid + '">' + result[i].cityname + '</option>';
                    }
                    $('#cityDrop').html(s);
                }
            });
        });

    });
</script>

<form:form action="SaveAddress" method="post" modelAttribute="addAddress">
    <div style="margin: auto" class="form-group col-md-12">
        <div class="form-group row required">


            <div class="col-md-3">
                <label class="form-label control-label" >Select Country Name<span style="color: red">*</span></label>
                <select class="form-select" aria-label="Default select example" id="countryDrop">

                    <option value="Select">Select</option>
                    <c:forEach items="${list}" var="e">
                        <option value="${e.cid}">${e.cname}</option>
                    </c:forEach>
                </select>
                    <%--                    <small class="form-text text-muted" >Name must not contains number</small>--%>
                <div id="namealert"></div>
            </div>


            <div class="col-md-3">
                <label class="form-label" >Select State Name</label>
                <select class="form-select" aria-label="Default select example" id="stateDrop">
                    <option value="Select">Select</option>
                </select>
                    <%--                    <small class="form-text text-muted">Personal details are don't shared</small>--%>
                <div id="stateAlert"></div>
            </div>


            <div class="col-md-3">
                <label class="form-label" >Select City Name</label>
                <form:select class="form-select" aria-label="Default select example" id="cityDrop" path="cityId">
                    <option value="Select">Select</option>
                </form:select>
                    <%--                    <small class="form-text text-muted">Personal details are don't shared</small>--%>
                <div id="cityAlert"></div>
            </div>


            <div class="col-md-3">
                <label class="form-label" >Enter Address</label>
                <form:input path="addr" type="text" class="form-control" id="inputCity" placeholder="Enter Address"/>
                    <%--                    <small class="form-text text-muted">Personal details are don't shared</small>--%>
                <div id="stateAlert"></div>
            </div>

        </div>

        <form:hidden path="aid"/>

        <div style="margin: auto; margin-top: 20px" class="form-group row col-md-8">

            <div class="form-group row col-md-3">
                <button id="submit"   class="btn btn-success">Submit</button>
            </div>

            <div style="margin-left: 10px" class="form-group row col-md-3">
                <button onclick="window.location='Home'; return false;" class="btn btn-danger">Cancel</button>
            </div>

        </div>

        <div id="display"></div>

    </div>
</form:form>
</body>
</html>
