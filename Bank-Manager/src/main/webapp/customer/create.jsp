<%--
  Created by IntelliJ IDEA.
  User: vothao
  Date: 03/11/2021
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Create new customer</title>
    <link rel="stylesheet" href="/assets/fontawesome-free-6.0.0-beta2-web/css/all.css">
    <link rel="stylesheet" href="/assets/css/bootstrap-5.1.3-dist/css/bootstrap.min.css">

    <style>
        .row {
            margin-left: 20px;
            margin-right: 20px;
        }

        .row > * {
            padding-right: calc(var(--bs-gutter-x) / 2);
            padding-left: calc(var(--bs-gutter-x) / 2);
            padding-top: 20px;
        }

        #header {
            background-color: #0a58ca;
            height: 100px;
            color: white;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row" id="header">
        <div class="col-md-6">
            <h1>Create customer</h1>
        </div>
        <div class="col-md-6">
            <button type="button" class="btn btn-outline-light" style="float: right;"
                    onclick="window.location.href='/customers'">
                <i class="fa fa-list"></i>
                <span>Customers List</span>
            </button>
        </div>
    </div>

    <form method="post">
        <div class="row">
            <div class="col-md-6">
                <label class="form-label">Full name</label>
                <input type="text" class="form-control" id="fullName" name="fullName" value="">
            </div>
            <div class="col-md-6">
                <label class="form-label">Email</label>
                <input type="text" class="form-control" id="email" name="email" value="">
            </div>
            <div class="col-md-6">
                <label class="form-label">Phone</label>
                <input type="text" class="form-control" id="phone" name="phone" value="">
            </div>
            <div class="col-md-6">
                <label class="form-label">Address</label>
                <input type="text" class="form-control" id="address" name="address" value="">
            </div>

            <div class="col-md-12">
                <br>
                <button type="submit" id="btnCreateCustomer" class="btn btn-outline-primary">
                    <i class="fa fa-plus"></i>
                    Create customer
                </button>
            </div>
        </div>
    </form>
    <div class="row">
        <div id="footer" class="col-md-12">
            <p style="color: green">
                <c:if test='${requestScope["message"] != null}'>
                    <span class="message">${requestScope["message"]}</span>
                </c:if>
            </p>
            <p style="color: red">
                <c:if test='${requestScope["messageFullName"] != null}'>
                    <span class="message">${requestScope["messageFullName"]}</span>
                </c:if>
            </p>
            <p style="color: red">
                <c:if test='${requestScope["messageEmail"] != null}'>
                    <span class="message">${requestScope["messageEmail"]}</span>
                </c:if>
            </p>
        </div>
    </div>
</div>
</body>
</html>
