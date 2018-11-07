#!/usr/bin/env python

import BaseHTTPServer, SimpleHTTPServer
import ssl

print 'https://localhost:4443'

httpd = BaseHTTPServer.HTTPServer(('localhost', 4443), SimpleHTTPServer.SimpleHTTPRequestHandler)
httpd.socket = ssl.wrap_socket (httpd.socket, server_side=True,
                                certfile='server.pem')
httpd.serve_forever()
