--Mr.Z<zenghuaguo@hotmail.com>
module("luci.controller.adbyby", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/adbyby") then
		return
	end
	
	entry({"admin", "services", "adbyby"}, cbi("adbyby"), _("Adbyby"), 31).dependent = true
end
