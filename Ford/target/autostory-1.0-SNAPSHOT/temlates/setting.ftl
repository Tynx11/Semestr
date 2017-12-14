<#ftl encoding="utf-8"/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Настройки</title>
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
        <div class="row" style="margin-left: 30px;margin-right: 30px" >
            <div class="col-md-12" style="margin-top: 40px; text-align: center; margin-bottom: 0px" >
            </div>
            <div class="col-md-12" style="margin-top: 100px; text-align: center; margin-bottom: 20px" >

                <form action="/setting?id=${id}" id="f1" method="post" >
                    <h1>Настройки</h1>
                    <div class = "row" style="margin-top:40px;margin-left:40px;margin-right:40px">
                        <div class="col-md-6">
                            <h3>Изменить пользовательские данные</h3>

                            <#if name?has_content>
                                <input type="text" name="name" id="name"  class="form-control" placeholder="Имя" value="${name}" style="color: black"/>
                            <#else>
                                <input type="text" name="name" id="name"  class="form-control" placeholder="Имя" value="" style="color: black"/>
                            </#if>

                            <#if email?has_content>
                                <input type="text" name="mail" id="mail"  class="form-control" placeholder="Электронная почта" value="${email}" style="color: black;margin-top:10px"/>
                            <#else>
                                <input type="text" name="mail" id="mail"  class="form-control" placeholder="Электронная почта" value="" style="color: black;margin-top:10px"/>
                            </#if>

                            <#if town?has_content>
                                <input type="text" name="town" id="town" class="form-control" placeholder="Город" value="${town}" style="color: black;margin-top:10px"/>
                            <#else>
                                <input type="text" name="town" id="town" class="form-control" placeholder="Город" value="" style="color: black;margin-top:10px"/>
                            </#if>

                            <#if login?has_content>
                                 <input type="text" name="login" id="login" class="form-control" placeholder="Логин" value="${login}" style="color: black;margin-top:10px"/>
                            <#else>
                                 <input type="text" name="login" id="login" class="form-control" placeholder="Логин" value="" style="color: black;margin-top:10px"/>
                            </#if>

                            <#if about?has_content>
                                <input type="text" name="about" id="about" class="form-control" placeholder="О себе" value="${about}" style="color: black;margin-top:10px"/>
                            <#else>
                                <input type="text" name="about" id="about" class="form-control" placeholder="О себе" value="" style="color: black;margin-top:10px"/>
                            </#if>

                        </div>


                        <div class="col-md-6">
                            <h3>Сменить пароль</h3>
                            <input type="password" name="password"  id="password" class="form-control" placeholder="Пароль" value="" style="color: black"/>
                        </div>

                    </div>


                    <div class = "row" style="margin-top:250px">
                        <br>
                        <input type="submit" name="reg" id="reg" value="Сохранить изменения" class="button" value=""/>
                        <br>
                        <p id="out"></p>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
</body>
</html>