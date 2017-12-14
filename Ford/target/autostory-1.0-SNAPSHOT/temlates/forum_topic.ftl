<#ftl encoding="utf-8"/>
<!DOCTYPE html>


<head>

    <meta charset="UTF-8">
    <title>Тема форума</title>
    <link rel="stylesheet" href="css/lightcase.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/MyStyle.css" media="screen" type="text/css" />
    <script src="js/jquery-3.1.1.js"></script>



</head>

<body>


<#include "baseuaer.ftl">
<div class="container">
    <div class="body2">
        <div class="row">
            <div class="col-m-12" style="margin-top: 140px; text-align: center; margin-bottom: 20px" >
                <h6>${name}</h6>
            </div>

            <ul>
                <#list messages as g>
                    <li>
                        <div class = "row" style="margin-top: 40px" >
                            <div class="col-md-1"></div>
                            <div class="col-md-3">
                                <h4 class="media-heading"><#if g.user_name?has_content>
                                ${g.user_name}
                                <#else>
                                    Аноним
                                </#if>
                                    <small>${g.date}</small>
                                </h4>
                            </div>


                            <div class="col-md-7">
                                <div class="media">
                                    <div class="media-body">
                                        ${g.text}
                                    </div>
                                </div>

                            </div>
                        </div>
                    </li>
                </#list>
            </ul>

            <hr>

            <#if avto == "yes">
                <form action="/forum_topic?topic=${topic}&name=${name}&number=${number}" id="f1" method="post">
                    <div class = "row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8" style="margin-top: 20px; " >
                            <div class="well">
                                <h4>Напишите комментраий</h4>
                                <form role="form">
                                    <div class="form-group">
                                        <textarea class="form-control" id="text" name="text" required="" rows="3"></textarea>
                                    </div>
                                    <input type="submit" class="btn btn-primary" value="Отправить"/>
                                </form>
                            </div>
                        </div>
                    </div>
                </form>
            </#if>

            <div class="col-md-3" style="margin-top: 20px; " ></div>

        <ul class="pagination">
            <#if number != 1>
                <li><a href="/forum_topic?topic=${topic}&name=${name}&number=${number - 1}">&laquo;</a></li>
            </#if>
            <#list page as g>
                <li><a href="/forum_topic?topic=${topic}&name=${name}&number=${g}">${g}</a></li>
            </#list>
            <#if number != max>
                <li><a href="/forum_topic?topic=${topic}&name=${name}&number=${number + 1}">&raquo;</a></li>
            </#if>
        </ul>

        </div>
    </div>
</div>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>