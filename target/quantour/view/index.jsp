<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AnyQuantour</title>
    <link rel="stylesheet" href="../static/bootstrap/css/bootstrap.min.css"/>
    <script src="../static/bootstrap/js/bootstrap.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="../static/css/base-style.css"/>
</head>
<body>
<div class="header">
    <div class="headerimage" style="">
        <nav>
            <div class="navbar navbar-inverse navbar-fixed-top">
                <div>
                    <div class="navbar-hedaer">
                        <a class="navbar-brand" href="#">AnyQuantour</a>
                    </div>
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">首页</a></li>
                        <li class=""><a href="analyze">分析</a></li>
                    </ul>
                    <div class="searchwrap" align="right">
                        <input class="searchbox" type="search" placeholder="搜索股票">
                        <a id="search_button" href="#"><img src="../static/images/icon/search.png" style="width: 20px;height:20px;padding:0;z-index: 0;position: relative;"></a>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</div>
<div class="content">
    <div class="container masking">
        <div class="row">
            <div class="col-md-2 clu">
                <div class="modulelistwrap">
                    <div class="list-group block">
                        <div class="list-group-item table-head">热门板块</div>
                        <a data-toggle="mod" class="list-group-item active">测试1</a>
                        <a data-toggle="mod" class="list-group-item">测试1</a>
                        <a data-toggle="mod" class="list-group-item">测试1</a>
                    </div>
                </div>
            </div>
            <div class="col-md-8 clu">
                <div class="stocklistwrap" align="center">
                    <ul class="list-group block">
                        <li class="list-group-item table-head">
                            <div class="column">股票</div>
                            <div class="column">前一交易日涨跌幅</div>
                            <div class="column">前一交易日开盘价</div>
                            <div class="column">前一交易日收盘价</div>
                        </li>
                        <li class="list-group-item">

                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-2 clu">
                <div class="stockinfowrap">
                    <ul class="list-group ">
                        <li class="list-group-item table-head">股票信息</li>
                        <li class="list-group-item">测试1</li>
                        <li class="list-group-item">测试1</li>
                        <li class="list-group-item">测试1</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 clu">
                <div class="preserve">保留占位</div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 clu">
                <div class="preserve">保留占位</div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 clu">
                <div class="preserve">保留占位</div>
            </div>
        </div>
    </div>

</div>
<footer class="footer">
    <div class="container">
        <div class="row seperator"></div>
        <div class="row">
            <div class="col-sm-5 clu">
                <p>由AnyEight小组制作</p>
                <p>此网站为课程学习项目, 不允许用于商业用途.</p>
                <p>NJU Software Institute 2017.5</p>
            </div>
            <div class="col-sm-7"></div>
        </div>
    </div>
</footer>
</body>
</html>
