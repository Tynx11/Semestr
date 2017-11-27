
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
            <#if avto == "yes">
                <li><a class="" href="/logout"><h3>Выйти</h3></a></li>
            <#else>
                <li><a href="/login"><h3>Войти</h3></a></li>
            </#if>
        </div><!--/.nav-collapse -->
    </div><!--/.container-fluid -->
</div>
</div>
