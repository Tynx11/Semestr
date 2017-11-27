<#ftl encoding="utf-8"/>
<!DOCTYPE html>
<html>

<head>

    <title>Админ</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/MyStyle.css" media="screen" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/MyStyle.css" media="screen" type="text/css" />
    <script src="js/jquery-3.1.1.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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

<div class = "container">
    <section id = "content">
        <table class="table table-bordered">
        <#if users?has_content>
            <script type="application/javascript">
                var f = function() {
                    $.ajax({
                        'url': '/ajax-search?table=users&column=login',
                        'data': {
                            'search-input': $("#search-input").val()
                        },
                        'method': 'get',
                        'success': function(obj) {
                            $("#res").html(obj.result.join(", "));
                        }
                    });
                }
            </script>

                <div class="input-group" style="width: 400px; margin-top: 100px">
                    <form action="/admingo?par=searchusers" method="post">
                        <input type="text" autocomplete="off" class="form-control" placeholder="Search" name="search-input" id="search-input" oninput="f()">
                        <span class="input-group-btn">
                            <button class="btn" id="srchbtn" type="btn-default">
                                <i class="fa fa-search" aria-hidden="true">
                                    <span class="glyphicon glyphicon-search"></span>
                                </i>
                            </button>
                        </span>
                    </form>
                </div>

                <#--<form action="/admingo?par=sortusers" method="post">-->
                    <#--<div class="btn-group" style="margin-bottom: 200px">-->
                        <#--<button type="button" style="margin-right: 25px" class="btn" data-toggle="dropdown">-->
                            <#--Сортировка-->
                        <#--</button>-->
                        <#--<ul class="dropdown-menu" role="menu">-->
                            <#--<li><input type="submit" id="name" name="name" value="name"></li>-->
                            <#--<li><a>login</a></li>-->
                            <#--<li><a>id</a></li>-->
                        <#--</ul>-->
                    <#--</div>-->
                <#--</form>-->

            <ul>
                <li id="res"/></li>
            </ul>
            <form action="/admingo?par=users" method="post" >
                <div class="row">
                    <div class="col-md-12"></div>
                        <tr>
                            <th>id</th>
                            <th><input type="text" name="name" id="name"  placeholder="Имя" value="" style="color: black" size="8"/></th>
                            <th><input type="text" name="login" required="" id="login"  placeholder="Логин&nbsp;*" value="" style="color: black"  size="8"/></th>
                            <th><input type="password" name="password" required="" id="password"  placeholder="Пароль&nbsp;*" value="" style="color: black" size="20"/></th>
                            <th><input type="text" name="mail" id="mail"   placeholder="Электронная почта" value="" style="color: black" size="12"/></th>
                            <th><input type="text" name="town" id="town" placeholder="Город" value="" style="color: black" size="8"/></th>
                            <th><input type="text" name="about" id="about" placeholder="О себе" value="" style="color: black" size="12"/></textarea></th>
                            <th><input type="submit" name="reg" id="reg" value="Добавить" style="font-size: 15px"/></th>
                        </tr>
                    </div>
                </div>
            </form>
            <thead style="background-color: #222; border-color: #080808;">
                <tr>
                    <th style="color: white">
                        Номер
                    </th>
                    <th style="color: white">
                        имя
                    </th>
                    <th style="color: white">
                        логин
                    </th>
                    <th style="color: white">
                        пароль(хэш)
                    </th>
                    <th style="color: white">
                        маил
                    </th>
                    <th style="color: white">
                        город
                    </th>
                    <th style="color: white">
                        о себе
                    </th>
                </tr>
            </thead>
            <#list users as g>
            <tbody>
                <tr>
                    <#if g.id?has_content>
                        <td>${g.id}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <#if g.name?has_content>
                        <td>${g.name}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <#if g.login?has_content>
                        <td>${g.login}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <#if g.password?has_content>
                        <td>${g.password}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <#if g.email?has_content>
                        <td>${g.email}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <#if g.town?has_content>
                        <td>${g.town}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <#if g.about?has_content>
                        <td>${g.about}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <form action="/admingo?par=deleteuser&id=${g.id}" method="post">
                        <th><input type="submit" name="reg" id="reg" value="Удалить" style="font-size: 15px"/></th>
                    </form>
            </tbody>
            </#list>
        </#if>
        <#if comment_stories?has_content>
            <thead style="background-color: #222; border-color: #080808;">
            <tr>
                <th style="color: white">
                    Номер
                </th>
                <th style="color: white">
                    Пользователь
                </th>
                <th style="color: white">
                    История
                </th>
                <th style="color: white">
                    Текст
                </th>
                <th style="color: white">
                    Дата
                </th>
            </tr>
            </thead>
            <#list comment_stories as g>
                <tbody>
                <tr>
                    <#if g.id?has_content>
                        <td>${g.id}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <#if g.user_id?has_content>
                        <td>${g.user_id}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <#if g.story_id?has_content>
                        <td>${g.story_id}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <#if g.text?has_content>
                        <td>${g.text}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <#if g.date?has_content>
                        <td>${g.date}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                </tr>
                </tbody>
            </#list>
        </#if>
        <#if stories?has_content>
            <thead style="background-color: #222; border-color: #080808;">
            <tr>
                <th style="color: white">
                    Номер
                </th>
                <th style="color: white">
                    История
                </th>
                <th style="color: white">
                    фото
                </th>
                <th style="color: white">
                    страна
                </th>
                <th style="color: white">
                    время
                </th>
            </tr>
            </thead>
            <#list stories as g>
                <tbody>
                <tr>
                    <#if g.id?has_content>
                        <td>${g.id}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <#if g.story?has_content>
                        <td>${g.story}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <#if g.photo?has_content>
                        <td>${g.photo}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <#if g.country?has_content>
                        <td>${g.country}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                    <#if g.time?has_content>
                        <td>${g.time}</td>
                    <#else>
                        <td>нет</td>
                    </#if>
                </tr>
                </tbody>
            </#list>
        </#if>
        </table>
    </section>

</div>

</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>