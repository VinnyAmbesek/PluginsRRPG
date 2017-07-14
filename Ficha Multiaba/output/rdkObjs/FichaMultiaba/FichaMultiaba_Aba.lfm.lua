require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmFM_Aba()
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
    obj:setName("frmFM_Aba");
    obj:setHeight(25);
    obj:setWidth(125);
    obj:setTheme("dark");
    obj:setMargins({right=2});

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setStrokeColor("black");
    obj.rectangle1:setStrokeSize(2);
    obj.rectangle1:setColor("#000000FF");
    obj.rectangle1:setName("rectangle1");

    obj.name_aba = gui.fromHandle(_obj_newObject("edit"));
    obj.name_aba:setParent(obj);
    obj.name_aba:setLeft(0);
    obj.name_aba:setTop(0);
    obj.name_aba:setWidth(100);
    obj.name_aba:setHeight(25);
    obj.name_aba:setField("nome_aba");
    obj.name_aba:setName("name_aba");
    obj.name_aba:setTransparent(true);
    obj.name_aba:setHorzTextAlign("center");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj);
    obj.button1:setLeft(100);
    obj.button1:setTop(0);
    obj.button1:setWidth(25);
    obj.button1:setHeight(25);
    obj.button1:setText("X");
    obj.button1:setOpacity(0.5);
    obj.button1:setName("button1");

    obj._e_event0 = obj.name_aba:addEventListener("onEnter",
        function (self)
            self.name_aba.transparent = false;
        end, obj);

    obj._e_event1 = obj.name_aba:addEventListener("onExit",
        function (self)
            self.name_aba.transparent = true;
        end, obj);

    obj._e_event2 = obj.button1:addEventListener("onClick",
        function (self)
            dialogs.confirmOkCancel("Tem certeza que quer apagar essa aba?",
            				function (confirmado)
            					if confirmado then
            						ndb.deleteNode(sheet);
            					end;
            			end);
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.name_aba ~= nil then self.name_aba:destroy(); self.name_aba = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmFM_Aba = {
    newEditor = newfrmFM_Aba, 
    new = newfrmFM_Aba, 
    name = "frmFM_Aba", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmFM_Aba = _frmFM_Aba;
rrpg.registrarForm(_frmFM_Aba);

return _frmFM_Aba;
