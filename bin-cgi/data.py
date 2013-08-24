#! /usr/bin/env python
# coding=utf-8
"prepare data for homepage"

homepage = '''
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

import element

class html(element):
	def __init__(self, children):
		element.__init__(self, "html", None, children)

class head(element):
	def __init__(self, children):
		children =  (logo(), moto())
		element.__init__(self, "head", None, *children)

class logo(element):
	def __init__(self):
		element.__init__(self, "img", "logo")
	def __build__(self):
		pass;

class moto(element):
	def __init__(self):
		element.__init__(self, "h1", "moto")

class body(element):
	def __init__(self, child):
		element.__init__(self, "body", None, children)



class left_bar(element):
	def __init__(self):
		element.__init__(self, "div", "left-bar")



class homepage:
	def __init__(self, content):
		self.content = content;

	def __str__(self):
		return '\n'.join(("<!DOCTYPE html>", content));



def test():
	ele = element("div", "left-bar", "child-element","p-element");
	hp = homepage(ele)
	print(ele)
if __name__=="__main__":
	test()