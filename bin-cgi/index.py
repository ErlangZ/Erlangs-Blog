# coding=utf-8
import cgi
import cgitb

cgitb.enable()
print "Content-Type: text/html"     # HTML is following
print                               # blank line, end of headers

print '''
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<base href="../">
<link rel="stylesheet" type="text/css" href="css/styles.css">
<title>ErlangZ的BLOG</title>
</head>

<body>
<div id="top">
<div id="headbar">
<div> <img id="logo" src="pic/little-one.jpg"> </div>
<div> <h1 id="moto">时间安稳，岁月静好</h1> </div>
</ul>
</div>

<div id="content">
<div id="left-bar">
<header id="left-bar-head">文章分类</header>
<ul id="left-bar-list">
<li>杨小溪饲养记录cc</li>
<li>吃喝玩乐</li>
</ul>
</div>
<div id="index">
<table></table>
</div>

</div>
</div>
</body>
</html>
'''