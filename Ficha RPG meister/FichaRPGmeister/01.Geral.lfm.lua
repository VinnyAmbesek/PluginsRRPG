require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmFichaRPGmeister1_svg()
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
    obj:setName("frmFichaRPGmeister1_svg");
    obj:setAlign("client");
    obj:setTheme("dark");
    obj:setMargins({top=1});

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setLeft(0);
    obj.rectangle1:setTop(0);
    obj.rectangle1:setWidth(1107);
    obj.rectangle1:setHeight(135);
    obj.rectangle1:setColor("black");
    obj.rectangle1:setName("rectangle1");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.rectangle1);
    obj.label1:setLeft(5);
    obj.label1:setTop(5);
    obj.label1:setWidth(50);
    obj.label1:setHeight(25);
    obj.label1:setText("CLASSE");
    obj.label1:setName("label1");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle1);
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setLeft(60);
    obj.edit1:setTop(5);
    obj.edit1:setWidth(380);
    obj.edit1:setHeight(25);
    obj.edit1:setField("classe1");
    obj.edit1:setName("edit1");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.rectangle1);
    obj.label2:setLeft(5);
    obj.label2:setTop(30);
    obj.label2:setWidth(50);
    obj.label2:setHeight(25);
    obj.label2:setText("RAÇA");
    obj.label2:setName("label2");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.rectangle1);
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setLeft(60);
    obj.edit2:setTop(30);
    obj.edit2:setWidth(380);
    obj.edit2:setHeight(25);
    obj.edit2:setField("raca");
    obj.edit2:setName("edit2");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.rectangle1);
    obj.label3:setLeft(5);
    obj.label3:setTop(55);
    obj.label3:setWidth(50);
    obj.label3:setHeight(25);
    obj.label3:setText("TIPO");
    obj.label3:setName("label3");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.rectangle1);
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setLeft(60);
    obj.edit3:setTop(55);
    obj.edit3:setWidth(380);
    obj.edit3:setHeight(25);
    obj.edit3:setField("tipo");
    obj.edit3:setName("edit3");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.rectangle1);
    obj.label4:setLeft(5);
    obj.label4:setTop(80);
    obj.label4:setWidth(70);
    obj.label4:setHeight(25);
    obj.label4:setText("SUBTIPO");
    obj.label4:setName("label4");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.rectangle1);
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setLeft(60);
    obj.edit4:setTop(80);
    obj.edit4:setWidth(380);
    obj.edit4:setHeight(25);
    obj.edit4:setField("subtipo");
    obj.edit4:setName("edit4");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.rectangle1);
    obj.label5:setLeft(445);
    obj.label5:setTop(5);
    obj.label5:setWidth(50);
    obj.label5:setHeight(25);
    obj.label5:setText("NOME");
    obj.label5:setName("label5");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.rectangle1);
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setLeft(520);
    obj.edit5:setTop(5);
    obj.edit5:setWidth(290);
    obj.edit5:setHeight(25);
    obj.edit5:setField("nome");
    obj.edit5:setName("edit5");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.rectangle1);
    obj.label6:setLeft(445);
    obj.label6:setTop(30);
    obj.label6:setWidth(70);
    obj.label6:setHeight(25);
    obj.label6:setText("TENDÊNCIA");
    obj.label6:setName("label6");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.rectangle1);
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setLeft(520);
    obj.edit6:setTop(30);
    obj.edit6:setWidth(290);
    obj.edit6:setHeight(25);
    obj.edit6:setField("tendencia");
    obj.edit6:setName("edit6");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.rectangle1);
    obj.label7:setLeft(445);
    obj.label7:setTop(55);
    obj.label7:setWidth(70);
    obj.label7:setHeight(25);
    obj.label7:setText("CULTO");
    obj.label7:setName("label7");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.rectangle1);
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setLeft(520);
    obj.edit7:setTop(55);
    obj.edit7:setWidth(290);
    obj.edit7:setHeight(25);
    obj.edit7:setField("culto");
    obj.edit7:setName("edit7");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.rectangle1);
    obj.label8:setLeft(445);
    obj.label8:setTop(80);
    obj.label8:setWidth(70);
    obj.label8:setHeight(25);
    obj.label8:setText("TITULO");
    obj.label8:setName("label8");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.rectangle1);
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setLeft(520);
    obj.edit8:setTop(80);
    obj.edit8:setWidth(290);
    obj.edit8:setHeight(25);
    obj.edit8:setField("posto");
    obj.edit8:setName("edit8");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.rectangle1);
    obj.label9:setLeft(815);
    obj.label9:setTop(5);
    obj.label9:setWidth(70);
    obj.label9:setHeight(25);
    obj.label9:setText("NEP");
    obj.label9:setName("label9");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.rectangle1);
    obj.rectangle2:setLeft(890);
    obj.rectangle2:setTop(5);
    obj.rectangle2:setWidth(210);
    obj.rectangle2:setHeight(25);
    obj.rectangle2:setColor("black");
    obj.rectangle2:setStrokeColor("white");
    obj.rectangle2:setStrokeSize(1);
    obj.rectangle2:setName("rectangle2");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.rectangle1);
    obj.label10:setField("nep");
    obj.label10:setLeft(890);
    obj.label10:setTop(5);
    obj.label10:setWidth(210);
    obj.label10:setHeight(25);
    obj.label10:setHorzTextAlign("center");
    obj.label10:setName("label10");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.rectangle1);
    obj.label11:setLeft(815);
    obj.label11:setTop(30);
    obj.label11:setWidth(70);
    obj.label11:setHeight(25);
    obj.label11:setText("XP ATUAL");
    obj.label11:setName("label11");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.rectangle1);
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setLeft(890);
    obj.edit9:setTop(30);
    obj.edit9:setWidth(210);
    obj.edit9:setHeight(25);
    obj.edit9:setField("xpAtual");
    obj.edit9:setName("edit9");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle1);
    obj.button1:setLeft(815);
    obj.button1:setTop(56);
    obj.button1:setWidth(50);
    obj.button1:setText("ADD");
    obj.button1:setName("button1");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.rectangle1);
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setLeft(890);
    obj.edit10:setTop(55);
    obj.edit10:setWidth(210);
    obj.edit10:setHeight(25);
    obj.edit10:setField("xpNova");
    obj.edit10:setName("edit10");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.rectangle1);
    obj.label12:setLeft(815);
    obj.label12:setTop(80);
    obj.label12:setWidth(70);
    obj.label12:setHeight(25);
    obj.label12:setText("XP ALVO");
    obj.label12:setName("label12");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.rectangle1);
    obj.rectangle3:setLeft(890);
    obj.rectangle3:setTop(80);
    obj.rectangle3:setWidth(210);
    obj.rectangle3:setHeight(25);
    obj.rectangle3:setColor("black");
    obj.rectangle3:setStrokeColor("white");
    obj.rectangle3:setStrokeSize(1);
    obj.rectangle3:setName("rectangle3");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.rectangle1);
    obj.label13:setField("xpNivel");
    obj.label13:setLeft(890);
    obj.label13:setTop(80);
    obj.label13:setWidth(210);
    obj.label13:setHeight(25);
    obj.label13:setHorzTextAlign("center");
    obj.label13:setName("label13");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.rectangle1);
    obj.label14:setLeft(815);
    obj.label14:setTop(105);
    obj.label14:setWidth(70);
    obj.label14:setHeight(25);
    obj.label14:setText("AJUSTE");
    obj.label14:setName("label14");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.rectangle1);
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setLeft(890);
    obj.edit11:setTop(105);
    obj.edit11:setWidth(210);
    obj.edit11:setHeight(25);
    obj.edit11:setField("ajuste");
    obj.edit11:setName("edit11");

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.scrollBox1);
    obj.dataLink1:setField("xpAtual");
    obj.dataLink1:setName("dataLink1");


			local function getMOD(valor)
				if valor~= nil then
					local mod = math.floor(((tonumber(valor) or 10) / 2) - 5);
					if (mod >= 0) then
						mod = "+" .. mod;
					end;					   
					return mod;
				else
					return "+0";
				end;
			end;
		


    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.scrollBox1);
    obj.rectangle4:setLeft(0);
    obj.rectangle4:setTop(140);
    obj.rectangle4:setWidth(275);
    obj.rectangle4:setHeight(190);
    obj.rectangle4:setColor("black");
    obj.rectangle4:setName("rectangle4");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.scrollBox1);
    obj.label15:setLeft(5);
    obj.label15:setTop(141);
    obj.label15:setWidth(100);
    obj.label15:setHeight(25);
    obj.label15:setText("ATRIBUTOS");
    obj.label15:setName("label15");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(170);
    obj.layout1:setWidth(275);
    obj.layout1:setHeight(25);
    obj.layout1:setName("layout1");

    obj.button2 = gui.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout1);
    obj.button2:setLeft(5);
    obj.button2:setWidth(35);
    obj.button2:setText("FOR");
    obj.button2:setFontSize(11);
    obj.button2:setName("button2");

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout1);
    obj.edit12:setType("number");
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setLeft(45);
    obj.edit12:setWidth(35);
    obj.edit12:setHeight(25);
    obj.edit12:setField("for1");
    obj.edit12:setName("edit12");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout1);
    obj.rectangle5:setLeft(80);
    obj.rectangle5:setTop(0);
    obj.rectangle5:setWidth(35);
    obj.rectangle5:setHeight(25);
    obj.rectangle5:setColor("black");
    obj.rectangle5:setStrokeColor("white");
    obj.rectangle5:setStrokeSize(1);
    obj.rectangle5:setName("rectangle5");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout1);
    obj.label16:setField("for2");
    obj.label16:setText("0");
    obj.label16:setLeft(80);
    obj.label16:setTop(3);
    obj.label16:setWidth(35);
    obj.label16:setHorzTextAlign("center");
    obj.label16:setName("label16");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout1);
    obj.edit13:setType("number");
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setLeft(120);
    obj.edit13:setWidth(35);
    obj.edit13:setHeight(25);
    obj.edit13:setField("for3");
    obj.edit13:setName("edit13");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout1);
    obj.rectangle6:setLeft(155);
    obj.rectangle6:setTop(0);
    obj.rectangle6:setWidth(35);
    obj.rectangle6:setHeight(25);
    obj.rectangle6:setColor("black");
    obj.rectangle6:setStrokeColor("white");
    obj.rectangle6:setStrokeSize(1);
    obj.rectangle6:setName("rectangle6");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout1);
    obj.label17:setField("for4");
    obj.label17:setText("0");
    obj.label17:setLeft(155);
    obj.label17:setTop(3);
    obj.label17:setWidth(35);
    obj.label17:setHorzTextAlign("center");
    obj.label17:setName("label17");

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout1);
    obj.edit14:setType("number");
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setLeft(195);
    obj.edit14:setWidth(35);
    obj.edit14:setHeight(25);
    obj.edit14:setField("for5");
    obj.edit14:setName("edit14");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout1);
    obj.rectangle7:setLeft(230);
    obj.rectangle7:setTop(0);
    obj.rectangle7:setWidth(35);
    obj.rectangle7:setHeight(25);
    obj.rectangle7:setColor("black");
    obj.rectangle7:setStrokeColor("white");
    obj.rectangle7:setStrokeSize(1);
    obj.rectangle7:setName("rectangle7");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout1);
    obj.label18:setField("for6");
    obj.label18:setText("0");
    obj.label18:setLeft(230);
    obj.label18:setTop(3);
    obj.label18:setWidth(35);
    obj.label18:setHorzTextAlign("center");
    obj.label18:setName("label18");


				local function getFOR()
					local mod = tonumber(sheet.for6);
					if(tonumber(sheet.for5) == nil) then
						mod = tonumber(sheet.for4);
					end;
					if(tonumber(sheet.for3) == nil and tonumber(sheet.for5) == nil) then
						mod = tonumber(sheet.for2);
					end;
					if(tonumber(sheet.for1) == nil and tonumber(sheet.for3) == nil and tonumber(sheet.for5) == nil) then
						mod = 0;
					end;
					if mod== nil then
						mod = 0;
					end;
					return mod;
				end;
			


    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(195);
    obj.layout2:setWidth(275);
    obj.layout2:setHeight(25);
    obj.layout2:setName("layout2");

    obj.button3 = gui.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.layout2);
    obj.button3:setLeft(5);
    obj.button3:setWidth(35);
    obj.button3:setText("DES");
    obj.button3:setFontSize(11);
    obj.button3:setName("button3");

    obj.edit15 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout2);
    obj.edit15:setType("number");
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setLeft(45);
    obj.edit15:setWidth(35);
    obj.edit15:setHeight(25);
    obj.edit15:setField("des1");
    obj.edit15:setName("edit15");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout2);
    obj.rectangle8:setLeft(80);
    obj.rectangle8:setTop(0);
    obj.rectangle8:setWidth(35);
    obj.rectangle8:setHeight(25);
    obj.rectangle8:setColor("black");
    obj.rectangle8:setStrokeColor("white");
    obj.rectangle8:setStrokeSize(1);
    obj.rectangle8:setName("rectangle8");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout2);
    obj.label19:setField("des2");
    obj.label19:setText("0");
    obj.label19:setLeft(80);
    obj.label19:setTop(3);
    obj.label19:setWidth(35);
    obj.label19:setHorzTextAlign("center");
    obj.label19:setName("label19");

    obj.edit16 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout2);
    obj.edit16:setType("number");
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setLeft(120);
    obj.edit16:setWidth(35);
    obj.edit16:setHeight(25);
    obj.edit16:setField("des3");
    obj.edit16:setName("edit16");

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout2);
    obj.rectangle9:setLeft(155);
    obj.rectangle9:setTop(0);
    obj.rectangle9:setWidth(35);
    obj.rectangle9:setHeight(25);
    obj.rectangle9:setColor("black");
    obj.rectangle9:setStrokeColor("white");
    obj.rectangle9:setStrokeSize(1);
    obj.rectangle9:setName("rectangle9");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout2);
    obj.label20:setField("des4");
    obj.label20:setText("0");
    obj.label20:setLeft(155);
    obj.label20:setTop(3);
    obj.label20:setWidth(35);
    obj.label20:setHorzTextAlign("center");
    obj.label20:setName("label20");

    obj.edit17 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout2);
    obj.edit17:setType("number");
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setLeft(195);
    obj.edit17:setWidth(35);
    obj.edit17:setHeight(25);
    obj.edit17:setField("des5");
    obj.edit17:setName("edit17");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout2);
    obj.rectangle10:setLeft(230);
    obj.rectangle10:setTop(0);
    obj.rectangle10:setWidth(35);
    obj.rectangle10:setHeight(25);
    obj.rectangle10:setColor("black");
    obj.rectangle10:setStrokeColor("white");
    obj.rectangle10:setStrokeSize(1);
    obj.rectangle10:setName("rectangle10");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout2);
    obj.label21:setField("des6");
    obj.label21:setText("0");
    obj.label21:setLeft(230);
    obj.label21:setTop(3);
    obj.label21:setWidth(35);
    obj.label21:setHorzTextAlign("center");
    obj.label21:setName("label21");


				local function getDES()
					local mod = tonumber(sheet.des6);
					if(tonumber(sheet.des5) == nil) then
						mod = tonumber(sheet.des4);
					end;
					if(tonumber(sheet.des3) == nil and tonumber(sheet.des5) == nil) then
						mod = tonumber(sheet.des2);
					end;
					if(tonumber(sheet.des1) == nil and tonumber(sheet.des3) == nil and tonumber(sheet.des5) == nil) then
						mod = 0;
					end;
					if mod== nil then
						mod = 0;
					end;
					return mod;
				end;
			


    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(220);
    obj.layout3:setWidth(275);
    obj.layout3:setHeight(25);
    obj.layout3:setName("layout3");

    obj.button4 = gui.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.layout3);
    obj.button4:setLeft(5);
    obj.button4:setWidth(35);
    obj.button4:setText("CON");
    obj.button4:setFontSize(11);
    obj.button4:setName("button4");

    obj.edit18 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout3);
    obj.edit18:setType("number");
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setLeft(45);
    obj.edit18:setWidth(35);
    obj.edit18:setHeight(25);
    obj.edit18:setField("con1");
    obj.edit18:setName("edit18");

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout3);
    obj.rectangle11:setLeft(80);
    obj.rectangle11:setTop(0);
    obj.rectangle11:setWidth(35);
    obj.rectangle11:setHeight(25);
    obj.rectangle11:setColor("black");
    obj.rectangle11:setStrokeColor("white");
    obj.rectangle11:setStrokeSize(1);
    obj.rectangle11:setName("rectangle11");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout3);
    obj.label22:setField("con2");
    obj.label22:setText("0");
    obj.label22:setLeft(80);
    obj.label22:setTop(3);
    obj.label22:setWidth(35);
    obj.label22:setHorzTextAlign("center");
    obj.label22:setName("label22");

    obj.edit19 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout3);
    obj.edit19:setType("number");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setLeft(120);
    obj.edit19:setWidth(35);
    obj.edit19:setHeight(25);
    obj.edit19:setField("con3");
    obj.edit19:setName("edit19");

    obj.rectangle12 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout3);
    obj.rectangle12:setLeft(155);
    obj.rectangle12:setTop(0);
    obj.rectangle12:setWidth(35);
    obj.rectangle12:setHeight(25);
    obj.rectangle12:setColor("black");
    obj.rectangle12:setStrokeColor("white");
    obj.rectangle12:setStrokeSize(1);
    obj.rectangle12:setName("rectangle12");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout3);
    obj.label23:setField("con4");
    obj.label23:setText("0");
    obj.label23:setLeft(155);
    obj.label23:setTop(3);
    obj.label23:setWidth(35);
    obj.label23:setHorzTextAlign("center");
    obj.label23:setName("label23");

    obj.edit20 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout3);
    obj.edit20:setType("number");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setLeft(195);
    obj.edit20:setWidth(35);
    obj.edit20:setHeight(25);
    obj.edit20:setField("con5");
    obj.edit20:setName("edit20");

    obj.rectangle13 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout3);
    obj.rectangle13:setLeft(230);
    obj.rectangle13:setTop(0);
    obj.rectangle13:setWidth(35);
    obj.rectangle13:setHeight(25);
    obj.rectangle13:setColor("black");
    obj.rectangle13:setStrokeColor("white");
    obj.rectangle13:setStrokeSize(1);
    obj.rectangle13:setName("rectangle13");

    obj.label24 = gui.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout3);
    obj.label24:setField("con6");
    obj.label24:setText("0");
    obj.label24:setLeft(230);
    obj.label24:setTop(3);
    obj.label24:setWidth(35);
    obj.label24:setHorzTextAlign("center");
    obj.label24:setName("label24");


				local function getCON()
					local mod = tonumber(sheet.con6);
					if(tonumber(sheet.con5) == nil) then
						mod = tonumber(sheet.con4);
					end;
					if(tonumber(sheet.con3) == nil and tonumber(sheet.con5) == nil) then
						mod = tonumber(sheet.con2);
					end;
					if(tonumber(sheet.con1) == nil and tonumber(sheet.con3) == nil and tonumber(sheet.con5) == nil) then
						mod = 0;
					end;
					if mod== nil then
						mod = 0;
					end;
					return mod;
				end;
			


    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(245);
    obj.layout4:setWidth(275);
    obj.layout4:setHeight(25);
    obj.layout4:setName("layout4");

    obj.button5 = gui.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.layout4);
    obj.button5:setLeft(5);
    obj.button5:setWidth(35);
    obj.button5:setText("INT");
    obj.button5:setFontSize(11);
    obj.button5:setName("button5");

    obj.edit21 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout4);
    obj.edit21:setType("number");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setHorzTextAlign("center");
    obj.edit21:setLeft(45);
    obj.edit21:setWidth(35);
    obj.edit21:setHeight(25);
    obj.edit21:setField("int1");
    obj.edit21:setName("edit21");

    obj.rectangle14 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout4);
    obj.rectangle14:setLeft(80);
    obj.rectangle14:setTop(0);
    obj.rectangle14:setWidth(35);
    obj.rectangle14:setHeight(25);
    obj.rectangle14:setColor("black");
    obj.rectangle14:setStrokeColor("white");
    obj.rectangle14:setStrokeSize(1);
    obj.rectangle14:setName("rectangle14");

    obj.label25 = gui.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout4);
    obj.label25:setField("int2");
    obj.label25:setText("0");
    obj.label25:setLeft(80);
    obj.label25:setTop(3);
    obj.label25:setWidth(35);
    obj.label25:setHorzTextAlign("center");
    obj.label25:setName("label25");

    obj.edit22 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout4);
    obj.edit22:setType("number");
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setHorzTextAlign("center");
    obj.edit22:setLeft(120);
    obj.edit22:setWidth(35);
    obj.edit22:setHeight(25);
    obj.edit22:setField("int3");
    obj.edit22:setName("edit22");

    obj.rectangle15 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout4);
    obj.rectangle15:setLeft(155);
    obj.rectangle15:setTop(0);
    obj.rectangle15:setWidth(35);
    obj.rectangle15:setHeight(25);
    obj.rectangle15:setColor("black");
    obj.rectangle15:setStrokeColor("white");
    obj.rectangle15:setStrokeSize(1);
    obj.rectangle15:setName("rectangle15");

    obj.label26 = gui.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout4);
    obj.label26:setField("int4");
    obj.label26:setText("0");
    obj.label26:setLeft(155);
    obj.label26:setTop(3);
    obj.label26:setWidth(35);
    obj.label26:setHorzTextAlign("center");
    obj.label26:setName("label26");

    obj.edit23 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout4);
    obj.edit23:setType("number");
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setLeft(195);
    obj.edit23:setWidth(35);
    obj.edit23:setHeight(25);
    obj.edit23:setField("int5");
    obj.edit23:setName("edit23");

    obj.rectangle16 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout4);
    obj.rectangle16:setLeft(230);
    obj.rectangle16:setTop(0);
    obj.rectangle16:setWidth(35);
    obj.rectangle16:setHeight(25);
    obj.rectangle16:setColor("black");
    obj.rectangle16:setStrokeColor("white");
    obj.rectangle16:setStrokeSize(1);
    obj.rectangle16:setName("rectangle16");

    obj.label27 = gui.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout4);
    obj.label27:setField("int6");
    obj.label27:setText("0");
    obj.label27:setLeft(230);
    obj.label27:setTop(3);
    obj.label27:setWidth(35);
    obj.label27:setHorzTextAlign("center");
    obj.label27:setName("label27");


				local function getINT()
					local mod = tonumber(sheet.int6);
					if(tonumber(sheet.int5) == nil) then
						mod = tonumber(sheet.int4);
					end;
					if(tonumber(sheet.int3) == nil and tonumber(sheet.int5) == nil) then
						mod = tonumber(sheet.int2);
					end;
					if(tonumber(sheet.int1) == nil and tonumber(sheet.int3) == nil and tonumber(sheet.int5) == nil) then
						mod = 0;
					end;
					if mod== nil then
						mod = 0;
					end;
					return mod;
				end;
			


    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(270);
    obj.layout5:setWidth(275);
    obj.layout5:setHeight(25);
    obj.layout5:setName("layout5");

    obj.button6 = gui.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.layout5);
    obj.button6:setLeft(5);
    obj.button6:setWidth(35);
    obj.button6:setText("SAB");
    obj.button6:setFontSize(11);
    obj.button6:setName("button6");

    obj.edit24 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout5);
    obj.edit24:setType("number");
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setHorzTextAlign("center");
    obj.edit24:setLeft(45);
    obj.edit24:setWidth(35);
    obj.edit24:setHeight(25);
    obj.edit24:setField("sab1");
    obj.edit24:setName("edit24");

    obj.rectangle17 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout5);
    obj.rectangle17:setLeft(80);
    obj.rectangle17:setTop(0);
    obj.rectangle17:setWidth(35);
    obj.rectangle17:setHeight(25);
    obj.rectangle17:setColor("black");
    obj.rectangle17:setStrokeColor("white");
    obj.rectangle17:setStrokeSize(1);
    obj.rectangle17:setName("rectangle17");

    obj.label28 = gui.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout5);
    obj.label28:setField("sab2");
    obj.label28:setText("0");
    obj.label28:setLeft(80);
    obj.label28:setTop(3);
    obj.label28:setWidth(35);
    obj.label28:setHorzTextAlign("center");
    obj.label28:setName("label28");

    obj.edit25 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout5);
    obj.edit25:setType("number");
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setHorzTextAlign("center");
    obj.edit25:setLeft(120);
    obj.edit25:setWidth(35);
    obj.edit25:setHeight(25);
    obj.edit25:setField("sab3");
    obj.edit25:setName("edit25");

    obj.rectangle18 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout5);
    obj.rectangle18:setLeft(155);
    obj.rectangle18:setTop(0);
    obj.rectangle18:setWidth(35);
    obj.rectangle18:setHeight(25);
    obj.rectangle18:setColor("black");
    obj.rectangle18:setStrokeColor("white");
    obj.rectangle18:setStrokeSize(1);
    obj.rectangle18:setName("rectangle18");

    obj.label29 = gui.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout5);
    obj.label29:setField("sab4");
    obj.label29:setText("0");
    obj.label29:setLeft(155);
    obj.label29:setTop(3);
    obj.label29:setWidth(35);
    obj.label29:setHorzTextAlign("center");
    obj.label29:setName("label29");

    obj.edit26 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout5);
    obj.edit26:setType("number");
    obj.edit26:setVertTextAlign("center");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setLeft(195);
    obj.edit26:setWidth(35);
    obj.edit26:setHeight(25);
    obj.edit26:setField("sab5");
    obj.edit26:setName("edit26");

    obj.rectangle19 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.layout5);
    obj.rectangle19:setLeft(230);
    obj.rectangle19:setTop(0);
    obj.rectangle19:setWidth(35);
    obj.rectangle19:setHeight(25);
    obj.rectangle19:setColor("black");
    obj.rectangle19:setStrokeColor("white");
    obj.rectangle19:setStrokeSize(1);
    obj.rectangle19:setName("rectangle19");

    obj.label30 = gui.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout5);
    obj.label30:setField("sab6");
    obj.label30:setText("0");
    obj.label30:setLeft(230);
    obj.label30:setTop(3);
    obj.label30:setWidth(35);
    obj.label30:setHorzTextAlign("center");
    obj.label30:setName("label30");


				local function getSAB()
					local mod = tonumber(sheet.sab6);
					if(tonumber(sheet.sab5) == nil) then
						mod = tonumber(sheet.sab4);
					end;
					if(tonumber(sheet.sab3) == nil and tonumber(sheet.sab5) == nil) then
						mod = tonumber(sheet.sab2);
					end;
					if(tonumber(sheet.sab1) == nil and tonumber(sheet.sab3) == nil and tonumber(sheet.sab5) == nil) then
						mod = 0;
					end;
					if mod== nil then
						mod = 0;
					end;
					return mod;
				end;
			


    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox1);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(295);
    obj.layout6:setWidth(275);
    obj.layout6:setHeight(25);
    obj.layout6:setName("layout6");

    obj.button7 = gui.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.layout6);
    obj.button7:setLeft(5);
    obj.button7:setWidth(35);
    obj.button7:setText("CAR");
    obj.button7:setFontSize(11);
    obj.button7:setName("button7");

    obj.edit27 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout6);
    obj.edit27:setType("number");
    obj.edit27:setVertTextAlign("center");
    obj.edit27:setHorzTextAlign("center");
    obj.edit27:setLeft(45);
    obj.edit27:setWidth(35);
    obj.edit27:setHeight(25);
    obj.edit27:setField("car1");
    obj.edit27:setName("edit27");

    obj.rectangle20 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.layout6);
    obj.rectangle20:setLeft(80);
    obj.rectangle20:setTop(0);
    obj.rectangle20:setWidth(35);
    obj.rectangle20:setHeight(25);
    obj.rectangle20:setColor("black");
    obj.rectangle20:setStrokeColor("white");
    obj.rectangle20:setStrokeSize(1);
    obj.rectangle20:setName("rectangle20");

    obj.label31 = gui.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout6);
    obj.label31:setField("car2");
    obj.label31:setText("0");
    obj.label31:setLeft(80);
    obj.label31:setTop(3);
    obj.label31:setWidth(35);
    obj.label31:setHorzTextAlign("center");
    obj.label31:setName("label31");

    obj.edit28 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout6);
    obj.edit28:setType("number");
    obj.edit28:setVertTextAlign("center");
    obj.edit28:setHorzTextAlign("center");
    obj.edit28:setLeft(120);
    obj.edit28:setWidth(35);
    obj.edit28:setHeight(25);
    obj.edit28:setField("car3");
    obj.edit28:setName("edit28");

    obj.rectangle21 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.layout6);
    obj.rectangle21:setLeft(155);
    obj.rectangle21:setTop(0);
    obj.rectangle21:setWidth(35);
    obj.rectangle21:setHeight(25);
    obj.rectangle21:setColor("black");
    obj.rectangle21:setStrokeColor("white");
    obj.rectangle21:setStrokeSize(1);
    obj.rectangle21:setName("rectangle21");

    obj.label32 = gui.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout6);
    obj.label32:setField("car4");
    obj.label32:setText("0");
    obj.label32:setLeft(155);
    obj.label32:setTop(3);
    obj.label32:setWidth(35);
    obj.label32:setHorzTextAlign("center");
    obj.label32:setName("label32");

    obj.edit29 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout6);
    obj.edit29:setType("number");
    obj.edit29:setVertTextAlign("center");
    obj.edit29:setHorzTextAlign("center");
    obj.edit29:setLeft(195);
    obj.edit29:setWidth(35);
    obj.edit29:setHeight(25);
    obj.edit29:setField("car5");
    obj.edit29:setName("edit29");

    obj.rectangle22 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.layout6);
    obj.rectangle22:setLeft(230);
    obj.rectangle22:setTop(0);
    obj.rectangle22:setWidth(35);
    obj.rectangle22:setHeight(25);
    obj.rectangle22:setColor("black");
    obj.rectangle22:setStrokeColor("white");
    obj.rectangle22:setStrokeSize(1);
    obj.rectangle22:setName("rectangle22");

    obj.label33 = gui.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout6);
    obj.label33:setField("car6");
    obj.label33:setText("0");
    obj.label33:setLeft(230);
    obj.label33:setTop(3);
    obj.label33:setWidth(35);
    obj.label33:setHorzTextAlign("center");
    obj.label33:setName("label33");


				local function getCAR()
					local mod = tonumber(sheet.car6);
					if(tonumber(sheet.car5) == nil) then
						mod = tonumber(sheet.car4);
					end;
					if(tonumber(sheet.car3) == nil and tonumber(sheet.car5) == nil) then
						mod = tonumber(sheet.car2);
					end;
					if(tonumber(sheet.car1) == nil and tonumber(sheet.car3) == nil and tonumber(sheet.car5) == nil) then
						mod = 0;
					end;
					if mod== nil then
						mod = 0;
					end;
					return mod;
				end;
			


    obj.rectangle23 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.scrollBox1);
    obj.rectangle23:setLeft(0);
    obj.rectangle23:setTop(335);
    obj.rectangle23:setWidth(515);
    obj.rectangle23:setHeight(135);
    obj.rectangle23:setColor("black");
    obj.rectangle23:setName("rectangle23");

    obj.label34 = gui.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.scrollBox1);
    obj.label34:setLeft(5);
    obj.label34:setTop(336);
    obj.label34:setWidth(515);
    obj.label34:setHeight(25);
    obj.label34:setText("TESTES DE RESISTÊNCIA");
    obj.label34:setName("label34");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setLeft(0);
    obj.layout7:setTop(360);
    obj.layout7:setWidth(515);
    obj.layout7:setHeight(25);
    obj.layout7:setName("layout7");

    obj.label35 = gui.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout7);
    obj.label35:setLeft(50);
    obj.label35:setTop(0);
    obj.label35:setWidth(40);
    obj.label35:setHeight(25);
    obj.label35:setText("TOTAL");
    obj.label35:setName("label35");

    obj.label36 = gui.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout7);
    obj.label36:setLeft(95);
    obj.label36:setTop(0);
    obj.label36:setWidth(40);
    obj.label36:setHeight(25);
    obj.label36:setText("BASE");
    obj.label36:setName("label36");

    obj.label37 = gui.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout7);
    obj.label37:setLeft(130);
    obj.label37:setTop(0);
    obj.label37:setWidth(40);
    obj.label37:setHeight(25);
    obj.label37:setText("ATR");
    obj.label37:setName("label37");

    obj.label38 = gui.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout7);
    obj.label38:setLeft(160);
    obj.label38:setTop(0);
    obj.label38:setWidth(45);
    obj.label38:setHeight(25);
    obj.label38:setText("MAGIA");
    obj.label38:setName("label38");

    obj.label39 = gui.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout7);
    obj.label39:setLeft(205);
    obj.label39:setTop(0);
    obj.label39:setWidth(40);
    obj.label39:setHeight(25);
    obj.label39:setText("VAR");
    obj.label39:setName("label39");

    obj.label40 = gui.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout7);
    obj.label40:setLeft(235);
    obj.label40:setTop(0);
    obj.label40:setWidth(40);
    obj.label40:setHeight(25);
    obj.label40:setText("TEMP");
    obj.label40:setName("label40");

    obj.label41 = gui.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout7);
    obj.label41:setLeft(275);
    obj.label41:setTop(0);
    obj.label41:setWidth(40);
    obj.label41:setHeight(25);
    obj.label41:setText("OUT");
    obj.label41:setName("label41");

    obj.label42 = gui.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout7);
    obj.label42:setLeft(310);
    obj.label42:setTop(0);
    obj.label42:setWidth(200);
    obj.label42:setHeight(25);
    obj.label42:setText("CONDICIONAIS");
    obj.label42:setName("label42");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox1);
    obj.layout8:setLeft(0);
    obj.layout8:setTop(385);
    obj.layout8:setWidth(350);
    obj.layout8:setHeight(25);
    obj.layout8:setName("layout8");

    obj.button8 = gui.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.layout8);
    obj.button8:setLeft(5);
    obj.button8:setTop(2);
    obj.button8:setWidth(40);
    obj.button8:setText("FORT");
    obj.button8:setFontSize(11);
    obj.button8:setName("button8");

    obj.rectangle24 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.layout8);
    obj.rectangle24:setLeft(50);
    obj.rectangle24:setTop(0);
    obj.rectangle24:setWidth(35);
    obj.rectangle24:setHeight(25);
    obj.rectangle24:setColor("black");
    obj.rectangle24:setStrokeColor("white");
    obj.rectangle24:setStrokeSize(1);
    obj.rectangle24:setName("rectangle24");

    obj.label43 = gui.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout8);
    obj.label43:setField("fortTotal");
    obj.label43:setLeft(50);
    obj.label43:setTop(0);
    obj.label43:setWidth(35);
    obj.label43:setHeight(25);
    obj.label43:setHorzTextAlign("center");
    obj.label43:setName("label43");

    obj.edit30 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout8);
    obj.edit30:setType("number");
    obj.edit30:setVertTextAlign("center");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setLeft(95);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(35);
    obj.edit30:setHeight(25);
    obj.edit30:setField("fortBase");
    obj.edit30:setName("edit30");

    obj.rectangle25 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.layout8);
    obj.rectangle25:setLeft(130);
    obj.rectangle25:setTop(0);
    obj.rectangle25:setWidth(35);
    obj.rectangle25:setHeight(25);
    obj.rectangle25:setColor("black");
    obj.rectangle25:setStrokeColor("white");
    obj.rectangle25:setStrokeSize(1);
    obj.rectangle25:setName("rectangle25");

    obj.label44 = gui.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout8);
    obj.label44:setField("fortAtr");
    obj.label44:setLeft(130);
    obj.label44:setTop(0);
    obj.label44:setText("0");
    obj.label44:setWidth(35);
    obj.label44:setHeight(25);
    obj.label44:setHorzTextAlign("center");
    obj.label44:setName("label44");

    obj.edit31 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout8);
    obj.edit31:setType("number");
    obj.edit31:setVertTextAlign("center");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setLeft(165);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(35);
    obj.edit31:setHeight(25);
    obj.edit31:setField("fortMagia");
    obj.edit31:setName("edit31");

    obj.edit32 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout8);
    obj.edit32:setType("number");
    obj.edit32:setVertTextAlign("center");
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setLeft(200);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(35);
    obj.edit32:setHeight(25);
    obj.edit32:setField("fortVar");
    obj.edit32:setName("edit32");

    obj.edit33 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout8);
    obj.edit33:setType("number");
    obj.edit33:setVertTextAlign("center");
    obj.edit33:setHorzTextAlign("center");
    obj.edit33:setLeft(235);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(35);
    obj.edit33:setHeight(25);
    obj.edit33:setField("fortTemp");
    obj.edit33:setName("edit33");

    obj.edit34 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout8);
    obj.edit34:setType("number");
    obj.edit34:setVertTextAlign("center");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setLeft(270);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(35);
    obj.edit34:setHeight(25);
    obj.edit34:setField("fortOut");
    obj.edit34:setName("edit34");

    obj.dataLink2 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.layout8);
    obj.dataLink2:setFields({'fortBase', 'fortAtr', 'fortMagia', 'fortVar', 'fortTemp', 'fortOut'});
    obj.dataLink2:setName("dataLink2");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox1);
    obj.layout9:setLeft(0);
    obj.layout9:setTop(410);
    obj.layout9:setWidth(350);
    obj.layout9:setHeight(25);
    obj.layout9:setName("layout9");

    obj.button9 = gui.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.layout9);
    obj.button9:setLeft(5);
    obj.button9:setTop(2);
    obj.button9:setWidth(40);
    obj.button9:setText("REF");
    obj.button9:setFontSize(11);
    obj.button9:setName("button9");

    obj.rectangle26 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.layout9);
    obj.rectangle26:setLeft(50);
    obj.rectangle26:setTop(0);
    obj.rectangle26:setWidth(35);
    obj.rectangle26:setHeight(25);
    obj.rectangle26:setColor("black");
    obj.rectangle26:setStrokeColor("white");
    obj.rectangle26:setStrokeSize(1);
    obj.rectangle26:setName("rectangle26");

    obj.label45 = gui.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout9);
    obj.label45:setField("refTotal");
    obj.label45:setLeft(50);
    obj.label45:setTop(0);
    obj.label45:setWidth(35);
    obj.label45:setHeight(25);
    obj.label45:setHorzTextAlign("center");
    obj.label45:setName("label45");

    obj.edit35 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout9);
    obj.edit35:setType("number");
    obj.edit35:setVertTextAlign("center");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setLeft(95);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(35);
    obj.edit35:setHeight(25);
    obj.edit35:setField("refBase");
    obj.edit35:setName("edit35");

    obj.rectangle27 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.layout9);
    obj.rectangle27:setLeft(130);
    obj.rectangle27:setTop(0);
    obj.rectangle27:setWidth(35);
    obj.rectangle27:setHeight(25);
    obj.rectangle27:setColor("black");
    obj.rectangle27:setStrokeColor("white");
    obj.rectangle27:setStrokeSize(1);
    obj.rectangle27:setName("rectangle27");

    obj.label46 = gui.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout9);
    obj.label46:setField("refAtr");
    obj.label46:setLeft(130);
    obj.label46:setTop(0);
    obj.label46:setText("0");
    obj.label46:setWidth(35);
    obj.label46:setHeight(25);
    obj.label46:setHorzTextAlign("center");
    obj.label46:setName("label46");

    obj.edit36 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout9);
    obj.edit36:setType("number");
    obj.edit36:setVertTextAlign("center");
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setLeft(165);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(35);
    obj.edit36:setHeight(25);
    obj.edit36:setField("refMagia");
    obj.edit36:setName("edit36");

    obj.edit37 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout9);
    obj.edit37:setType("number");
    obj.edit37:setVertTextAlign("center");
    obj.edit37:setHorzTextAlign("center");
    obj.edit37:setLeft(200);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(35);
    obj.edit37:setHeight(25);
    obj.edit37:setField("refVar");
    obj.edit37:setName("edit37");

    obj.edit38 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout9);
    obj.edit38:setType("number");
    obj.edit38:setVertTextAlign("center");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setLeft(235);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(35);
    obj.edit38:setHeight(25);
    obj.edit38:setField("refTemp");
    obj.edit38:setName("edit38");

    obj.edit39 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout9);
    obj.edit39:setType("number");
    obj.edit39:setVertTextAlign("center");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setLeft(270);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(35);
    obj.edit39:setHeight(25);
    obj.edit39:setField("refOut");
    obj.edit39:setName("edit39");

    obj.dataLink3 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.layout9);
    obj.dataLink3:setFields({'refBase', 'refAtr', 'refMagia', 'refVar', 'refTemp', 'refOut'});
    obj.dataLink3:setName("dataLink3");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.scrollBox1);
    obj.layout10:setLeft(0);
    obj.layout10:setTop(435);
    obj.layout10:setWidth(350);
    obj.layout10:setHeight(25);
    obj.layout10:setName("layout10");

    obj.button10 = gui.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.layout10);
    obj.button10:setLeft(5);
    obj.button10:setTop(2);
    obj.button10:setWidth(40);
    obj.button10:setText("VON");
    obj.button10:setFontSize(11);
    obj.button10:setName("button10");

    obj.rectangle28 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.layout10);
    obj.rectangle28:setLeft(50);
    obj.rectangle28:setTop(0);
    obj.rectangle28:setWidth(35);
    obj.rectangle28:setHeight(25);
    obj.rectangle28:setColor("black");
    obj.rectangle28:setStrokeColor("white");
    obj.rectangle28:setStrokeSize(1);
    obj.rectangle28:setName("rectangle28");

    obj.label47 = gui.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout10);
    obj.label47:setField("vonTotal");
    obj.label47:setLeft(50);
    obj.label47:setTop(0);
    obj.label47:setWidth(35);
    obj.label47:setHeight(25);
    obj.label47:setHorzTextAlign("center");
    obj.label47:setName("label47");

    obj.edit40 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout10);
    obj.edit40:setType("number");
    obj.edit40:setVertTextAlign("center");
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setLeft(95);
    obj.edit40:setTop(0);
    obj.edit40:setWidth(35);
    obj.edit40:setHeight(25);
    obj.edit40:setField("vonBase");
    obj.edit40:setName("edit40");

    obj.rectangle29 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.layout10);
    obj.rectangle29:setLeft(130);
    obj.rectangle29:setTop(0);
    obj.rectangle29:setWidth(35);
    obj.rectangle29:setHeight(25);
    obj.rectangle29:setColor("black");
    obj.rectangle29:setStrokeColor("white");
    obj.rectangle29:setStrokeSize(1);
    obj.rectangle29:setName("rectangle29");

    obj.label48 = gui.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout10);
    obj.label48:setField("vonAtr");
    obj.label48:setLeft(130);
    obj.label48:setTop(0);
    obj.label48:setText("0");
    obj.label48:setWidth(35);
    obj.label48:setHeight(25);
    obj.label48:setHorzTextAlign("center");
    obj.label48:setName("label48");

    obj.edit41 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout10);
    obj.edit41:setType("number");
    obj.edit41:setVertTextAlign("center");
    obj.edit41:setHorzTextAlign("center");
    obj.edit41:setLeft(165);
    obj.edit41:setTop(0);
    obj.edit41:setWidth(35);
    obj.edit41:setHeight(25);
    obj.edit41:setField("vonMagia");
    obj.edit41:setName("edit41");

    obj.edit42 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout10);
    obj.edit42:setType("number");
    obj.edit42:setVertTextAlign("center");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setLeft(200);
    obj.edit42:setTop(0);
    obj.edit42:setWidth(35);
    obj.edit42:setHeight(25);
    obj.edit42:setField("vonVar");
    obj.edit42:setName("edit42");

    obj.edit43 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout10);
    obj.edit43:setType("number");
    obj.edit43:setVertTextAlign("center");
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setLeft(235);
    obj.edit43:setTop(0);
    obj.edit43:setWidth(35);
    obj.edit43:setHeight(25);
    obj.edit43:setField("vonTemp");
    obj.edit43:setName("edit43");

    obj.edit44 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout10);
    obj.edit44:setType("number");
    obj.edit44:setVertTextAlign("center");
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setLeft(270);
    obj.edit44:setTop(0);
    obj.edit44:setWidth(35);
    obj.edit44:setHeight(25);
    obj.edit44:setField("vonOut");
    obj.edit44:setName("edit44");

    obj.dataLink4 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.layout10);
    obj.dataLink4:setFields({'vonBase', 'vonAtr', 'vonMagia', 'vonVar', 'vonTemp', 'vonOut'});
    obj.dataLink4:setName("dataLink4");

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.scrollBox1);
    obj.textEditor1:setLeft(305);
    obj.textEditor1:setTop(385);
    obj.textEditor1:setWidth(200);
    obj.textEditor1:setHeight(75);
    obj.textEditor1:setField("trCondicional");
    obj.textEditor1:setName("textEditor1");

    obj.rectangle30 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.scrollBox1);
    obj.rectangle30:setLeft(0);
    obj.rectangle30:setTop(475);
    obj.rectangle30:setWidth(290);
    obj.rectangle30:setHeight(65);
    obj.rectangle30:setColor("black");
    obj.rectangle30:setName("rectangle30");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.scrollBox1);
    obj.layout11:setLeft(0);
    obj.layout11:setTop(480);
    obj.layout11:setWidth(280);
    obj.layout11:setHeight(25);
    obj.layout11:setName("layout11");

    obj.label49 = gui.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout11);
    obj.label49:setLeft(5);
    obj.label49:setTop(0);
    obj.label49:setWidth(30);
    obj.label49:setHeight(25);
    obj.label49:setText("BBA");
    obj.label49:setName("label49");

    obj.edit45 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout11);
    obj.edit45:setType("number");
    obj.edit45:setVertTextAlign("center");
    obj.edit45:setHorzTextAlign("center");
    obj.edit45:setLeft(35);
    obj.edit45:setTop(0);
    obj.edit45:setWidth(40);
    obj.edit45:setHeight(31);
    obj.edit45:setField("bba");
    obj.edit45:setName("edit45");

    obj.edit46 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout11);
    obj.edit46:setVertTextAlign("center");
    obj.edit46:setLeft(80);
    obj.edit46:setTop(0);
    obj.edit46:setWidth(200);
    obj.edit46:setHeight(29);
    obj.edit46:setField("bbaDesc");
    obj.edit46:setName("edit46");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.scrollBox1);
    obj.layout12:setLeft(0);
    obj.layout12:setTop(510);
    obj.layout12:setWidth(280);
    obj.layout12:setHeight(25);
    obj.layout12:setName("layout12");

    obj.button11 = gui.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.layout12);
    obj.button11:setLeft(5);
    obj.button11:setTop(0);
    obj.button11:setWidth(70);
    obj.button11:setHeight(25);
    obj.button11:setText("AGARRAR");
    obj.button11:setFontSize(11);
    obj.button11:setName("button11");

    obj.rectangle31 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.layout12);
    obj.rectangle31:setLeft(80);
    obj.rectangle31:setTop(0);
    obj.rectangle31:setWidth(40);
    obj.rectangle31:setHeight(25);
    obj.rectangle31:setColor("black");
    obj.rectangle31:setStrokeColor("white");
    obj.rectangle31:setStrokeSize(1);
    obj.rectangle31:setName("rectangle31");

    obj.label50 = gui.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout12);
    obj.label50:setField("agarrar");
    obj.label50:setLeft(80);
    obj.label50:setWidth(40);
    obj.label50:setHeight(25);
    obj.label50:setHorzTextAlign("center");
    obj.label50:setName("label50");

    obj.rectangle32 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle32:setParent(obj.layout12);
    obj.rectangle32:setLeft(135);
    obj.rectangle32:setTop(0);
    obj.rectangle32:setWidth(30);
    obj.rectangle32:setHeight(25);
    obj.rectangle32:setColor("black");
    obj.rectangle32:setStrokeColor("white");
    obj.rectangle32:setStrokeSize(1);
    obj.rectangle32:setName("rectangle32");

    obj.label51 = gui.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout12);
    obj.label51:setField("bba");
    obj.label51:setLeft(135);
    obj.label51:setWidth(30);
    obj.label51:setHeight(25);
    obj.label51:setHorzTextAlign("center");
    obj.label51:setName("label51");

    obj.rectangle33 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle33:setParent(obj.layout12);
    obj.rectangle33:setLeft(170);
    obj.rectangle33:setTop(0);
    obj.rectangle33:setWidth(30);
    obj.rectangle33:setHeight(25);
    obj.rectangle33:setColor("black");
    obj.rectangle33:setStrokeColor("white");
    obj.rectangle33:setStrokeSize(1);
    obj.rectangle33:setName("rectangle33");

    obj.label52 = gui.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.layout12);
    obj.label52:setField("agarrarFor");
    obj.label52:setLeft(170);
    obj.label52:setWidth(30);
    obj.label52:setHeight(25);
    obj.label52:setHorzTextAlign("center");
    obj.label52:setName("label52");

    obj.edit47 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout12);
    obj.edit47:setType("number");
    obj.edit47:setVertTextAlign("center");
    obj.edit47:setLeft(205);
    obj.edit47:setTop(0);
    obj.edit47:setWidth(35);
    obj.edit47:setHeight(25);
    obj.edit47:setField("agarrarTam");
    obj.edit47:setName("edit47");

    obj.edit48 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout12);
    obj.edit48:setType("number");
    obj.edit48:setVertTextAlign("center");
    obj.edit48:setLeft(245);
    obj.edit48:setTop(0);
    obj.edit48:setWidth(35);
    obj.edit48:setHeight(25);
    obj.edit48:setField("agarrarVar");
    obj.edit48:setName("edit48");

    obj.dataLink5 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.scrollBox1);
    obj.dataLink5:setFields({'bba', 'agarrarFor', 'agarrarTam', 'agarrarVar'});
    obj.dataLink5:setName("dataLink5");

    obj.rectangle34 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle34:setParent(obj.scrollBox1);
    obj.rectangle34:setLeft(0);
    obj.rectangle34:setTop(545);
    obj.rectangle34:setWidth(290);
    obj.rectangle34:setHeight(95);
    obj.rectangle34:setColor("black");
    obj.rectangle34:setName("rectangle34");

    obj.label53 = gui.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.scrollBox1);
    obj.label53:setLeft(0);
    obj.label53:setTop(546);
    obj.label53:setWidth(100);
    obj.label53:setHeight(20);
    obj.label53:setText("VISÃO");
    obj.label53:setName("label53");

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.scrollBox1);
    obj.layout13:setLeft(0);
    obj.layout13:setTop(575);
    obj.layout13:setWidth(301);
    obj.layout13:setHeight(80);
    obj.layout13:setName("layout13");

    obj.label54 = gui.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layout13);
    obj.label54:setLeft(5);
    obj.label54:setTop(0);
    obj.label54:setWidth(35);
    obj.label54:setHeight(20);
    obj.label54:setText("LUZ");
    obj.label54:setName("label54");

    obj.edit49 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout13);
    obj.edit49:setVertTextAlign("center");
    obj.edit49:setHorzTextAlign("center");
    obj.edit49:setLeft(35);
    obj.edit49:setTop(0);
    obj.edit49:setWidth(40);
    obj.edit49:setHeight(25);
    obj.edit49:setField("luz");
    obj.edit49:setName("edit49");

    obj.label55 = gui.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layout13);
    obj.label55:setLeft(85);
    obj.label55:setTop(0);
    obj.label55:setWidth(50);
    obj.label55:setHeight(20);
    obj.label55:setText("ESCURO");
    obj.label55:setName("label55");

    obj.edit50 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout13);
    obj.edit50:setVertTextAlign("center");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setLeft(140);
    obj.edit50:setTop(0);
    obj.edit50:setWidth(40);
    obj.edit50:setHeight(25);
    obj.edit50:setField("escuro");
    obj.edit50:setName("edit50");

    obj.label56 = gui.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout13);
    obj.label56:setLeft(190);
    obj.label56:setTop(0);
    obj.label56:setWidth(50);
    obj.label56:setHeight(20);
    obj.label56:setText("TOTAL");
    obj.label56:setName("label56");

    obj.rectangle35 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle35:setParent(obj.layout13);
    obj.rectangle35:setLeft(240);
    obj.rectangle35:setTop(0);
    obj.rectangle35:setWidth(35);
    obj.rectangle35:setHeight(25);
    obj.rectangle35:setColor("black");
    obj.rectangle35:setStrokeColor("white");
    obj.rectangle35:setStrokeSize(1);
    obj.rectangle35:setName("rectangle35");

    obj.label57 = gui.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.layout13);
    obj.label57:setField("totalVisao");
    obj.label57:setLeft(240);
    obj.label57:setTop(0);
    obj.label57:setWidth(35);
    obj.label57:setHeight(25);
    obj.label57:setHorzTextAlign("center");
    obj.label57:setName("label57");

    obj.label58 = gui.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.layout13);
    obj.label58:setLeft(5);
    obj.label58:setTop(30);
    obj.label58:setWidth(70);
    obj.label58:setHeight(20);
    obj.label58:setText("PENUMBRA");
    obj.label58:setName("label58");

    obj.edit51 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout13);
    obj.edit51:setType("number");
    obj.edit51:setVertTextAlign("center");
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setLeft(80);
    obj.edit51:setTop(30);
    obj.edit51:setWidth(35);
    obj.edit51:setHeight(25);
    obj.edit51:setField("penumbraMult");
    obj.edit51:setName("edit51");

    obj.label59 = gui.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.layout13);
    obj.label59:setLeft(123);
    obj.label59:setTop(30);
    obj.label59:setWidth(7);
    obj.label59:setHeight(20);
    obj.label59:setText("x");
    obj.label59:setName("label59");

    obj.edit52 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout13);
    obj.edit52:setVertTextAlign("center");
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setLeft(140);
    obj.edit52:setTop(30);
    obj.edit52:setWidth(40);
    obj.edit52:setHeight(25);
    obj.edit52:setField("penumbraBase");
    obj.edit52:setName("edit52");

    obj.rectangle36 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle36:setParent(obj.layout13);
    obj.rectangle36:setLeft(190);
    obj.rectangle36:setTop(30);
    obj.rectangle36:setWidth(40);
    obj.rectangle36:setHeight(25);
    obj.rectangle36:setColor("black");
    obj.rectangle36:setStrokeColor("white");
    obj.rectangle36:setStrokeSize(1);
    obj.rectangle36:setName("rectangle36");

    obj.label60 = gui.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout13);
    obj.label60:setField("penumbraTotal");
    obj.label60:setText("0");
    obj.label60:setWidth(40);
    obj.label60:setHeight(25);
    obj.label60:setLeft(190);
    obj.label60:setTop(30);
    obj.label60:setHorzTextAlign("center");
    obj.label60:setName("label60");

    obj.dataLink6 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.scrollBox1);
    obj.dataLink6:setFields({'penumbraBase', 'penumbraMult'});
    obj.dataLink6:setName("dataLink6");

    obj.dataLink7 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.scrollBox1);
    obj.dataLink7:setFields({'luz', 'escuro', 'penumbraTotal'});
    obj.dataLink7:setName("dataLink7");

    obj.layout14 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.scrollBox1);
    obj.layout14:setLeft(280);
    obj.layout14:setTop(140);
    obj.layout14:setWidth(235);
    obj.layout14:setHeight(190);
    obj.layout14:setName("layout14");

    obj.rectangle37 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle37:setParent(obj.layout14);
    obj.rectangle37:setAlign("client");
    obj.rectangle37:setColor("black");
    obj.rectangle37:setName("rectangle37");

    obj.label61 = gui.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.layout14);
    obj.label61:setLeft(5);
    obj.label61:setTop(1);
    obj.label61:setWidth(200);
    obj.label61:setHeight(20);
    obj.label61:setText("DESLOCAMENTOS");
    obj.label61:setName("label61");

    obj.label62 = gui.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.layout14);
    obj.label62:setLeft(5);
    obj.label62:setTop(30);
    obj.label62:setWidth(75);
    obj.label62:setHeight(20);
    obj.label62:setText("TERRESTRE");
    obj.label62:setName("label62");

    obj.edit53 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout14);
    obj.edit53:setVertTextAlign("center");
    obj.edit53:setLeft(80);
    obj.edit53:setTop(30);
    obj.edit53:setWidth(150);
    obj.edit53:setHeight(25);
    obj.edit53:setField("deslTerrestre");
    obj.edit53:setName("edit53");

    obj.label63 = gui.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.layout14);
    obj.label63:setLeft(40);
    obj.label63:setTop(55);
    obj.label63:setWidth(40);
    obj.label63:setHeight(20);
    obj.label63:setText("VOO");
    obj.label63:setName("label63");

    obj.edit54 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout14);
    obj.edit54:setVertTextAlign("center");
    obj.edit54:setLeft(80);
    obj.edit54:setTop(55);
    obj.edit54:setWidth(150);
    obj.edit54:setHeight(25);
    obj.edit54:setField("deslVoo");
    obj.edit54:setName("edit54");

    obj.label64 = gui.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.layout14);
    obj.label64:setLeft(15);
    obj.label64:setTop(80);
    obj.label64:setWidth(75);
    obj.label64:setHeight(20);
    obj.label64:setText("NATAÇÃO");
    obj.label64:setName("label64");

    obj.edit55 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout14);
    obj.edit55:setVertTextAlign("center");
    obj.edit55:setLeft(80);
    obj.edit55:setTop(80);
    obj.edit55:setWidth(150);
    obj.edit55:setHeight(25);
    obj.edit55:setField("deslNatacao");
    obj.edit55:setName("edit55");

    obj.label65 = gui.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.layout14);
    obj.label65:setLeft(20);
    obj.label65:setTop(105);
    obj.label65:setWidth(75);
    obj.label65:setHeight(20);
    obj.label65:setText("ESCALAR");
    obj.label65:setName("label65");

    obj.edit56 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout14);
    obj.edit56:setVertTextAlign("center");
    obj.edit56:setLeft(80);
    obj.edit56:setTop(105);
    obj.edit56:setWidth(150);
    obj.edit56:setHeight(25);
    obj.edit56:setField("deslEscalar");
    obj.edit56:setName("edit56");

    obj.label66 = gui.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.layout14);
    obj.label66:setLeft(20);
    obj.label66:setTop(130);
    obj.label66:setWidth(75);
    obj.label66:setHeight(20);
    obj.label66:setText("ESCAVAR");
    obj.label66:setName("label66");

    obj.edit57 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.layout14);
    obj.edit57:setVertTextAlign("center");
    obj.edit57:setLeft(80);
    obj.edit57:setTop(130);
    obj.edit57:setWidth(150);
    obj.edit57:setHeight(25);
    obj.edit57:setField("desEscavar");
    obj.edit57:setName("edit57");

    obj.rectangle38 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle38:setParent(obj.scrollBox1);
    obj.rectangle38:setLeft(295);
    obj.rectangle38:setTop(475);
    obj.rectangle38:setWidth(220);
    obj.rectangle38:setHeight(165);
    obj.rectangle38:setColor("black");
    obj.rectangle38:setName("rectangle38");

    obj.label67 = gui.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.rectangle38);
    obj.label67:setLeft(5);
    obj.label67:setTop(1);
    obj.label67:setWidth(220);
    obj.label67:setHeight(20);
    obj.label67:setText("PONTOS DE VIGOR");
    obj.label67:setName("label67");

    obj.label68 = gui.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.rectangle38);
    obj.label68:setLeft(35);
    obj.label68:setTop(25);
    obj.label68:setWidth(100);
    obj.label68:setHeight(20);
    obj.label68:setText("VIGOR");
    obj.label68:setName("label68");

    obj.edit58 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.rectangle38);
    obj.edit58:setType("number");
    obj.edit58:setVertTextAlign("center");
    obj.edit58:setHorzTextAlign("center");
    obj.edit58:setLeft(5);
    obj.edit58:setTop(45);
    obj.edit58:setWidth(105);
    obj.edit58:setHeight(25);
    obj.edit58:setField("pvTotal");
    obj.edit58:setName("edit58");

    obj.label69 = gui.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.rectangle38);
    obj.label69:setLeft(115);
    obj.label69:setTop(25);
    obj.label69:setWidth(100);
    obj.label69:setHeight(20);
    obj.label69:setText("TEMPORARIO");
    obj.label69:setName("label69");

    obj.edit59 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.rectangle38);
    obj.edit59:setType("number");
    obj.edit59:setVertTextAlign("center");
    obj.edit59:setHorzTextAlign("center");
    obj.edit59:setLeft(110);
    obj.edit59:setTop(45);
    obj.edit59:setWidth(105);
    obj.edit59:setHeight(25);
    obj.edit59:setField("pvTemporario");
    obj.edit59:setName("edit59");

    obj.button12 = gui.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.rectangle38);
    obj.button12:setLeft(5);
    obj.button12:setTop(70);
    obj.button12:setWidth(40);
    obj.button12:setHeight(25);
    obj.button12:setText("DVs");
    obj.button12:setName("button12");

    obj.edit60 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.rectangle38);
    obj.edit60:setVertTextAlign("center");
    obj.edit60:setLeft(45);
    obj.edit60:setTop(70);
    obj.edit60:setWidth(170);
    obj.edit60:setHeight(25);
    obj.edit60:setField("dvs");
    obj.edit60:setName("edit60");

    obj.textEditor2 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.rectangle38);
    obj.textEditor2:setLeft(5);
    obj.textEditor2:setTop(95);
    obj.textEditor2:setWidth(210);
    obj.textEditor2:setHeight(65);
    obj.textEditor2:setField("rd");
    obj.textEditor2:setName("textEditor2");

    obj.layout15 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.scrollBox1);
    obj.layout15:setLeft(520);
    obj.layout15:setTop(140);
    obj.layout15:setWidth(260);
    obj.layout15:setHeight(55);
    obj.layout15:setName("layout15");

    obj.rectangle39 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle39:setParent(obj.layout15);
    obj.rectangle39:setAlign("client");
    obj.rectangle39:setColor("black");
    obj.rectangle39:setName("rectangle39");

    obj.label70 = gui.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.layout15);
    obj.label70:setLeft(5);
    obj.label70:setTop(1);
    obj.label70:setWidth(145);
    obj.label70:setHeight(20);
    obj.label70:setText("INICIATIVA");
    obj.label70:setName("label70");

    obj.button13 = gui.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.layout15);
    obj.button13:setLeft(35);
    obj.button13:setTop(25);
    obj.button13:setWidth(75);
    obj.button13:setHeight(25);
    obj.button13:setText("INICIATIVA");
    obj.button13:setFontSize(11);
    obj.button13:setName("button13");

    obj.rectangle40 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle40:setParent(obj.layout15);
    obj.rectangle40:setLeft(115);
    obj.rectangle40:setTop(25);
    obj.rectangle40:setWidth(35);
    obj.rectangle40:setHeight(25);
    obj.rectangle40:setColor("black");
    obj.rectangle40:setStrokeColor("white");
    obj.rectangle40:setStrokeSize(1);
    obj.rectangle40:setName("rectangle40");

    obj.label71 = gui.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.layout15);
    obj.label71:setField("iniciativa");
    obj.label71:setLeft(115);
    obj.label71:setTop(27);
    obj.label71:setWidth(35);
    obj.label71:setHorzTextAlign("center");
    obj.label71:setName("label71");

    obj.rectangle41 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle41:setParent(obj.layout15);
    obj.rectangle41:setLeft(155);
    obj.rectangle41:setTop(25);
    obj.rectangle41:setWidth(35);
    obj.rectangle41:setHeight(25);
    obj.rectangle41:setColor("black");
    obj.rectangle41:setStrokeColor("white");
    obj.rectangle41:setStrokeSize(1);
    obj.rectangle41:setName("rectangle41");

    obj.label72 = gui.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.layout15);
    obj.label72:setField("iniDes");
    obj.label72:setLeft(155);
    obj.label72:setTop(27);
    obj.label72:setWidth(35);
    obj.label72:setHorzTextAlign("center");
    obj.label72:setName("label72");

    obj.edit61 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.layout15);
    obj.edit61:setType("number");
    obj.edit61:setVertTextAlign("center");
    obj.edit61:setHorzTextAlign("center");
    obj.edit61:setLeft(195);
    obj.edit61:setTop(25);
    obj.edit61:setWidth(35);
    obj.edit61:setHeight(25);
    obj.edit61:setField("iniVariado");
    obj.edit61:setName("edit61");

    obj.dataLink8 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.scrollBox1);
    obj.dataLink8:setFields({'iniDes', 'iniVariado'});
    obj.dataLink8:setName("dataLink8");

    obj.rectangle42 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle42:setParent(obj.scrollBox1);
    obj.rectangle42:setLeft(520);
    obj.rectangle42:setTop(200);
    obj.rectangle42:setWidth(260);
    obj.rectangle42:setHeight(440);
    obj.rectangle42:setColor("black");
    obj.rectangle42:setName("rectangle42");

    obj.label73 = gui.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.scrollBox1);
    obj.label73:setLeft(525);
    obj.label73:setTop(201);
    obj.label73:setWidth(260);
    obj.label73:setHeight(20);
    obj.label73:setText("CLASSE DE ARMADURA");
    obj.label73:setName("label73");

    obj.layout16 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.scrollBox1);
    obj.layout16:setLeft(560);
    obj.layout16:setTop(225);
    obj.layout16:setWidth(210);
    obj.layout16:setHeight(50);
    obj.layout16:setName("layout16");

    obj.label74 = gui.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.layout16);
    obj.label74:setLeft(10);
    obj.label74:setTop(0);
    obj.label74:setWidth(35);
    obj.label74:setHeight(20);
    obj.label74:setText("CA");
    obj.label74:setName("label74");

    obj.rectangle43 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle43:setParent(obj.layout16);
    obj.rectangle43:setLeft(5);
    obj.rectangle43:setTop(25);
    obj.rectangle43:setWidth(35);
    obj.rectangle43:setHeight(25);
    obj.rectangle43:setColor("black");
    obj.rectangle43:setStrokeColor("white");
    obj.rectangle43:setStrokeSize(1);
    obj.rectangle43:setName("rectangle43");

    obj.label75 = gui.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.layout16);
    obj.label75:setField("ca");
    obj.label75:setLeft(5);
    obj.label75:setTop(27);
    obj.label75:setWidth(35);
    obj.label75:setHorzTextAlign("center");
    obj.label75:setName("label75");

    obj.label76 = gui.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.layout16);
    obj.label76:setLeft(45);
    obj.label76:setTop(0);
    obj.label76:setWidth(40);
    obj.label76:setHeight(20);
    obj.label76:setText("SURP.");
    obj.label76:setName("label76");

    obj.edit62 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.layout16);
    obj.edit62:setType("number");
    obj.edit62:setVertTextAlign("center");
    obj.edit62:setHorzTextAlign("center");
    obj.edit62:setLeft(45);
    obj.edit62:setTop(25);
    obj.edit62:setWidth(40);
    obj.edit62:setHeight(25);
    obj.edit62:setField("surpresa");
    obj.edit62:setName("edit62");

    obj.label77 = gui.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.layout16);
    obj.label77:setLeft(85);
    obj.label77:setTop(0);
    obj.label77:setWidth(45);
    obj.label77:setHeight(20);
    obj.label77:setText("TOQUE");
    obj.label77:setName("label77");

    obj.edit63 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.layout16);
    obj.edit63:setType("number");
    obj.edit63:setVertTextAlign("center");
    obj.edit63:setHorzTextAlign("center");
    obj.edit63:setLeft(90);
    obj.edit63:setTop(25);
    obj.edit63:setWidth(40);
    obj.edit63:setHeight(25);
    obj.edit63:setField("toque");
    obj.edit63:setName("edit63");

    obj.label78 = gui.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.layout16);
    obj.label78:setLeft(135);
    obj.label78:setTop(0);
    obj.label78:setWidth(35);
    obj.label78:setHeight(20);
    obj.label78:setText("PEN");
    obj.label78:setName("label78");

    obj.edit64 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.layout16);
    obj.edit64:setType("number");
    obj.edit64:setVertTextAlign("center");
    obj.edit64:setHorzTextAlign("center");
    obj.edit64:setLeft(135);
    obj.edit64:setTop(25);
    obj.edit64:setWidth(35);
    obj.edit64:setHeight(25);
    obj.edit64:setField("penalidade");
    obj.edit64:setName("edit64");

    obj.label79 = gui.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.layout16);
    obj.label79:setLeft(170);
    obj.label79:setTop(0);
    obj.label79:setWidth(40);
    obj.label79:setHeight(20);
    obj.label79:setText("FALHA");
    obj.label79:setName("label79");

    obj.edit65 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.layout16);
    obj.edit65:setVertTextAlign("center");
    obj.edit65:setHorzTextAlign("center");
    obj.edit65:setLeft(175);
    obj.edit65:setTop(25);
    obj.edit65:setWidth(35);
    obj.edit65:setHeight(25);
    obj.edit65:setField("falha");
    obj.edit65:setName("edit65");

    obj.layout17 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.scrollBox1);
    obj.layout17:setLeft(525);
    obj.layout17:setTop(280);
    obj.layout17:setWidth(35);
    obj.layout17:setHeight(300);
    obj.layout17:setName("layout17");

    obj.label80 = gui.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.layout17);
    obj.label80:setLeft(5);
    obj.label80:setTop(0);
    obj.label80:setWidth(35);
    obj.label80:setHeight(20);
    obj.label80:setText("ARM");
    obj.label80:setName("label80");

    obj.label81 = gui.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.layout17);
    obj.label81:setLeft(5);
    obj.label81:setTop(30);
    obj.label81:setWidth(35);
    obj.label81:setHeight(20);
    obj.label81:setText("ESC");
    obj.label81:setName("label81");

    obj.label82 = gui.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.layout17);
    obj.label82:setLeft(5);
    obj.label82:setTop(60);
    obj.label82:setWidth(35);
    obj.label82:setHeight(20);
    obj.label82:setText("DES");
    obj.label82:setName("label82");

    obj.label83 = gui.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.layout17);
    obj.label83:setLeft(5);
    obj.label83:setTop(90);
    obj.label83:setWidth(35);
    obj.label83:setHeight(20);
    obj.label83:setText("TAM");
    obj.label83:setName("label83");

    obj.label84 = gui.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.layout17);
    obj.label84:setLeft(5);
    obj.label84:setTop(120);
    obj.label84:setWidth(35);
    obj.label84:setHeight(20);
    obj.label84:setText("NAT");
    obj.label84:setName("label84");

    obj.label85 = gui.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.layout17);
    obj.label85:setLeft(5);
    obj.label85:setTop(150);
    obj.label85:setWidth(35);
    obj.label85:setHeight(20);
    obj.label85:setText("DEF");
    obj.label85:setName("label85");

    obj.label86 = gui.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.layout17);
    obj.label86:setLeft(5);
    obj.label86:setTop(180);
    obj.label86:setWidth(35);
    obj.label86:setHeight(20);
    obj.label86:setText("ESQ");
    obj.label86:setName("label86");

    obj.label87 = gui.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.layout17);
    obj.label87:setLeft(5);
    obj.label87:setTop(210);
    obj.label87:setWidth(35);
    obj.label87:setHeight(20);
    obj.label87:setText("SOR");
    obj.label87:setName("label87");

    obj.label88 = gui.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.layout17);
    obj.label88:setLeft(5);
    obj.label88:setTop(240);
    obj.label88:setWidth(35);
    obj.label88:setHeight(20);
    obj.label88:setText("OUT");
    obj.label88:setName("label88");

    obj.label89 = gui.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.layout17);
    obj.label89:setLeft(5);
    obj.label89:setTop(270);
    obj.label89:setWidth(35);
    obj.label89:setHeight(20);
    obj.label89:setText("VAR");
    obj.label89:setName("label89");

    obj.layout18 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.scrollBox1);
    obj.layout18:setLeft(565);
    obj.layout18:setTop(280);
    obj.layout18:setWidth(35);
    obj.layout18:setHeight(300);
    obj.layout18:setName("layout18");

    obj.edit66 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.layout18);
    obj.edit66:setType("number");
    obj.edit66:setVertTextAlign("center");
    obj.edit66:setHorzTextAlign("center");
    obj.edit66:setLeft(0);
    obj.edit66:setTop(0);
    obj.edit66:setWidth(35);
    obj.edit66:setHeight(25);
    obj.edit66:setField("armaduraCa");
    obj.edit66:setName("edit66");

    obj.edit67 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.layout18);
    obj.edit67:setType("number");
    obj.edit67:setVertTextAlign("center");
    obj.edit67:setHorzTextAlign("center");
    obj.edit67:setLeft(0);
    obj.edit67:setTop(30);
    obj.edit67:setWidth(35);
    obj.edit67:setHeight(25);
    obj.edit67:setField("escudoCa");
    obj.edit67:setName("edit67");

    obj.rectangle44 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle44:setParent(obj.layout18);
    obj.rectangle44:setLeft(0);
    obj.rectangle44:setTop(60);
    obj.rectangle44:setWidth(35);
    obj.rectangle44:setHeight(25);
    obj.rectangle44:setColor("black");
    obj.rectangle44:setStrokeColor("white");
    obj.rectangle44:setStrokeSize(1);
    obj.rectangle44:setName("rectangle44");

    obj.label90 = gui.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.layout18);
    obj.label90:setField("destrezaCa");
    obj.label90:setLeft(10);
    obj.label90:setTop(62);
    obj.label90:setWidth(25);
    obj.label90:setHorzTextAlign("center");
    obj.label90:setName("label90");

    obj.edit68 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.layout18);
    obj.edit68:setType("number");
    obj.edit68:setVertTextAlign("center");
    obj.edit68:setHorzTextAlign("center");
    obj.edit68:setLeft(0);
    obj.edit68:setTop(90);
    obj.edit68:setWidth(35);
    obj.edit68:setHeight(25);
    obj.edit68:setField("tamanhoCa");
    obj.edit68:setName("edit68");

    obj.edit69 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.layout18);
    obj.edit69:setType("number");
    obj.edit69:setVertTextAlign("center");
    obj.edit69:setHorzTextAlign("center");
    obj.edit69:setLeft(0);
    obj.edit69:setTop(120);
    obj.edit69:setWidth(35);
    obj.edit69:setHeight(25);
    obj.edit69:setField("naturalCa");
    obj.edit69:setName("edit69");

    obj.edit70 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.layout18);
    obj.edit70:setType("number");
    obj.edit70:setVertTextAlign("center");
    obj.edit70:setHorzTextAlign("center");
    obj.edit70:setLeft(0);
    obj.edit70:setTop(150);
    obj.edit70:setWidth(35);
    obj.edit70:setHeight(25);
    obj.edit70:setField("deflexaoCa");
    obj.edit70:setName("edit70");

    obj.edit71 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.layout18);
    obj.edit71:setType("number");
    obj.edit71:setVertTextAlign("center");
    obj.edit71:setHorzTextAlign("center");
    obj.edit71:setLeft(0);
    obj.edit71:setTop(180);
    obj.edit71:setWidth(35);
    obj.edit71:setHeight(25);
    obj.edit71:setField("esquivaCa");
    obj.edit71:setName("edit71");

    obj.edit72 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.layout18);
    obj.edit72:setType("number");
    obj.edit72:setVertTextAlign("center");
    obj.edit72:setHorzTextAlign("center");
    obj.edit72:setLeft(0);
    obj.edit72:setTop(210);
    obj.edit72:setWidth(35);
    obj.edit72:setHeight(25);
    obj.edit72:setField("sorteCa");
    obj.edit72:setName("edit72");

    obj.edit73 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.layout18);
    obj.edit73:setType("number");
    obj.edit73:setVertTextAlign("center");
    obj.edit73:setHorzTextAlign("center");
    obj.edit73:setLeft(0);
    obj.edit73:setTop(240);
    obj.edit73:setWidth(35);
    obj.edit73:setHeight(25);
    obj.edit73:setField("outrosCa");
    obj.edit73:setName("edit73");

    obj.edit74 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.layout18);
    obj.edit74:setType("number");
    obj.edit74:setVertTextAlign("center");
    obj.edit74:setHorzTextAlign("center");
    obj.edit74:setLeft(0);
    obj.edit74:setTop(270);
    obj.edit74:setWidth(35);
    obj.edit74:setHeight(25);
    obj.edit74:setField("variadosCa");
    obj.edit74:setName("edit74");

    obj.layout19 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.scrollBox1);
    obj.layout19:setLeft(605);
    obj.layout19:setTop(280);
    obj.layout19:setWidth(165);
    obj.layout19:setHeight(300);
    obj.layout19:setName("layout19");

    obj.edit75 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.layout19);
    obj.edit75:setVertTextAlign("center");
    obj.edit75:setLeft(0);
    obj.edit75:setTop(0);
    obj.edit75:setWidth(165);
    obj.edit75:setHeight(25);
    obj.edit75:setField("armaduraCa2");
    obj.edit75:setName("edit75");

    obj.edit76 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.layout19);
    obj.edit76:setVertTextAlign("center");
    obj.edit76:setLeft(0);
    obj.edit76:setTop(30);
    obj.edit76:setWidth(165);
    obj.edit76:setHeight(25);
    obj.edit76:setField("escudoCa2");
    obj.edit76:setName("edit76");

    obj.edit77 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.layout19);
    obj.edit77:setVertTextAlign("center");
    obj.edit77:setLeft(0);
    obj.edit77:setTop(60);
    obj.edit77:setWidth(165);
    obj.edit77:setHeight(25);
    obj.edit77:setField("destrezaCa2");
    obj.edit77:setName("edit77");

    obj.edit78 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.layout19);
    obj.edit78:setVertTextAlign("center");
    obj.edit78:setLeft(0);
    obj.edit78:setTop(90);
    obj.edit78:setWidth(165);
    obj.edit78:setHeight(25);
    obj.edit78:setField("tamanhoCa2");
    obj.edit78:setName("edit78");

    obj.edit79 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.layout19);
    obj.edit79:setVertTextAlign("center");
    obj.edit79:setLeft(0);
    obj.edit79:setTop(120);
    obj.edit79:setWidth(165);
    obj.edit79:setHeight(25);
    obj.edit79:setField("naturalCa2");
    obj.edit79:setName("edit79");

    obj.edit80 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.layout19);
    obj.edit80:setVertTextAlign("center");
    obj.edit80:setLeft(0);
    obj.edit80:setTop(150);
    obj.edit80:setWidth(165);
    obj.edit80:setHeight(25);
    obj.edit80:setField("deflexaoCa2");
    obj.edit80:setName("edit80");

    obj.edit81 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.layout19);
    obj.edit81:setVertTextAlign("center");
    obj.edit81:setLeft(0);
    obj.edit81:setTop(180);
    obj.edit81:setWidth(165);
    obj.edit81:setHeight(25);
    obj.edit81:setField("esquivaCa2");
    obj.edit81:setName("edit81");

    obj.edit82 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.layout19);
    obj.edit82:setVertTextAlign("center");
    obj.edit82:setLeft(0);
    obj.edit82:setTop(210);
    obj.edit82:setWidth(165);
    obj.edit82:setHeight(25);
    obj.edit82:setField("sorteCa2");
    obj.edit82:setName("edit82");

    obj.edit83 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.layout19);
    obj.edit83:setVertTextAlign("center");
    obj.edit83:setLeft(0);
    obj.edit83:setTop(240);
    obj.edit83:setWidth(165);
    obj.edit83:setHeight(25);
    obj.edit83:setField("outrosCa2");
    obj.edit83:setName("edit83");

    obj.edit84 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.layout19);
    obj.edit84:setVertTextAlign("center");
    obj.edit84:setLeft(0);
    obj.edit84:setTop(270);
    obj.edit84:setWidth(165);
    obj.edit84:setHeight(25);
    obj.edit84:setField("variadosCa2");
    obj.edit84:setName("edit84");

    obj.dataLink9 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.scrollBox1);
    obj.dataLink9:setFields({'armaduraCa', 'buffCA', 'escudoCa', 'destrezaCa', 'tamanhoCa', 'naturalCa', 'deflexaoCa', 'esquivaCa', 'sorteCa', 'outrosCa', 'variadosCa'});
    obj.dataLink9:setName("dataLink9");

    obj.layout20 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.scrollBox1);
    obj.layout20:setLeft(525);
    obj.layout20:setTop(595);
    obj.layout20:setWidth(260);
    obj.layout20:setHeight(25);
    obj.layout20:setName("layout20");

    obj.label91 = gui.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.layout20);
    obj.label91:setLeft(5);
    obj.label91:setTop(0);
    obj.label91:setWidth(30);
    obj.label91:setHeight(20);
    obj.label91:setText("RM");
    obj.label91:setName("label91");

    obj.edit85 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.layout20);
    obj.edit85:setVertTextAlign("center");
    obj.edit85:setLeft(40);
    obj.edit85:setTop(0);
    obj.edit85:setWidth(205);
    obj.edit85:setHeight(25);
    obj.edit85:setField("rm");
    obj.edit85:setName("edit85");

    obj.dataLink10 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.scrollBox1);
    obj.dataLink10:setFields({'for1', 'for3', 'for5', 'for2', 'for4', 'for6'});
    obj.dataLink10:setName("dataLink10");

    obj.dataLink11 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.scrollBox1);
    obj.dataLink11:setFields({'des1', 'des3', 'des5', 'des2', 'des4', 'des6'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.scrollBox1);
    obj.dataLink12:setFields({'con1', 'con2', 'con3', 'con4', 'con5', 'con6'});
    obj.dataLink12:setName("dataLink12");

    obj.dataLink13 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.scrollBox1);
    obj.dataLink13:setFields({'sab1', 'sab3', 'sab5', 'sab2', 'sab4', 'sab6'});
    obj.dataLink13:setName("dataLink13");

    obj.rectangle45 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle45:setParent(obj.scrollBox1);
    obj.rectangle45:setLeft(785);
    obj.rectangle45:setTop(140);
    obj.rectangle45:setWidth(322);
    obj.rectangle45:setHeight(322);
    obj.rectangle45:setColor("black");
    obj.rectangle45:setStrokeColor("white");
    obj.rectangle45:setStrokeSize(1);
    obj.rectangle45:setName("rectangle45");

    obj.image1 = gui.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox1);
    obj.image1:setLeft(786);
    obj.image1:setTop(141);
    obj.image1:setWidth(320);
    obj.image1:setHeight(320);
    obj.image1:setField("avatar");
    obj.image1:setEditable(true);
    obj.image1:setStyle("autoFit");
    obj.image1:setName("image1");

    obj.layout21 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.scrollBox1);
    obj.layout21:setLeft(785);
    obj.layout21:setTop(470);
    obj.layout21:setWidth(322);
    obj.layout21:setHeight(170);
    obj.layout21:setName("layout21");

    obj.rectangle46 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle46:setParent(obj.layout21);
    obj.rectangle46:setAlign("client");
    obj.rectangle46:setColor("black");
    obj.rectangle46:setName("rectangle46");

    obj.label92 = gui.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.layout21);
    obj.label92:setLeft(5);
    obj.label92:setTop(0);
    obj.label92:setWidth(321);
    obj.label92:setHeight(20);
    obj.label92:setText("BÔNUS TEMPORARIOS");
    obj.label92:setName("label92");

    obj.button14 = gui.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.layout21);
    obj.button14:setLeft(165);
    obj.button14:setTop(0);
    obj.button14:setWidth(85);
    obj.button14:setHeight(20);
    obj.button14:setText("CA oculta");
    obj.button14:setName("button14");

    obj.label93 = gui.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.layout21);
    obj.label93:setLeft(165);
    obj.label93:setTop(20);
    obj.label93:setWidth(165);
    obj.label93:setHeight(20);
    obj.label93:setText("Apenas o Mestre.");
    obj.label93:setName("label93");

    obj.label94 = gui.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.layout21);
    obj.label94:setLeft(165);
    obj.label94:setTop(40);
    obj.label94:setWidth(50);
    obj.label94:setHeight(25);
    obj.label94:setText("Alvo 1");
    obj.label94:setName("label94");

    obj.alvo1 = gui.fromHandle(_obj_newObject("edit"));
    obj.alvo1:setParent(obj.layout21);
    obj.alvo1:setLeft(205);
    obj.alvo1:setTop(40);
    obj.alvo1:setWidth(40);
    obj.alvo1:setHeight(25);
    obj.alvo1:setField("alvo1");
    obj.alvo1:setName("alvo1");
    obj.alvo1:setVisible(false);
    obj.alvo1:setType("number");

    obj.label95 = gui.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.layout21);
    obj.label95:setLeft(165);
    obj.label95:setTop(65);
    obj.label95:setWidth(50);
    obj.label95:setHeight(25);
    obj.label95:setText("Alvo 2");
    obj.label95:setName("label95");

    obj.alvo2 = gui.fromHandle(_obj_newObject("edit"));
    obj.alvo2:setParent(obj.layout21);
    obj.alvo2:setLeft(205);
    obj.alvo2:setTop(65);
    obj.alvo2:setWidth(40);
    obj.alvo2:setHeight(25);
    obj.alvo2:setField("alvo2");
    obj.alvo2:setName("alvo2");
    obj.alvo2:setVisible(false);
    obj.alvo2:setType("number");

    obj.label96 = gui.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.layout21);
    obj.label96:setLeft(165);
    obj.label96:setTop(90);
    obj.label96:setWidth(50);
    obj.label96:setHeight(25);
    obj.label96:setText("Alvo 3");
    obj.label96:setName("label96");

    obj.alvo3 = gui.fromHandle(_obj_newObject("edit"));
    obj.alvo3:setParent(obj.layout21);
    obj.alvo3:setLeft(205);
    obj.alvo3:setTop(90);
    obj.alvo3:setWidth(40);
    obj.alvo3:setHeight(25);
    obj.alvo3:setField("alvo3");
    obj.alvo3:setName("alvo3");
    obj.alvo3:setVisible(false);
    obj.alvo3:setType("number");

    obj.label97 = gui.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.layout21);
    obj.label97:setLeft(165);
    obj.label97:setTop(115);
    obj.label97:setWidth(50);
    obj.label97:setHeight(25);
    obj.label97:setText("Alvo 4");
    obj.label97:setName("label97");

    obj.alvo4 = gui.fromHandle(_obj_newObject("edit"));
    obj.alvo4:setParent(obj.layout21);
    obj.alvo4:setLeft(205);
    obj.alvo4:setTop(115);
    obj.alvo4:setWidth(40);
    obj.alvo4:setHeight(25);
    obj.alvo4:setField("alvo4");
    obj.alvo4:setName("alvo4");
    obj.alvo4:setVisible(false);
    obj.alvo4:setType("number");

    obj.label98 = gui.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.layout21);
    obj.label98:setLeft(165);
    obj.label98:setTop(140);
    obj.label98:setWidth(50);
    obj.label98:setHeight(25);
    obj.label98:setText("Alvo 5");
    obj.label98:setName("label98");

    obj.alvo5 = gui.fromHandle(_obj_newObject("edit"));
    obj.alvo5:setParent(obj.layout21);
    obj.alvo5:setLeft(205);
    obj.alvo5:setTop(140);
    obj.alvo5:setWidth(40);
    obj.alvo5:setHeight(25);
    obj.alvo5:setField("alvo5");
    obj.alvo5:setName("alvo5");
    obj.alvo5:setVisible(false);
    obj.alvo5:setType("number");


				local function caSecreta()
					local jogadores = rrpg.getMesaDe(sheet).jogadores;
					local current = nil;
					
					for i = 1, #jogadores, 1 do
						if jogadores[i].login==rrpg.getCurrentUser().login then
							current = jogadores[i];
						end;
					end; 
					
					
					if current~=nil and current.isMestre then
						self.alvo1.visible = true;
						self.alvo2.visible = true;
						self.alvo3.visible = true;
						self.alvo4.visible = true;
						self.alvo5.visible = true;
					else
						self.alvo1.visible = false;
						self.alvo2.visible = false;
						self.alvo3.visible = false;
						self.alvo4.visible = false;
						self.alvo5.visible = false;
					end;
					
				end;
			


    obj.label99 = gui.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.layout21);
    obj.label99:setLeft(5);
    obj.label99:setTop(30);
    obj.label99:setWidth(50);
    obj.label99:setHeight(20);
    obj.label99:setText("ATAQUE");
    obj.label99:setName("label99");

    obj.edit86 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.layout21);
    obj.edit86:setVertTextAlign("center");
    obj.edit86:setLeft(60);
    obj.edit86:setTop(30);
    obj.edit86:setWidth(70);
    obj.edit86:setHeight(25);
    obj.edit86:setField("buffAtaque");
    obj.edit86:setName("edit86");

    obj.label100 = gui.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.layout21);
    obj.label100:setLeft(5);
    obj.label100:setTop(55);
    obj.label100:setWidth(50);
    obj.label100:setHeight(20);
    obj.label100:setText("DANO");
    obj.label100:setName("label100");

    obj.edit87 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.layout21);
    obj.edit87:setVertTextAlign("center");
    obj.edit87:setLeft(60);
    obj.edit87:setTop(55);
    obj.edit87:setWidth(70);
    obj.edit87:setHeight(25);
    obj.edit87:setField("buffDano");
    obj.edit87:setName("edit87");

    obj.label101 = gui.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.layout21);
    obj.label101:setLeft(5);
    obj.label101:setTop(80);
    obj.label101:setWidth(50);
    obj.label101:setHeight(20);
    obj.label101:setText("CRITICO");
    obj.label101:setName("label101");

    obj.edit88 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.layout21);
    obj.edit88:setVertTextAlign("center");
    obj.edit88:setLeft(60);
    obj.edit88:setTop(80);
    obj.edit88:setWidth(70);
    obj.edit88:setHeight(25);
    obj.edit88:setField("buffDanoCritico");
    obj.edit88:setName("edit88");

    obj.label102 = gui.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.layout21);
    obj.label102:setLeft(5);
    obj.label102:setTop(105);
    obj.label102:setWidth(50);
    obj.label102:setHeight(20);
    obj.label102:setText("TR");
    obj.label102:setName("label102");

    obj.edit89 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.layout21);
    obj.edit89:setVertTextAlign("center");
    obj.edit89:setLeft(60);
    obj.edit89:setTop(105);
    obj.edit89:setWidth(70);
    obj.edit89:setHeight(25);
    obj.edit89:setField("buffTR");
    obj.edit89:setName("edit89");

    obj.label103 = gui.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.layout21);
    obj.label103:setLeft(5);
    obj.label103:setTop(130);
    obj.label103:setWidth(50);
    obj.label103:setHeight(20);
    obj.label103:setText("CA");
    obj.label103:setName("label103");

    obj.edit90 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.layout21);
    obj.edit90:setVertTextAlign("center");
    obj.edit90:setLeft(60);
    obj.edit90:setTop(130);
    obj.edit90:setWidth(70);
    obj.edit90:setHeight(25);
    obj.edit90:setField("buffCA");
    obj.edit90:setName("edit90");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (self)
            local mod = (getNumber(sheet.xpAtual) or 0) + (getNumber(sheet.xpNova) or 0);
            						
            						while true do  
            							mod, k = string.gsub(mod, "^(-?%d+)(%d%d%d)", '%1,%2')
            							if (k==0) then
            							  break
            							end
            						end
            						mod = string.gsub(mod, ",", ".");
            						
            						sheet.xpAtual = mod .. "XP";
            						sheet.xpNova = "0";
        end, obj);

    obj._e_event1 = obj.dataLink1:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local mod = sheet.xpAtual;
            					mod = string.gsub(mod, "X", "");
            					mod = string.gsub(mod, "P", "");
            					mod = string.gsub(mod, "x", "");
            					mod = string.gsub(mod, "p", "");
            					mod = string.gsub(mod, "%.", "");
            					mod = (tonumber(mod) or 0);
            					local mod2 = 0;
            					local mod3 = 0;
            					while mod>=mod2 do
            						mod3 = mod3+1;
            						mod2 = mod2 + mod3*1000;
            					end
            					
            					while true do  
            						mod2, k = string.gsub(mod2, "^(-?%d+)(%d%d%d)", '%1,%2')
            						if (k==0) then
            						  break
            						end
            					end
            					mod2 = string.gsub(mod2, ",", ".");
            					
            					sheet.xpNivel = mod2 .. "XP";
            					sheet.nep = mod3;
        end, obj);

    obj._e_event2 = obj.button2:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 + " .. getFOR());
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Força de " .. sheet.nome);
        end, obj);

    obj._e_event3 = obj.edit12:addEventListener("onUserChange",
        function (self)
            sheet.for2 = getMOD(sheet.for1);
        end, obj);

    obj._e_event4 = obj.edit13:addEventListener("onUserChange",
        function (self)
            sheet.for4 = getMOD(sheet.for3);
        end, obj);

    obj._e_event5 = obj.edit14:addEventListener("onUserChange",
        function (self)
            sheet.for6 = getMOD(sheet.for5);
        end, obj);

    obj._e_event6 = obj.button3:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 + " .. getDES());
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Destreza de " .. sheet.nome);
        end, obj);

    obj._e_event7 = obj.edit15:addEventListener("onUserChange",
        function (self)
            sheet.des2 = getMOD(sheet.des1);
        end, obj);

    obj._e_event8 = obj.edit16:addEventListener("onUserChange",
        function (self)
            sheet.des4 = getMOD(sheet.des3);
        end, obj);

    obj._e_event9 = obj.edit17:addEventListener("onUserChange",
        function (self)
            sheet.des6 = getMOD(sheet.des5);
        end, obj);

    obj._e_event10 = obj.button4:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 + " .. getCON());
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Constituição de " .. sheet.nome);
        end, obj);

    obj._e_event11 = obj.edit18:addEventListener("onUserChange",
        function (self)
            sheet.con2 = getMOD(sheet.con1);
        end, obj);

    obj._e_event12 = obj.edit19:addEventListener("onUserChange",
        function (self)
            sheet.con4 = getMOD(sheet.con3);
        end, obj);

    obj._e_event13 = obj.edit20:addEventListener("onUserChange",
        function (self)
            sheet.con6 = getMOD(sheet.con5);
        end, obj);

    obj._e_event14 = obj.button5:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 + " .. getINT());
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Inteligência de " .. sheet.nome);
        end, obj);

    obj._e_event15 = obj.edit21:addEventListener("onUserChange",
        function (self)
            sheet.int2 = getMOD(sheet.int1);
        end, obj);

    obj._e_event16 = obj.edit22:addEventListener("onUserChange",
        function (self)
            sheet.int4 = getMOD(sheet.int3);
        end, obj);

    obj._e_event17 = obj.edit23:addEventListener("onUserChange",
        function (self)
            sheet.int6 = getMOD(sheet.int5);
        end, obj);

    obj._e_event18 = obj.button6:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 + " .. getSAB());
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Sabedoria de " .. sheet.nome);
        end, obj);

    obj._e_event19 = obj.edit24:addEventListener("onUserChange",
        function (self)
            sheet.sab2 = getMOD(sheet.sab1);
        end, obj);

    obj._e_event20 = obj.edit25:addEventListener("onUserChange",
        function (self)
            sheet.sab4 = getMOD(sheet.sab3);
        end, obj);

    obj._e_event21 = obj.edit26:addEventListener("onUserChange",
        function (self)
            sheet.sab6 = getMOD(sheet.sab5);
        end, obj);

    obj._e_event22 = obj.button7:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 + " .. getCAR());
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Carisma de " .. sheet.nome);
        end, obj);

    obj._e_event23 = obj.edit27:addEventListener("onUserChange",
        function (self)
            sheet.car2 = getMOD(sheet.car1);
        end, obj);

    obj._e_event24 = obj.edit28:addEventListener("onUserChange",
        function (self)
            sheet.car4 = getMOD(sheet.car3);
        end, obj);

    obj._e_event25 = obj.edit29:addEventListener("onUserChange",
        function (self)
            sheet.car6 = getMOD(sheet.car5);
        end, obj);

    obj._e_event26 = obj.button8:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 + " .. sheet.fortTotal);
            					if sheet.buffTR ~= nil then
            						rolagem = rolagem:concatenar(sheet.buffTR);
            					end;
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Fortitude de " .. sheet.nome);
        end, obj);

    obj._e_event27 = obj.dataLink2:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local mod = (tonumber(sheet.fortBase) or 0) + 
            								(tonumber(sheet.fortAtr) or 0) + 
            								(tonumber(sheet.fortMagia) or 0) +   
            								(tonumber(sheet.fortVar) or 0) +  
            								(tonumber(sheet.fortTemp) or 0) +  
            								(tonumber(sheet.fortOut) or 0);					  
            					sheet.fortTotal = mod;
        end, obj);

    obj._e_event28 = obj.button9:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 + " .. sheet.refTotal);
            					if sheet.buffTR ~= nil then
            						rolagem = rolagem:concatenar(sheet.buffTR);
            					end;
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Reflexos de " .. sheet.nome);
        end, obj);

    obj._e_event29 = obj.dataLink3:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local mod = (tonumber(sheet.refBase) or 0) + 
            								(tonumber(sheet.refAtr) or 0) + 
            								(tonumber(sheet.refMagia) or 0) +   
            								(tonumber(sheet.refVar) or 0) +  
            								(tonumber(sheet.refTemp) or 0) +  
            								(tonumber(sheet.refOut) or 0);					  
            					sheet.refTotal = mod;
        end, obj);

    obj._e_event30 = obj.button10:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 + " .. sheet.vonTotal);
            					if sheet.buffTR ~= nil then
            						rolagem = rolagem:concatenar(sheet.buffTR);
            					end;
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Vontade de " .. sheet.nome);
        end, obj);

    obj._e_event31 = obj.dataLink4:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local mod = (tonumber(sheet.vonBase) or 0) + 
            								(tonumber(sheet.vonAtr) or 0) + 
            								(tonumber(sheet.vonMagia) or 0) +   
            								(tonumber(sheet.vonVar) or 0) +  
            								(tonumber(sheet.vonTemp) or 0) +  
            								(tonumber(sheet.vonOut) or 0);					  
            					sheet.vonTotal = mod;
        end, obj);

    obj._e_event32 = obj.button11:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 + " .. sheet.agarrar);
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Agarrar de " .. sheet.nome);
        end, obj);

    obj._e_event33 = obj.dataLink5:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local mod = (tonumber(sheet.bba) or 0) + 
            							(tonumber(sheet.agarrarFor) or 0) +  
            							(tonumber(sheet.agarrarTam) or 0) +   
            							(tonumber(sheet.agarrarVar) or 0);					  
            				sheet.agarrar = mod;
        end, obj);

    obj._e_event34 = obj.dataLink6:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local mod1 = 0;
            					local mod2 = 0;
            					if sheet.penumbraBase~=nil then
            						mod1 = string.gsub(sheet.penumbraBase, "m", "");
            					end;
            					if sheet.penumbraMult~=nil then
            						mod2 = string.gsub(sheet.penumbraMult, "m", "");
            					end;
            					local mod = (tonumber(mod1) or 0)*(tonumber(mod2) or 0);
            					sheet.penumbraTotal = mod .. "m";
        end, obj);

    obj._e_event35 = obj.dataLink7:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local mod1 = 0;
            					local mod2 = 0;
            					local mod3 = 0;
            					if sheet.luz~=mil then
            						mod1 = string.gsub(sheet.luz, "m", "");
            					end;
            					if sheet.escuro~=nil then
            						mod2 = string.gsub(sheet.escuro, "m", "");
            					end;
            					if sheet.penumbraTotal~=nil then
            						mod3 = string.gsub(sheet.penumbraTotal, "m", "");
            					end;
            					local mod = (tonumber(mod1) or 0) + (tonumber(mod2) or 0) + (tonumber(mod3) or 0);
            					sheet.totalVisao = mod .. "m";
        end, obj);

    obj._e_event36 = obj.button12:addEventListener("onClick",
        function (self)
            local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					sheet.modificador = sheet.modificador or 0;
            					mesaDoPersonagem.activeChat:rolarDados(sheet.dvs, "Pontos de Vigor de " .. sheet.nome,
            						function (rolagem)
            							local maximo = 0;
            							local media = 0;
            							for i = 1, #rolagem.ops, 1 do 
            								local operacao = rolagem.ops[i]; 
            								if operacao.tipo == "dado" then   
            									maximo = maximo + (operacao.quantidade * operacao.face);
            									media = media + (operacao.quantidade * (operacao.face+1)/2);
            									if i==1 then
            										media = media + ((operacao.face-1)/2);
            									end;
            								elseif operacao.tipo == "imediato" then
            									maximo = maximo + operacao.valor;
            									media = media + operacao.valor;
            								end;
            							end;
            							local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            							mesaDoPersonagem.activeChat:enviarMensagem("PV máximo: " .. maximo .. "; PV médio: " .. math.floor(media));
            							sheet.pvTotal = math.floor(media);
            						end);
        end, obj);

    obj._e_event37 = obj.button13:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 " .. sheet.iniciativa);
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de Iniciativa de " .. sheet.nome);
        end, obj);

    obj._e_event38 = obj.dataLink8:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local mod = (tonumber(sheet.iniDes) or 0) + (tonumber(sheet.iniVariado) or 0);
            				if (mod >= 0) then
            						mod = "+" .. mod;
            				end;					   
            				sheet.iniciativa = mod;
        end, obj);

    obj._e_event39 = obj.dataLink9:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local mod = (tonumber(sheet.armaduraCa) or 0) + 
            							(tonumber(sheet.escudoCa) or 0) + 
            							(tonumber(sheet.destrezaCa) or 0) +   
            							(tonumber(sheet.tamanhoCa) or 0) +  
            							(tonumber(sheet.naturalCa) or 0) +  
            							(tonumber(sheet.deflexaoCa) or 0) +  
            							(tonumber(sheet.esquivaCa) or 0) +  
            							(tonumber(sheet.sorteCa) or 0) +  
            							(tonumber(sheet.outrosCa) or 0) +  
            							(tonumber(sheet.variadosCa) or 0) +
            							(tonumber(sheet.buffCA) or 0) +
            								10;					  
            					sheet.ca = mod;
        end, obj);

    obj._e_event40 = obj.dataLink10:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            sheet.agarrarFor = getFOR();
        end, obj);

    obj._e_event41 = obj.dataLink11:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local mod = getDES();  
            				sheet.iniDes = mod;						
            				sheet.destrezaCa = mod;
            				sheet.refAtr = mod;
        end, obj);

    obj._e_event42 = obj.dataLink12:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            sheet.fortAtr = getCON();
        end, obj);

    obj._e_event43 = obj.dataLink13:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            sheet.vonAtr = getSAB();
        end, obj);

    obj._e_event44 = obj.button14:addEventListener("onClick",
        function (self)
            caSecreta();
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
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

        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.rectangle46 ~= nil then self.rectangle46:destroy(); self.rectangle46 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.alvo4 ~= nil then self.alvo4:destroy(); self.alvo4 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.alvo2 ~= nil then self.alvo2:destroy(); self.alvo2 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.alvo5 ~= nil then self.alvo5:destroy(); self.alvo5 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.rectangle44 ~= nil then self.rectangle44:destroy(); self.rectangle44 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.alvo3 ~= nil then self.alvo3:destroy(); self.alvo3 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.alvo1 ~= nil then self.alvo1:destroy(); self.alvo1 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.rectangle45 ~= nil then self.rectangle45:destroy(); self.rectangle45 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.rectangle43 ~= nil then self.rectangle43:destroy(); self.rectangle43 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmFichaRPGmeister1_svg = {
    newEditor = newfrmFichaRPGmeister1_svg, 
    new = newfrmFichaRPGmeister1_svg, 
    name = "frmFichaRPGmeister1_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmFichaRPGmeister1_svg = _frmFichaRPGmeister1_svg;
rrpg.registrarForm(_frmFichaRPGmeister1_svg);

return _frmFichaRPGmeister1_svg;
