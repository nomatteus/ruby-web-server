require 'socket'

server = TCPServer.new 2345

valid_file_extensions = ["html", "htm", "jpg", "jpeg", "png", "gif"]

loop do
  client = server.accept

  # TODOs added from nweb pseudocode: 
  # http://www.ibm.com/developerworks/systems/library/es-nweb/index.html

  # read from the socket the HTTP request
  request_line = client.gets.split
  request = {
    :method         => request_line[0],
    :uri            => request_line[1],
    :protocol_vers  => request_line[2]
  }

  # TODO(?): Continue reading client.gets to get more headers

  # check it’s a simple GET command
  # TODO: Check HTTP 1.1 spec to see if this MUST be uppercase 
  # TODO: Change this functionality to log an error, and stop execution if error detected
  puts "error, must be GET" if request[:method] != "GET"

  # check no parent directory requested to escape the web servers home directory

  # if no file name given assume index.html
  if request[:uri] == "/"
    filename = "index.html" 
  else
    filename = request[:uri].slice(1..-1)
  end

  # check the file extension is valid and supported
  file_extension = filename.slice(filename.rindex(".")+1..-1) # TODO: This is a bit too weird (even tho it works)
  puts "error, file type not supported" unless valid_file_extensions.include?(file_extension)

  # check the file is readable by opening it

  # transmit the HTTP header to the browser

  # transmit the file contents to the browser


  html = IO.read("./#{filename}")

  headers = [
    "HTTP/1.1 200 OK",
    "Content-Type: text/html",
    "Content-Length: #{html.length}",
    "\r\n"
  ].join("\r\n")
  client.write headers 
  
  client.puts html

  client.close
end
