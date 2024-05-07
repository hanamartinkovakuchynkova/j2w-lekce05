[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    [#include "_common/header.ftlh"]
</head>
<body>

<div class="container">
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="/"><i class="bi-person-lines-fill" role="img"></i> Famous people</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                </ul>
                <form class="d-flex" method="get" action="/search">
                    <input class="form-control me-2" name="query" type="search" placeholder="Search" aria-label="Search" value="${query!}">
                    <button class="btn btn-outline-light" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>

    <h1 class="mt-5 mb-3">List of the most famous people</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Given name</th>
            <th scope="col">Last name</th>
            <th scope="col">Gender</th>
            <th scope="col">Birth date</th>
            <th scope="col"></th>
        </tr>
        </thead>
        <tbody>
        [#list people as person]
            <tr>
                <td>${person?counter}</td>
                <td>${person.givenName}</td>
                <td>${person.lastName}</td>
                <td>
                    [#if person.gender.name() == "Female"]
                        <i class="bi bi-gender-female" role="img" aria-label="Female"></i>
                    [#elseif person.gender.name() == "Male"]
                        <i class="bi bi-gender-male" role="img" aria-label="Male"></i>
                    [/#if]
                </td>
                <td>${person.birthDate?date}</td>
                <td>
                    [#if !query??]
                    [#-- Indexy se vztahují k celému seznamu, takže zobrazení detailu a mazání zatí povolíme jen pro nefiltrovaný seznam. --]
                        <a href="/${person?index}" class="btn btn-secondary"><i class="bi bi-person-fill-gear" role="img" aria-label="Edit"></i></a>
                        <form method="post" action="/delete" class="d-inline">
                            <input type="hidden" name="id" value="${person?index}"/>
                            <button type="submit" class="btn btn-secondary"><i class="bi bi-person-x-fill" role="img" aria-label="Delete"></i></button>
                        </form>
                    [/#if]
                </td>
            </tr>
        [/#list]
        </tbody>
    </table>

    <h2 class="mt-5 mb-3">Append new person</h2>
    <form action="/" method="post" class="row g-3">
        <div class="col-md-3">
            <label for="given-name" class="form-label">Given name</label>
            <input id="given-name" name="givenName" class="form-control" type="text" value=""/>
        </div>
        <div class="col-md-4">
            <label for="last-name" class="form-label">Last name</label>
            <input id="last-name" name="lastName" class="form-control" type="text" value=""/>
        </div>
        <div class="col-md-2">
            <label for="birth-date" class="form-label">Birth date</label>
            <input id="birth-date" name="birthDate" class="form-control" type="date" value=""/>
        </div>
        <div class="col-md-2">
            <label for="gender" class="form-label">Gender</label>
            <select id="gender" name="gender" class="form-select" value="">
                [#list gender as item]
                    <option value="${item.name()}">${item.title}</option>
                [/#list]
            </select>
        </div>
        <div class="col-md-1 align-self-end">
            <button type="submit" class="btn btn-primary"><i class="bi bi-person-plus-fill" role="img" aria-label="Append"></i></button>
        </div>
    </form>
</div>
</body>
</html>
