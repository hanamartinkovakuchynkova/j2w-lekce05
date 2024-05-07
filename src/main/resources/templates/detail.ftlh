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

    <h2 class="mt-5 mb-3">Person detail</h2>
    <div class="row g-3">
        <div class="col-md-3">
            <label for="given-name" class="form-label">Given name</label>
            <input id="given-name" name="givenName" class="form-control" type="text" value="${person.givenName!}"/>
        </div>
        <div class="col-md-4">
            <label for="last-name" class="form-label">Last name</label>
            <input id="last-name" name="lastName" class="form-control" type="text" value="${person.lastName!}"/>
        </div>
        <div class="col-md-2">
            <label for="birth-date" class="form-label">Birth date</label>
            <input id="birth-date" name="birthDate" class="form-control" type="date" value="${person.birthDate!?date?iso_local}"/>
        </div>
        <div class="col-md-2">
            <label for="gender" class="form-label">Gender</label>
            <select id="gender" name="gender" class="form-select" value="${person.gender!}">
                [#list gender as item]
                    <option value="${item.name()}">${item.title}</option>
                [/#list]
            </select>
        </div>
        <div class="col-md-1 align-self-end">
            <button type="submit" class="btn btn-primary"><i class="bi bi-person-check-fill" role="img" aria-label="Edit"></i></button>
        </div>
    </div>
</div>
</body>
</html>
