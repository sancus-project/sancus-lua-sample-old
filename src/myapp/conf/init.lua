--

require "myapp.conf.common"
require "myapp.handler"

module (...)

urls = _M.common.urls

function make_app()
	return urls:make_app()
end
