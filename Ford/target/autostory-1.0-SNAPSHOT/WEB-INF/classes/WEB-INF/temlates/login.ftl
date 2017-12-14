<#ftl encoding='utf-8'/>
<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/MyStyle.css" media="screen" type="text/css" />
    <script src="js/jquery-3.1.1.js"></script>
</head>

<body>
<#if err?has_content>
<h>${err}</h>
</#if>
<div class="center-wrap">
    <div class="login-wrap">


        <form method = "post" action="/login" class="login-form">
            <h1 class="freeb">Вход</h1>
            <div class="input-wrap">
            <#if login?has_content>
                <label for="" class="user-id"><input type="text" name="login" placeholder="Ваш логин" value="${login}"></label>
            <#else>
                <label for="" class="user-id"><input type="text" name="login" placeholder="Ваш логин"></label>
            </#if>
                <hr class="form-hr">
                <label for="" class="password"><input type="password" name="password" placeholder="Ваш сложный пароль"></label>
            </div>
            <div class="remember">
                <span>Запомнить?</span>
                <div class="switch">
                    <input type="checkbox" id="switch" name="switch" class="switch-check" checked="checked">
                    <label for="switch" class="switch-label">
                        <span class="switch-slider switch-slider-on"></span>
                        <span class="switch-slider switch-slider-off"></span></label>

                </div>
            </div>
            <input type="submit" class="button" value="ВОЙТИ">
            <h>Новый пользователь?<a href="/regestration" class="forgot">Регистрация</a></h>
            <h>Забыли пароль?<a href="#" class="forgot">Напомнить</a></h>
        </form>

    </div>
</div>
</body>
</html>

