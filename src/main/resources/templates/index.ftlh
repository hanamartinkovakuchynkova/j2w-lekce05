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
                <div class="d-flex">
                    <input class="form-control me-2" name="query" type="search" placeholder="Search" aria-label="Search" value="${query!}">
                    <button class="btn btn-outline-light" type="submit">Search</button>
                </div>
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
                    <a href="/${person?index}" class="btn btn-secondary"><i class="bi bi-person-fill-gear" role="img" aria-label="Edit"></i></a>
                    <button type="submit" class="btn btn-secondary"><i class="bi bi-person-x-fill" role="img" aria-label="Delete"></i></button>
                </td>
            </tr>
        [/#list]
        </tbody>
    </table>
</div>
</body>
</html>
