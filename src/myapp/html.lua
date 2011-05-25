--

require "sancus.codegen"

-- wherever/myapp/html/
local tmpldir = debug.getinfo(1).source:match("^@(.*)[.]lua$")
local cg = sancus.codegen

module (...)

local html_headers = {
	['Content-Type'] = 'text/html; charset=utf-8',
}

tmpl = cg.loaddir(tmpldir, '_')
render = cg.renderer(tmpl, html_headers)
