require 'socket'

server = TCPServer.new 2345

loop do
  client = server.accept

  html = IO.read("./index.html")

  headers = [
    "HTTP/1.1 200 OK",
    "From: matt@ruten.ca",
    "User-Agent: Matt",
    "Content-Type: text/html",
    "Content-Length: #{html.length}",
    "\r\n\r\n"
  ].join("\r\n")
  client.write headers 
  
  client.puts html

  client.close
end
