<#ftl encoding="utf-8"/>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>История Моды</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/MyStyle.css" media="screen" type="text/css" />
    <script src="js/jquery-3.1.1.js"></script>
</head>

<body>

<#include "baseuaer.ftl">
<div class="container">
    <div class="body2">
        <div class="col-md-12" style="margin-top: 40px; text-align: center; margin-bottom: 20px" ></div>

        <div class="row" style="margin-left: 30px;margin-right: 30px" >

            <#list stories as g>

            <div class="row" style="margin-top: 80px" >

                <div class="col-md-12" style="margin-top: 20px; " >

                    <h6 align=center>
                    <#if g.name?has_content>
                        ${g.name}
                    </#if>
                    </h6>

                    <div class="col-md-12">
                        <p class="lead"><#if g.shortstory?has_content>${g.shortstory}</#if><a href="/history?history=${g.id}">читать далее</a></p>
                    </div>

                </div>
            </div>

            <hr>
            </#list>
                <hr>

        </div>
    </div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>