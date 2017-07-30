--[[
Sync Dial Luci configuration page.
Copyright (C) 2015 GuoGuo <gch981213@gmail.com>
]]--

module("luci.controller.syncdial", package.seeall)

function index()
	
	if not nixio.fs.access("/etc/config/syncdial") then
		return
	end

	local page
	page = entry({"admin", "services", "syncdial"}, cbi("syncdial"), _("创建多拨接口"))
	page.dependent = true

	page = entry({"admin", "services", "macvlan_redial"}, call("redial"), nil)
	page.leaf = true

end

function redial()
	os.execute("killall -9 pppd")
end
