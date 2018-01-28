<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/11
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AnyQuantour</title>
    <link rel="stylesheet" href="../static/bootstrap/css/bootstrap.min.css"/>
    <script src="../static/bootstrap/js/bootstrap.min.js"></script>
    <script src="../static/echarts/echarts.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../static/js/basement.js"></script>
    <link rel="stylesheet" href="../static/css/base-style.css"/>
    <link rel="stylesheet" href="../static/css/stock.css"/>
    <script type="text/javascript" language="JavaScript">
        function search(data){
            alert(data);
        }
        var stockname=<%=request.getParameter("stockname")%>;

        search(stockname);
    </script>
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
                        <li class=""><a href="/index">首页</a></li>
                        <li class=""><a href="/analyze">分析</a></li>
                    </ul>
                    <div class="searchwrap" align="right">
                        <form action="../stockinfo/stock.jsp">
                            <input class="searchbox" type="search" name="stockname" placeholder="搜索股票">
                            <button class="searchbutton" type="submit" id="search_button"><img src="../static/images/icon/search.png" style="width: 20px;height:20px;padding:0;z-index: 0;position: relative;"></button>
                        </form>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</div>

<div class="content">
    <div class="container masking">
        <div class="stock-info" data-spm="2">
            <div>
                <h1>
                    亨通光电 (<span>600487</span>)
                    <span class="time">未开盘 2017-05-11 &nbsp;15:00:03</span>
                </h1>
                <div class="price">
                    <strong>22.91</strong>
                    <span>+0.62</span>
                    <span>+2.78%</span>
                </div>
                <div class="stockContent">

                    <div>
                        <dl><dt>今开</dt><dd>22.51</dd></dl>
                        <dl><dt>成交量</dt><dd>26.22万手</dd></dl>
                        <dl><dt>最高</dt><dd>22.93</dd></dl>
                        <dl><dt>涨停</dt><dd>24.52</dd></dl>
                        <dl><dt>内盘</dt><dd>12.70万手</dd></dl>
                        <dl><dt>成交额</dt><dd>5.92亿</dd></dl>
                        <dl><dt>委比</dt><dd>-15.36%</dd></dl>
                        <dl><dt>流通市值</dt><dd>284.37亿</dd></dl>
                        <dl><dt>市盈率<sup>MRQ</sup></dt><dd>25.60</dd></dl>
                        <dl><dt>每股收益</dt><dd>0.22</dd></dl>
                        <dl><dt>总股本</dt><dd>12.41亿</dd></dl>
                        <div class="clear"></div>
                    </div>

                    <div>
                        <dl><dt>昨收</dt><dd>22.29</dd></dl>
                        <dl><dt>换手率</dt><dd>2.11%</dd></dl>
                        <dl><dt>最低</dt><dd>22.10</dd></dl>
                        <dl><dt>跌停</dt><dd>20.06</dd></dl>
                        <dl><dt>外盘</dt><dd>13.52万手</dd></dl>
                        <dl><dt>振幅</dt><dd>3.72%</dd></dl>
                        <dl><dt>量比</dt><dd>0.77</dd></dl>
                        <dl><dt>总市值</dt><dd>284.37亿</dd></dl>
                        <dl><dt>市净率</dt><dd>4.61</dd></dl>
                        <dl><dt>每股净资产</dt><dd>4.97</dd></dl>
                        <dl><dt>流通股本</dt><dd>12.41亿</dd></dl>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>

        <div class="chartpanel">
            <div class="tabs" data-spm="2">
                <ul id="main-chart-tab">
                    <li class="" data-tab-index=0 data-spm="1">日K</li>
                    <li class="" data-tab-index=1 data-spm="2">周K</li>
                    <li class="current" data-tab-index=2 data-spm="3">月K</li>
                </ul>
            </div>
            <div class="charts" id="main-chart" data-spm="2">
                <div  class="chart-wrapper" style="display:none">
                    <p>日K</p>
                    <canvas id="daily-k-chart"  height="400"></canvas>
                </div>
                <div  class="chart-wrapper" style="display:none">
                    <p>周K</p>
                    <canvas id="weekly-k-chart"  height="400"></canvas>
                </div>
                <div class="chart-wrapper">
                    <canvas id="monthly-k-chart" width="1000" height="600"></canvas>
                    <!--<div id="main" style="width: 600px;height:400px;"></div>-->
                </div>
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

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('monthly-k-chart'));
    // 显示标题，图例和空的坐标轴
    myChart.setOption({
        title: {
            text: '异步数据加载示例'
        },
        tooltip: {},
        legend: {
            data:['销量']
        },
        xAxis: {
            data: []
        },
        yAxis: {},
        series: [{
            name: '销量',
            type: 'bar',
            data: []
        }]
    });

    myChart.showLoading();

    // 异步加载数据
    $.get('data.json').done(function (data) {
        myChart.hideLoading();
        // 填入数据
        myChart.setOption({
            xAxis: {
                data: data.categories
            },
            series: [{
                // 根据名字对应到相应的系列
                name: '销量',
                data: data.data
            }]
        });
    });


    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>

</body>
</html>