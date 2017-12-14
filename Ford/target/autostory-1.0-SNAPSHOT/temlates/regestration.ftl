<#ftl encoding="utf-8"/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Регистрация</title>

    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/MyStyle.css" media="screen" type="text/css" />
    <script src="js/jquery-3.1.1.js"></script>

</head>

<body>


<div style="margin-top: 100px"></div>
<#if err?has_content>
    <h>${err}</h>
</#if>

<div class="center-wrap2">
    <div class="col-md-4 col-xs-1 col-sm-2" ></div>
    <div class="col-md-4 col-xs-10 col-sm-8">

        <form action="/regestration" id="f1" method="post" >
            <h1>Регистрация</h1>

            <input type="text" name="login" required="" id="login" class="form-control" placeholder="Логин&nbsp;*" value="" style="color: black"/>

            <input type="password" name="password" required="" id="password" class="form-control" placeholder="Пароль&nbsp;*" value="" style="color: black"/>

            <input type="password" name="passwordAgain"  required="" id="passwordAgain" class="form-control" placeholder="Повторите пароль&nbsp;*" value="" style="color: black"/>

            <input type="text" name="name" required="" id="name"  class="form-control" placeholder="Имя&nbsp;*" value="" style="color: black"/>

            <input type="text" name="mail" id="mail"  class="form-control" placeholder="Электронная почта" value="" style="color: black"/>

            <input type="text" name="town" id="town" class="form-control" placeholder="Город" value="" style="color: black"/>

            <textarea name="about" id="about" placeholder="Расскажите о себе" class="form-control input-contrast comment-form-textarea field" style="max-height: 233px; height: 100px; color: black;"></textarea>

            <br>
            *&nbsp;Обязательно для заполнения
            <br>
            <input type="submit" name="reg" id="reg" value="Регистрация" class="button"/>
            <br>
            <p id="out"></p>
        </form>
    </div>
    <div class="col-md-3 col-xs-1 col-sm-2"></div>
</div>
</body>
</html>