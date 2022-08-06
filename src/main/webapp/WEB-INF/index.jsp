<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>
    <title>Ninja Gold Game</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

</head>

<body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

<div class="p-5">
    <div class="container">
        <h1 id="title" class="display-3 text-center mx-auto w-75">Ninja Gold Game</h1>
        <div class="d-flex align-items-center justify-content-between">
            <div class="m-3 d-flex justify-content-center flex-column align-items-center">
                <label class="form-label w-50 bg-round">Your Gold:</label>
                <input type="text" name="gold" class="form-control" value="<c:out value="${gold}" />" disabled>
            </div>
            <div class="m-3">
                <a id="startOver" class="btn btn-primary" href="/destroy" role="button">Start Over</a>
            </div>
        </div>
        <hr class="my-2">

        <div id="locations" class="container d-flex justify-content-center align-items-center">
            <div id="farm" class="col-3 border border-2 border-dark rounded m-2 d-flex flex-column align-items-start">
                <h1 class="m-3">Farm</h1>
                <p class="m-3">(earns 10-20 gold)</p>
                <a class="findBtn btn btn-primary mb-2 align-self-center" href="/process_money?location=farm" role="button">
                    FindGold!
                </a>
            </div>
            <div id="cave" class="col-3 border border-2 border-dark rounded m-2 d-flex flex-column align-items-start">
                <h1 class="m-3">Cave</h1>
                <p class="m-3">(earns 10-20 gold)</p>
                <a class="findBtn btn btn-primary mb-2 align-self-center" href="/process_money?location=cave" role="button">
                    FindGold!
                </a>
            </div>
            <div id="house" class="col-3 border border-2 border-dark rounded m-2 d-flex flex-column align-items-start">
                <h1 class="m-3">House</h1>
                <p class="m-3">(earns 10-20 gold)</p>
                <a class="findBtn btn btn-primary mb-2 align-self-center" href="/process_money?location=house" role="button">
                    FindGold!
                </a>
            </div>
            <div id="quest" class="col-3 border border-2 border-dark rounded m-2 d-flex flex-column align-items-start">
                <h1 class="m-3">Quest</h1>
                <p class="m-3">(earns/takes 0-50 gold)</p>
                <a class="findBtn btn btn-primary mb-2 align-self-center" href="/process_money?location=quest" role="button">
                    FindGold!
                </a>
            </div>
        </div>

        <div class="container mt-3">
            <div class="mb-3">
                <label for="activities" class="form-label fs-3 bg-round">Activities:</label>
                <div id="activities" class="form-control border border-2 border-dark">
                    <c:forEach var="activity" items="${activites}">
                        <p class="
                            <c:if test="${activity.contains('failed')}">
                                text-danger
                            </c:if>
                           <c:if test="${!activity.contains('failed')}">
                                text-success
                           </c:if>
                            ">
                            <c:out value="${activity}"/>
                        </p>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>