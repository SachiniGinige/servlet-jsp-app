<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <html>

        <head>
            <title>Singithi PreSchool</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                    <div>
                        <a href="./" class="navbar-brand">Singithi</a>
                    </div>

                    <!-- <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Users</a></li>
                    </ul> -->
                </nav>
            </header>
            <br>

            <div class="row">

                <div class="container">
                    <h3 class="text-center">List of Students</h3>
                    <hr>
                    <div class="container text-left">
                        <a href="<%=request.getContextPath()%>/new" class="btn btn-info">Add New Student</a>
                    </div>
                    <br>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Contact No.</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>

                            <c:forEach var="student" items="${listStudent}">

                                <tr>
                                    <td>
                                        <c:out value="${student.id}" />
                                    </td>
                                    <td>
                                        <c:out value="${student.name}" />
                                    </td>
                                    <td>
                                        <c:out value="${student.email}" />
                                    </td>
                                    <td>
                                        <c:out value="${student.contactno}" />
                                    </td>
                                    <td><a href="edit?id=<c:out value='${student.id}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="delete?id=<c:out value='${student.id}' />">Delete</a></td>
                                </tr>
                            </c:forEach>

                        </tbody>

                    </table>
                </div>
            </div>
        </body>

        </html>