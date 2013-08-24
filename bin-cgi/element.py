#! /usr/bin/env python
# coding=utf-8

"定义基础的html类对象"

class element:
	def __init__(self, tagname, id=None, *children):
		self.tagname = tagname
		self.id = id
		self.children = children
		self.__build__()

	def __build__(self):
		if len(self.children) != 0:
			[ch.__build__() for ch in self.children]

	def __getidstr__(self):
		return "" if self.id == None else " ".join(('id="', str(self.id), '"'))

	def __getchildstr__(self):
		return "" if len(self.child) == 0 else "\n".join((str(ch) for ch in self.child))

	def __str__(self):
		content = ("<", self.tagname, self.__getidstr__(), '>\n', self.__getchildstr__(),  '\n<', self.tagname, "/>\n");
		return " ".join(content);