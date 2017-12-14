<#ftl encoding="utf-8"/>
<!DOCTYPE html>
<html lang="ru">

<head>

    <meta charset="UTF-8">
    <title>Форум</title>
    <link rel="stylesheet" href="css/lightcase.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/MyStyle.css" media="screen" type="text/css" />
    <script src="js/jquery-3.1.1.js"></script>
    <script type="application/javascript" src="count.js" ></script>
    <script type="application/javascript" src="js/count.js"></script>


</head>

<body>




<#include "baseuaer.ftl">

<div class="container">
    <div class="body2">

        <div class="row">
            <div class="col-m-12" style="margin-top: 40px; text-align: center; margin-bottom: 20px" >
            </div>
        </div>
        <div class="row" style="margin-left: 30px;margin-top: 60px;margin-right: 30px" >


            <h6>Forum</h6>
        <#if err?has_content>
            <h>${err}</h>
        </#if>

            <#if avto == "yes">
                <form action="/forum" id="f1" method="post" >
                    <div class="btn-group" >
                        <button type="button" style="margin-right: 25px;" class="btn btn-primary" data-toggle="dropdown">
                            <span class="glyphicon glyphicon-pencil" style="margin-right: 7px"></span>
                            Создать тему
                        </button>
                        <ul class="dropdown-menu" role="menu" style="width: 240px; ">
                            <script type="application/javascript" src="count.js" > </script>
                            <input type="text" name="name" required="" id="name" class="form-control" placeholder="Название темы" style="color: black; "/></input>
                            <script type="application/javascript">
                                $('.dropdown-menu input, .dropdown-menu label').click(function(e) {
                                    e.stopPropagation();
                                });
                                var obj = document.getElementById("name");

                                obj.oninput = countSymbols;
                            </script>
                            <li><input type="submit" class="btn btn-primary" value="Создать"/></li>
                        </ul>
                    </div>
                </form>
            </#if>

            <div style="padding-top: 20px">
                <ul class ="list-group">
                    <#list topics as g>
                    <li class ="list-group-item"><a href="/forum_topic?topic=${g.id}&name=${g.name}&number=1">${g.name}</a></li>
                    </#list>
                </ul>
            </div>



        </div>

    </div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>