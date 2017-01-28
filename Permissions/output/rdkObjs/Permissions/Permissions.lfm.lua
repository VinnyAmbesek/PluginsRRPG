require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmPermissionsTeste()
    __o_rrpgObjs.beginObjectsLoading();

    local obj = gui.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setName("frmPermissionsTeste");
    obj:setFormType("sheetTemplate");
    obj:setDataType("br.com.rrpg.permissionsTeste");
    obj:setTitle("Teste Permissions");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj);
    obj.button1:setLeft(5);
    obj.button1:setTop(5);
    obj.button1:setWidth(50);
    obj.button1:setText("Show");
    obj.button1:setName("button1");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (self)
            if sheet.filho1==nil then
            				sheet.filho1 = {};
            				sheet.filho1.neto1_1 = {};
            				sheet.filho1.neto1_1.bisneto1_1_1 = {};
            				sheet.filho1.neto1_1.bisneto1_1_1.tataraneto1_1_1_1 = {};
            				sheet.filho1.neto1_1.bisneto1_1_1.t1_1_1_2 = {};
            				sheet.filho1.neto1_2 = {};
            				sheet.filho1.neto1_3 = {};
            				sheet.filho2 = {};
            				sheet.filho2.neto2_1 = {};
            				sheet.filho2.neto2_2 = {};
            				sheet.filho3 = {};
            				sheet.filho3.neto3_1 = {};
            				sheet.filho4 = {};
            				sheet.filho5 = {};
            				sheet.filho6 = {};
            				sheet.filho7 = {};
            				sheet.filho8 = {};
            				sheet.filho9 = {};
            			end;
            			
            			permissions.show(sheet);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmPermissionsTeste = {
    newEditor = newfrmPermissionsTeste, 
    new = newfrmPermissionsTeste, 
    name = "frmPermissionsTeste", 
    dataType = "br.com.rrpg.permissionsTeste", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Teste Permissions", 
    description=""};

frmPermissionsTeste = _frmPermissionsTeste;
rrpg.registrarForm(_frmPermissionsTeste);
rrpg.registrarDataType(_frmPermissionsTeste);

return _frmPermissionsTeste;
