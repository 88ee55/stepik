#!/usr/bin/python
#from wsgiref.simple_server import make_server
#from cgi import parse_qs, escape
def app(env, start_response):
    qs=environ['QUERY_STRING']
    otvet=qs.replace("&",r"\r\n")
    start_response('200 OK', [('Content-Type','text/plain')])
    #return [b"Hello World"] # python3
    return otvet # python2
    
