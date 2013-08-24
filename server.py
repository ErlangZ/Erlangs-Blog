# coding=gbk
import CGIHTTPServer
import BaseHTTPServer
PORT = 8000

Handler = CGIHTTPServer.CGIHTTPRequestHandler
Handler.cgi_directories = ['/bin-cgi']

httpd = BaseHTTPServer.HTTPServer(("", PORT), Handler)

print "serving at port", PORT
httpd.serve_forever()