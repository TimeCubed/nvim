local M = {}
local plugins = {}

function M.register(plugin)
	table.insert(plugins, plugin)
end

function M.get_specs()
	local specs = {}

	for i = 1, #plugins do
		table.insert(specs, plugins[i].spec)
	end

	return specs
end

function M.call_setups()
	for i = 1, #plugins do
		if plugins[i].setup then
			plugins[i].setup()
		end
	end
end

return M
