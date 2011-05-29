--

require "sancus.resource"

require "myapp.conf.common"
require "myapp.context"
require "myapp.html"

local urls = myapp.conf.common.urls
local Context = myapp.conf.Context
local Resource = sancus.resource.Resource
local render_html = myapp.html.render

module (...)

local R = Resource()

function R:GET(wsapi_env)
	local c = Context(wsapi_env)
	c.who = "world",
	return render_html('_index', c)
end

urls:add("/[index.{format:html}]$", R)
