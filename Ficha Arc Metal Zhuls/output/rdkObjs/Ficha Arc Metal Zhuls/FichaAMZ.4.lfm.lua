require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmAMZ4()
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
    obj:setName("frmAMZ4");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(650);
    obj.layout1:setHeight(635);
    obj.layout1:setName("layout1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("black");
    obj.rectangle1:setXradius(5);
    obj.rectangle1:setYradius(5);
    obj.rectangle1:setCornerType("round");
    obj.rectangle1:setName("rectangle1");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setLeft(0);
    obj.label1:setTop(0);
    obj.label1:setWidth(650);
    obj.label1:setHeight(20);
    obj.label1:setText("Historia");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");

    obj.richEdit1 = gui.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.layout1);
    obj.richEdit1:setLeft(10);
    obj.richEdit1:setTop(25);
    obj.richEdit1:setWidth(630);
    obj.richEdit1:setHeight(595);
    obj.richEdit1:setField("historia");
    lfm_setPropAsString(obj.richEdit1, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit1, "defaultFontColor",  "white");
    lfm_setPropAsString(obj.richEdit1, "defaultFontSize",  "12");
    obj.richEdit1:setName("richEdit1");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(660);
    obj.layout2:setTop(0);
    obj.layout2:setWidth(400);
    obj.layout2:setHeight(635);
    obj.layout2:setName("layout2");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout2);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("black");
    obj.rectangle2:setXradius(5);
    obj.rectangle2:setYradius(5);
    obj.rectangle2:setCornerType("round");
    obj.rectangle2:setName("rectangle2");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setLeft(0);
    obj.label2:setTop(0);
    obj.label2:setWidth(400);
    obj.label2:setHeight(20);
    obj.label2:setText("Caracteristica Zhuls");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setName("label2");

    obj.richEdit2 = gui.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit2:setParent(obj.layout2);
    obj.richEdit2:setLeft(10);
    obj.richEdit2:setTop(25);
    obj.richEdit2:setWidth(380);
    obj.richEdit2:setHeight(595);
    obj.richEdit2:setField("carac_zhuls");
    lfm_setPropAsString(obj.richEdit2, "backgroundColor",  "#333333");
    lfm_setPropAsString(obj.richEdit2, "defaultFontColor",  "white");
    lfm_setPropAsString(obj.richEdit2, "defaultFontSize",  "12");
    obj.richEdit2:setName("richEdit2");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmAMZ4 = {
    newEditor = newfrmAMZ4, 
    new = newfrmAMZ4, 
    name = "frmAMZ4", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmAMZ4 = _frmAMZ4;
rrpg.registrarForm(_frmAMZ4);

return _frmAMZ4;
