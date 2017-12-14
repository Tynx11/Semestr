<#ftl encoding="utf-8"/>
<!DOCTYPE html>
<html>

<head>
    <title>Админ</title>
    <script src="js/jquery-3.1.1.js"></script>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="css/lightcase.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/MyStyle.css" media="screen" type="text/css" />



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
        <div class="row">
            <div class="col-m-12" style="margin-top: 40px; text-align: center; margin-bottom: 0px" >
            </div>
        </div>
        <div class="row" style="margin-left: 0px;margin-top: 50px;margin-right: 0px ;margin-bottom: 0px" >
            <section id = "content">
                <ul class ="list-group" style="margin-bottom: 0px" >
                    <#list tables as g>
                        <li class ="list-group-item" style="border: 0px #fff; background: linear-gradient( #f3e6f5, #ffffff)"><div class="row" style="margin-top: 0px" >
                            <div class="col-md-12" style="margin-top: 20px; margin-bottom: 20px " >
                                <a href="/admingo?par=${g}"><h6 align=center>${g}</h6></a>
                            </div>
                        </div>
                        </li >
                    </#list>
                </ul>
            </section>


        </div>

    </div>
</div>




</body>
</html>