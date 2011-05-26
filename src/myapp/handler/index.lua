--

require "myapp.conf.common"
require "myapp.context"
require "myapp.html"

local urls = myapp.conf.common.urls
local Context = myapp.conf.Context
local render_html = myapp.html.render

module (...)

local function handler(wsapi_env)
	local c = Context(wsapi_env)
	c.who = "world",
	return render_html('_index', c)
end

urls:add("/[index.{format:html}]$", handler)
