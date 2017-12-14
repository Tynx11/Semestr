<#ftl encoding="utf-8"/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Избранное</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/MyStyle.css" media="screen" type="text/css" />
    <script src="js/jquery-3.1.1.js"></script>
</head>

<body>

<div class="container">
    <div class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home"><h3>History of auto</h3></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="/home"><h3>Главная</h3></a></li>
                    <li><a href="/historyAuto"><h3>История авто</h3></a></li>
                    <li><a href="/photo"><h3>Галерея</h3></a></li>
                    <li><a href="/forum"><h3>Форум</h3></a></li>
                    <li><a href="/profile"><h3>Моя страница</h3></a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a class="" href="/logout"><h3>Выйти</h3></a></li>

            </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
    </div>
</div>

<div class="container">
    <div class="body2">
        <div class="col-md-12" style="margin-top: 40px; text-align: center; margin-bottom: 20px" >
        </div>
        <div class="col-md-12" style="margin-top: 40px; text-align: center; margin-bottom: 20px" >
            <h6>Favourites</h6>
        </div>

        <#if favourites?has_content>
            <#list favourites as g>
                <div class="row" style="margin-left: 30px;margin-right: 30px" >
                    <div class="row" style="margin-top: 80px" >
                        <div class="col-md-12" style="margin-top: 20px; " >

                            <h6 align=center>${g.name}</h6>
                            <div class="col-md-7">

                                <p class="lead">${g.shortstory}<a href="/history?history=${g.id}">читать далее</a></p>

                            </div>

                            <form action="/favourites?par=delete&id=${g.id}" method="post">
                                <input type="submit" style="margin-right: 25px;" class="btn btn-danger" value="удалить"/>
                            </form>

                            <div class="col-md-5" style="margin-top: 20px">
                                <img class="img-responsive" src="${g.photo}" alt="">
                            </div>
                        </div>
                    </div>
                    <hr>
                </div>
            </#list>
        <#else>
            <p>Избранных нет</p>
        </#if>

    </div>
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>