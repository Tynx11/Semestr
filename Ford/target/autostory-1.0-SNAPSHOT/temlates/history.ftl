<#ftl encoding="utf-8"/>
<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <title>Статья</title>
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
                <h6>${story.name}</h6>
            </div>
            <div class="col-md-12" style="margin-left: 20px;margin-right: 20px">
                <div class="col-md-5" >

                    <p class="lead">${story.shortstory}</p>
                </div>
                <div class="col-md-7" style="margin-top: 20px">
                    <img class="img-responsive" src="${story.photo}" alt="">
                </div>
            </div>
            <div class="col-md-12" style="margin-left: 20px;margin-right: 20px" >
                <p class="lead" style="margin-left: 15px ;margin-right: 40px">${story.story}</p>
            </div>

            <#if avto == "yes">

                <form action="/favourites?par=add&id=${story.id}" method="post">
                    <input type="submit" name="reg" id="reg" value="Добавить в избранное" class="button"/>
                </form>
                </#if>

            <#if avto == "yes">
                    <form action="/history?id=${story.id}" method="post">
                        <div class = "row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8" style="margin-top: 20px; " >
                                <div class="well">
                                    <h4>Напишите комментраий</h4>
                                    <form role="form">
                                        <div class="form-group">
                                            <textarea class="form-control" id="text" name="text" rows="3"></textarea>
                                        </div>
                                        <input type="submit" class="btn btn-primary" value="отправить"/>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </form>
            </#if>
                    <div class="row" align="center">
                        <a id = "commentclick"><h4>Комментарии</h4></a>
                    </div>

                    <div class = "row">

                        <script>
                            $(document).ready(function () {
                                $('#commentclick').click(function (event) {
                                    event.preventDefault()
                                    $('#comment').height(300);
                                });
                            });
                        </script>

                        <div class="col-md-2"></div>

                        <div class="col-md-8" id="comment" style=" height: 0px; overflow-y: scroll; background-color: inherit">

                            <#list comments as g>
                                <#if g.story_id == story.id>
                                    <div class="media">
                                        <div class="media-body">
                                            <h4 class="media-heading"><#if g.user_id?has_content>
                                                ${g.user_id}
                                            <#else>
                                                Аноним
                                            </#if>
                                                <small>${g.date}</small>
                                            </h4>
                                            ${g.text}
                                        </div>
                                    </div>
                                </#if>
                            </#list>

                        </div>


                    </div>


                </div>



            </div>
        </div>

    </div>
</div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>