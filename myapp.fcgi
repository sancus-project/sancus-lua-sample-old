#!/usr/bin/env lua5.1
--

require "wsapi.fastcgi"
require "myapp"

wsapi.fastcgi.run(myapp.run)
