<#ftl encoding="utf-8"/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Profile</title>
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

    <div class="col-md-12" style="margin-top: 100px; text-align: center; margin-bottom: 20px" >
        <div class="col-md-5">
            <h3>Здравствуйте, ${name}</h3>
        </div>
    </div>

    <div class="row" style="margin-top: 80px">

        <div class="col-md-4">
            <ul style="margin-top: 10px; margin-bottom: 40px">
                <li class="list-group-item"><p>${name}</p></li>
                <li class="list-group-item"><p>${login}</p></li>
                <li class="list-group-item"><p><#if email?has_content>
                    <td>${email}</td>
                <#else>
                    <td>нет</td>
                </#if></p></li>
                <li class="list-group-item"><p><#if town?has_content>
                    <td>${town}</td>
                <#else>
                    <td>нет</td>
                </#if></p></li>
                <li class="list-group-item" style="margin-top: 20px"><#if about?has_content>
                    <td>${about}</td>
                <#else>
                    <td>нет</td>
                </#if></li>
            </ul>
            <button type="button" class="btn" style="margin-left: 41px; margin-bottom: 30px">
                <span class="glyphicon glyphicon-cog" style="margin-right: 5px"></span>
                <a href="/setting">Настройки</a>
            </button>
        </div>

        <div class="col-md-1"></div>

        <div class="col-md-7" style="margin-top: 10px">

                <div id="myCarousel" class="carousel slide" data-interval="10000" data-ride="carousel" style="margin-bottom: 40px">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="active item">
                            <img src="images/fashion/1.jpg">
                            <div class="carousel-caption">

                            </div>
                        </div>
                        <div class="item">
                            <img src="images/fashion/2.jpg">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <img src="images/fashion/3.jpg">
                            <div class="carousel-caption">
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="carousel-control right" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>

            <button type="button" class="btn" style="margin-left: 41px; margin-bottom: 30px">
                <span class="glyphicon glyphicon-star" style="margin-right: 5px"></span>
                <a href="/favourites">Избранное</a>
            </button>

        </div>

    </div>
</div>


    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>

</body>

</html>