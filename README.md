Ruby Web Server
===============

Overview
--------

Very simple Ruby-based webserver. Will read a file (`index.html`) and output
the contents, along with the necessary headers.

_Note: This is a project for learning, not practical use._

Pre-requisites
--------------
 * Ruby 1.8.7+ (not doing anything too complicated here)

How to Run
----------
Start server with:

`ruby server.rb`

Then visit this in your browser:

`http://localhost:2345`

or curl:

`curl -i http://localhost:2345`


TO DO
-----

* Allow port to be set as a parameter.
* Handle different file types (jpg, png, gif, zip)

References
----------

* [HTTP Made Really Easy - 
A Practical Guide to Writing Clients and Servers](http://www.jmarshall.com/easy/http/)
* [Hypertext Transfer Protocol -- HTTP/1.1](http://www.w3.org/Protocols/rfc2616/rfc2616.html) [w3.org]
* [Pragmatic Programmers Ruby 1.9 Socket Library Appendix](http://media.pragprog.com/titles/ruby3/app_socket.pdf) [free supplement to "pickaxe"]
* [nweb: a tiny, safe Web server (static pages only)](http://www.ibm.com/developerworks/systems/library/es-nweb/index.html) [Web server in 200 lines of code (C)]
