local objs = require("rrpgObjs.lua");
local ndb = require("ndb.lua");
local gui = require("gui.lua");
require("PermissionsPopUp.lfm.lua");

permissions = {}

function permissions.show(nodeObj)
	local frm = newfrmPermissions();
	frm:setNodeObject(nodeObj);
	frm:show();
end;