<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Our Funky To Do Page</title>
        <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <div>
                <h1>Welcome to todos page ${name}</h1>
                <h1>Your Todos</h1>
                <table class="table">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>Description</th>
                            <th>Target Date</th>
                            <th>Is Done?</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${todos}" var="todo">
                            <tr>
                                <td>${todo.id}</td>
                                <td>${todo.description}</td>
                                <td>${todo.target}</td>
                                <td>${todo.done}</td>
                                <td><a href="delete-todo?id=${todo.id}" class="btn btn-warning">DELETE</a></td>
                                <td><a href="update-todo?id=${todo.id}" class="btn btn-success">UPDATE</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <a href="add-todo" class="btn btn-success">Add Todo</a>
            </div>
            <script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
            <script src="webjars/jquery/3.6.4/jquery.min.js"></script>
        </div>
    </body>
</html>