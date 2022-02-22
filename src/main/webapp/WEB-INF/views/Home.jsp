<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400&display=swap" rel="stylesheet">
    <meta charset="ISO-8859-1">
    <title>CSM: Home</title>

    <style type="text/css">
        body{
            font-family:Lato;
            background: #e6e7ee;
        }
        .home{
            font-weight: bolder;
            font-size: 25px;
            margin-left: 42%;
            margin-top: 5%;
        }
        .content{
            margin-top: 5%;
        }
        .container1{
            padding-top: 20px;
            padding-right: 25px;
            padding-left: 25px;
            padding-bottom: 40px;
            border-radius: 21px;
            background: #e0e0e0;
            box-shadow:  5px 5px 11px #a1a1a1,-5px -5px 11px #ffffff;
            margin-left:5%;
            float: left;
        }
        .container2{
            padding-top: 20px;
            padding-right: 25px;
            padding-left: 25px;
            padding-bottom: 40px;
            border-radius: 21px;
            background: #e0e0e0;
            box-shadow:  5px 5px 11px #a1a1a1,-5px -5px 11px #ffffff;
            margin-left:5%;

            float: left;
        }
        .container3{
            padding-top: 20px;
            padding-right: 25px;
            padding-left: 25px;
            padding-bottom: 40px;
            border-radius: 21px;
            background: #e0e0e0;
            box-shadow:  5px 5px 11px #a1a1a1,-5px -5px 11px #ffffff;
            margin-left:5%;
            float:left;
        }
        .container4{
            padding-top: 20px;
            padding-right: 25px;
            padding-left: 25px;
            padding-bottom: 40px;
            border-radius: 21px;
            background: #e0e0e0;
            box-shadow:  5px 5px 11px #a1a1a1,-5px -5px 11px #ffffff;
            margin-left:5%;
            float: left;
        }

        .copyright{
            margin-top:30%;
            margin-left: 45%;
            color: black;
        }
        .a{
            font-family:Lato;
            margin-bottom:10px;
            color:#040D22;
            font-size: 18px;
            font-weight: bold;
        }
        .a1{
            font-family:Lato;
            float: left;
        }
        .a2{
            font-family:Lato;
            margin-left:10px;
            float: left;
        }
    </style>

</head>
<body>
<div>
    <div class="home">WELCOME HOME</div>
    <div class="content">
        <div class="container1">
            <div class="ccontainer">
                <div class="a">Country Master</div>
                <div class="a1"><a href = "AddCountry"><button type="button" class="btn btn-primary">Add Country</button></a></div>
                <div class="a2"><a href = "ViewCountry"><button class="btn btn-primary">View Country</button></a></div>
            </div>
        </div>

        <div class="container2">
            <div class="ccontainer">
                <div class="a">State Master</div>
                <div class="a1"><a href = "AddState"><button class="btn btn-primary">Add State</button></a></div>
                <div class="a2"><a href = "ViewState"><button class="btn btn-primary">View State</button></a></div>
            </div>
        </div>

        <div class="container3">
            <div class="ccontainer">
                <div class="a">City Master</div>
                <div class="a1"><a href = "AddCity"><button class="btn btn-primary">Add City</button></a></div>
                <div class="a2"><a href = "ViewCity"><button class="btn btn-primary">View City</button></a></div>

            </div>
        </div>

        <div class="container4">
            <div class="ccontainer">
                <div class="a">Address Master</div>
                <div class="a1"><a href = "AddAddress"><button class="btn btn-primary">Add Address</button></a></div>
                <div class="a2"><a href = "ViewAddress"><button class="btn btn-primary">View Address</button></a></div>

            </div>
        </div>

    </div>
</div>

<div class="copyright">@Copyright CSM 2022-2023.</div>
</body>
</html>