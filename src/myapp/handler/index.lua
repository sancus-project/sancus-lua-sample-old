--

require "myapp.conf.common"
require "myapp.html"

local urls = myapp.conf.common.urls
local render_html = myapp.html.render

module (...)

local function handler(wsapi_env)
	local d = {
		who = "world",
	}
	return render_html('_index')
end

urls:add("/[index.{format:html}]$", handler)
