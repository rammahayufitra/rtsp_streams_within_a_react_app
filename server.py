# server.py
from http.server import SimpleHTTPRequestHandler, HTTPServer

class CORSRequestHandler(SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header('Access-Control-Allow-Origin', '*')
        self.send_header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS')
        self.send_header('Access-Control-Allow-Headers', 'X-Requested-With')
        SimpleHTTPRequestHandler.end_headers(self)

if __name__ == '__main__':
    server_address = ('', 8000)
    httpd = HTTPServer(server_address, CORSRequestHandler)
    print('Starting server on http://localhost:8000...')
    httpd.serve_forever()
