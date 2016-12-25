#!/usr/bin/python
from wsgiref.simple_server import make_server
from cgi import parse_qs, escape
def app(env, start_response):
    qs = parse_qs(env['QUERY_STRING'])
    for key in qs:
        otvet=otvet+key+"="+qs[key]+"\r\n"
    start_response('200 OK', [('Content-Type','text/plain')])
    #return [b"Hello World"] # python3
    return otvet # python2
    
