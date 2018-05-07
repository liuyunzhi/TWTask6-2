<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
    <style type="text/css">
        body, html{
            height: 100%;
            width: 100%;
        }
        table {
            margin: auto;
            border-collapse: collapse;
        }
        td {
            padding: 10px 100px;
            text-align: center;
            border: 1px solid #000;
        }
        table thead tr td{
            background: #000;
            color: #fff
        }
        table tbody tr:nth-child(odd){
            background: #ccc;
        }
    </style>
</head>
<body>
    <table>
        <thead>
            <tr>
                <td>编号</td>
                <td>姓名</td>
                <td>年龄</td>
                <td>性别</td>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${employees}" var="employee">
                <tr>
                    <td>${employee.getId()}</td>
                    <td>${employee.getName()}</td>
                    <td>${employee.getAge()}</td>
                    <td>${employee.getGender()}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
