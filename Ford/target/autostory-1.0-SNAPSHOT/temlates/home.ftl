<#ftl encoding="utf-8"/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/MyStyle.css" media="screen" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="js/jquery-3.1.1.js"></script>
</head>

<body>


<#include "baseuaer.ftl">
<div class="container">

    <div class="col-md-12" style="margin-top: 40px; text-align: center; margin-bottom: 20px" >
    </div>

    <div class="row" style="margin-top: 80px">
        <div class="col-md-3">
            <h3 align=center>Избранное</h3>

            <ul style="margin-top: 0px; margin-bottom: 40px">
                <#if favourites?has_content>
                        <#list favourites as g>
                            <li class="list-group-item"><a href="/history?history=${g.id}"><h3>${g.name}</h3></a></li>
                        </#list>
                    <#else>
                        <li class="list-group-item"><h3>избранных нет</h3></li>
                </#if>
            </ul>

        </div>
        <div class="col-md-1"></div>
        <div class="col-md-8" style="margin-top: 10px">

            <div id="myCarousel" class="carousel slide" data-interval="10000" data-ride="carousel">
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
                        <img src="images/fashion/8.jpg">
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


            <br>
            <br>

            <h3 align=center>Рейтинг статей</h3>
            <ul style="margin-top: 0px; margin-bottom: 40px">
            <#list top as g>
                <li class="list-group-item"><a href="/history?history=${g.id}"><h3>${g.time}:${g.name}</h3></a></li>
            </#list>
            </ul>







        </div>
    </div>
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>

</html>