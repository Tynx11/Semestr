<#ftl encoding="utf-8"/>
<!DOCTYPE html>
<html>

<head>

    <meta charset="UTF-8">
    <title>Photo Gallerey</title>
    <link rel="stylesheet" href="css/lightcase.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/MyStyle.css" media="screen" type="text/css" />
    <script src="js/jquery-3.1.1.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="js/lightcase.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $('a[data-rel^=lightcase]').lightcase();
        });
    </script>

</head>

<body>


<#include "baseuaer.ftl">

<div class="container">
    <div class="body2">
        <div class="col-md-12" style="margin-top: 40px; text-align: center; margin-bottom: 20px" >
        </div>
        <div class="row" style="margin-left: 30px;margin-right: 30px" >
            <div class="row" style="margin-top: 80px" >
                <h6 align=center>Фотогалерея</h6>

                <#list photos as g>
                    <div class="col-md-3" style="margin-top: 40px">
                        <a href="${g.photo}" data-rel="lightcase"  >
                            <img class="img-responsive" src="${g.photo}" >
                        </a>
                    </div>
                </#list>

            </div>

            <hr>

        </div>

</div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>