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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="https://mdbcdn.b-cdn.net/wp-content/themes/mdbootstrap4/docs-app/css/dist/mdb5/standard/core.min.css">
    <link rel="stylesheet" id="roboto-subset.css-css" href="https://mdbcdn.b-cdn.net/wp-content/themes/mdbootstrap4/docs-app/css/mdb5/fonts/roboto-subset.css?ver=3.9.0-update.5" type="text/css" media="all">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Toggle Check</title>
</head>
<body>
<%--<div>--%>
<%--    <ul class="nav nav-pills">--%>
<%--&lt;%&ndash;        data-target="#add_Person"&ndash;%&gt;--%>
<%--        <li class="active"><a data-toggle="pill" class="btn btn-info" href="#add_Person">Add</a></li>--%>
<%--        <li><a data-toggle="pill" class="btn btn-info" href="#view_Person">View</a></li>--%>
<%--    </ul>--%>

<%--    <div id="add_Person" class="tab-pane fade in active">--%>
<%--        <p>Hello, Sambit Add Person</p>--%>
<%--    </div>--%>

<%--    <div id="view_Person"  class="tab-pane fade">--%>
<%--        <p>Hello, Sambit View Person</p>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<-------------------------------------------Updated Code------------------------------------------------>--%>

<div class="row">
    <div class="col-xs-12">
        <%--        String of Panel--%>
        <div class="panel-default" style="margin: 10px">

            <%--            Start of Add and View Div--%>
            <div class="top_tab_container">
                <ul class="nav nav-pills">
                    <li class="active"><a data-toggle="pill" class="btn btn-info"
                                          href="#add_tab">Add Employee</a></li>
                    <li><a data-toggle="pill" class="btn btn-info"
                           href="#view_tab">View Employee</a></li>
                </ul>
            </div>
            <%--            End of Add and View Div--%>

            <div class="tab-content">

                <%--  Starting of Add Page--%>
                <div class="tab-pane fade in active" id="add_tab">
                    Hello, Sambit Kumar Prdhan.
                </div>
                <%--    Ending of Add Page--%>

                <%--    Starting of View Page--%>
                <div class="tab-pane fade" id="view_tab">
                    Hello, Hrusikesh Mohanty.
                </div>
                <%--     Ending of View Page--%>

            </div>

        </div>
        <%--        Ending of Panel--%>
    </div>
</div>


















<%--<div>--%>
<%--    <ul id="docs-nav-pills" class="nav nav-pills mb-4" role="tablist">--%>
<%--        <li class="nav-item">--%>
<%--            <a  class="nav-link px-5 font-weight-bold active" data-mdb-toggle="button" href="#add_Person" role="tab" aria-selected="true">Add Person</a>--%>
<%--        </li>--%>

<%--        <li class="nav-item">--%>
<%--            <a  class="nav-link px-5 font-weight-bold" data-mdb-toggle="button" href="#view_Person" role="tab" aria-selected="false">View Person</a>--%>
<%--        </li>--%>
<%--    </ul>--%>
<%--</div>--%>

<%--<div id="add_Person" class="tab-pane fade in active">--%>
<%--    <p>Hello, Sambit Add Person</p>--%>
<%--</div>--%>

<%--<div id="view_Person" class="tab-pane fade in active">--%>
<%--    <p>Hello, Sambit View Person</p>--%>
<%--</div>--%>



<%--<div class="tab-content">--%>
<%--<div class="tab-pane fade in active" role="tabpanel" id="add_Person">Hello Sambit, Welcome.</div>--%>
<%--<div class="tab-pane fade" role="tabpanel" id="view_Person">Hello Sambit, GoodBye.</div>--%>
<%--</div>--%>



</body>
</html>
