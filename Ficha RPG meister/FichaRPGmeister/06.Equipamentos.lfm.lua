require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmFichaRPGmeister6_svg()
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
    obj:setName("frmFichaRPGmeister6_svg");
    obj:setAlign("client");
    obj:setTheme("dark");
    obj:setMargins({top=1});

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.image1 = gui.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox1);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(1211);
    obj.image1:setHeight(668);
    obj.image1:setSRC("images/06.Equipamentos.png");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.image2 = gui.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox1);
    obj.image2:setLeft(506);
    obj.image2:setTop(70);
    obj.image2:setWidth(200);
    obj.image2:setHeight(600);
    obj.image2:setSRC("/FichaRPGmeister/images/slots.png");
    obj.image2:setStyle("stretch");
    obj.image2:setOptimize(true);
    obj.image2:setName("image2");


			local function getNumber(text)
				local mod = "0";
				if text~= nil then
					mod = string.gsub(text, "%.", "");
					mod = string.gsub(mod, "k", "000");
					mod = string.gsub(mod, "P", "");
					mod = string.gsub(mod, "p", "");
					mod = string.gsub(mod, "O", "");
					mod = string.gsub(mod, "o", "");
					mod = string.gsub(mod, "X", "");
					mod = string.gsub(mod, "x", "");
					mod = string.gsub(mod, " ", "");
				end
				return tonumber(mod);
			end;
		


    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(1);
    obj.layout1:setTop(1);
    obj.layout1:setWidth(250);
    obj.layout1:setHeight(222);
    obj.layout1:setName("layout1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.layout1);
    obj.rectangle1:setAlign("client");
    obj.rectangle1:setColor("black");
    obj.rectangle1:setName("rectangle1");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setLeft(5);
    obj.label1:setTop(1);
    obj.label1:setWidth(200);
    obj.label1:setHeight(20);
    obj.label1:setText("CABEÇA");
    obj.label1:setName("label1");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setLeft(5);
    obj.edit1:setTop(20);
    obj.edit1:setWidth(240);
    obj.edit1:setHeight(25);
    obj.edit1:setField("equipamentoCabeca");
    obj.edit1:setName("edit1");

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout1);
    obj.textEditor1:setLeft(5);
    obj.textEditor1:setTop(47);
    obj.textEditor1:setWidth(240);
    obj.textEditor1:setHeight(140);
    obj.textEditor1:setField("descricaoCabeca");
    obj.textEditor1:setName("textEditor1");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setType("number");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setLeft(64);
    obj.edit2:setTop(190);
    obj.edit2:setWidth(25);
    obj.edit2:setHeight(25);
    obj.edit2:setField("minCabeca");
    obj.edit2:setName("edit2");

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.layout1);
    obj.dataLink1:setField("minCabeca");
    obj.dataLink1:setName("dataLink1");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout1);
    obj.edit3:setType("number");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setLeft(90);
    obj.edit3:setTop(190);
    obj.edit3:setWidth(25);
    obj.edit3:setHeight(25);
    obj.edit3:setField("maxCabeca");
    obj.edit3:setName("edit3");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setLeft(117);
    obj.label2:setTop(193);
    obj.label2:setWidth(50);
    obj.label2:setHeight(20);
    obj.label2:setText("PREÇO");
    obj.label2:setName("label2");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout1);
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setLeft(160);
    obj.edit4:setTop(190);
    obj.edit4:setWidth(84);
    obj.edit4:setHeight(25);
    obj.edit4:setField("precoCabeca");
    obj.edit4:setName("edit4");

    obj.progressBar1 = gui.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar1:setParent(obj.layout1);
    obj.progressBar1:setLeft(5);
    obj.progressBar1:setTop(195);
    obj.progressBar1:setWidth(55);
    obj.progressBar1:setHeight(15);
    obj.progressBar1:setColor("green");
    obj.progressBar1:setHitTest(true);
    obj.progressBar1:setMax(1);
    obj.progressBar1:setField("usosCabeca");
    obj.progressBar1:setName("progressBar1");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(252);
    obj.layout2:setTop(1);
    obj.layout2:setWidth(250);
    obj.layout2:setHeight(222);
    obj.layout2:setName("layout2");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout2);
    obj.rectangle2:setAlign("client");
    obj.rectangle2:setColor("black");
    obj.rectangle2:setName("rectangle2");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setLeft(5);
    obj.label3:setTop(1);
    obj.label3:setWidth(200);
    obj.label3:setHeight(20);
    obj.label3:setText("OLHOS");
    obj.label3:setName("label3");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout2);
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setLeft(5);
    obj.edit5:setTop(20);
    obj.edit5:setWidth(240);
    obj.edit5:setHeight(25);
    obj.edit5:setField("equipamentoOlhos");
    obj.edit5:setName("edit5");

    obj.textEditor2 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout2);
    obj.textEditor2:setLeft(5);
    obj.textEditor2:setTop(47);
    obj.textEditor2:setWidth(240);
    obj.textEditor2:setHeight(140);
    obj.textEditor2:setField("descricaoOlhos");
    obj.textEditor2:setName("textEditor2");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout2);
    obj.edit6:setType("number");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setLeft(64);
    obj.edit6:setTop(190);
    obj.edit6:setWidth(25);
    obj.edit6:setHeight(25);
    obj.edit6:setField("minOlhos");
    obj.edit6:setName("edit6");

    obj.dataLink2 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.layout2);
    obj.dataLink2:setField("minOlhos");
    obj.dataLink2:setName("dataLink2");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout2);
    obj.edit7:setType("number");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setLeft(90);
    obj.edit7:setTop(190);
    obj.edit7:setWidth(25);
    obj.edit7:setHeight(25);
    obj.edit7:setField("maxOlhos");
    obj.edit7:setName("edit7");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setLeft(117);
    obj.label4:setTop(193);
    obj.label4:setWidth(50);
    obj.label4:setHeight(20);
    obj.label4:setText("PREÇO");
    obj.label4:setName("label4");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout2);
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setLeft(160);
    obj.edit8:setTop(190);
    obj.edit8:setWidth(84);
    obj.edit8:setHeight(25);
    obj.edit8:setField("precoOlhos");
    obj.edit8:setName("edit8");

    obj.progressBar2 = gui.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar2:setParent(obj.layout2);
    obj.progressBar2:setLeft(5);
    obj.progressBar2:setTop(195);
    obj.progressBar2:setWidth(55);
    obj.progressBar2:setHeight(15);
    obj.progressBar2:setColor("green");
    obj.progressBar2:setHitTest(true);
    obj.progressBar2:setMax(1);
    obj.progressBar2:setField("usosOlhos");
    obj.progressBar2:setName("progressBar2");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(710);
    obj.layout3:setTop(1);
    obj.layout3:setWidth(250);
    obj.layout3:setHeight(222);
    obj.layout3:setName("layout3");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout3);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("black");
    obj.rectangle3:setName("rectangle3");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout3);
    obj.label5:setLeft(5);
    obj.label5:setTop(1);
    obj.label5:setWidth(200);
    obj.label5:setHeight(20);
    obj.label5:setText("PESCOÇO");
    obj.label5:setName("label5");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout3);
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setLeft(5);
    obj.edit9:setTop(20);
    obj.edit9:setWidth(240);
    obj.edit9:setHeight(25);
    obj.edit9:setField("equipamentoPescoco");
    obj.edit9:setName("edit9");

    obj.textEditor3 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout3);
    obj.textEditor3:setLeft(5);
    obj.textEditor3:setTop(47);
    obj.textEditor3:setWidth(240);
    obj.textEditor3:setHeight(140);
    obj.textEditor3:setField("descricaoPescoco");
    obj.textEditor3:setName("textEditor3");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout3);
    obj.edit10:setType("number");
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setLeft(64);
    obj.edit10:setTop(190);
    obj.edit10:setWidth(25);
    obj.edit10:setHeight(25);
    obj.edit10:setField("minPescoco");
    obj.edit10:setName("edit10");

    obj.dataLink3 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.layout3);
    obj.dataLink3:setField("minPescoco");
    obj.dataLink3:setName("dataLink3");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout3);
    obj.edit11:setType("number");
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setLeft(90);
    obj.edit11:setTop(190);
    obj.edit11:setWidth(25);
    obj.edit11:setHeight(25);
    obj.edit11:setField("maxPescoco");
    obj.edit11:setName("edit11");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout3);
    obj.label6:setLeft(117);
    obj.label6:setTop(193);
    obj.label6:setWidth(50);
    obj.label6:setHeight(20);
    obj.label6:setText("PREÇO");
    obj.label6:setName("label6");

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout3);
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setLeft(160);
    obj.edit12:setTop(190);
    obj.edit12:setWidth(84);
    obj.edit12:setHeight(25);
    obj.edit12:setField("precoPescoco");
    obj.edit12:setName("edit12");

    obj.progressBar3 = gui.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar3:setParent(obj.layout3);
    obj.progressBar3:setLeft(5);
    obj.progressBar3:setTop(195);
    obj.progressBar3:setWidth(55);
    obj.progressBar3:setHeight(15);
    obj.progressBar3:setColor("green");
    obj.progressBar3:setHitTest(true);
    obj.progressBar3:setMax(1);
    obj.progressBar3:setField("usosPescoco");
    obj.progressBar3:setName("progressBar3");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(961);
    obj.layout4:setTop(1);
    obj.layout4:setWidth(250);
    obj.layout4:setHeight(222);
    obj.layout4:setName("layout4");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout4);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("black");
    obj.rectangle4:setName("rectangle4");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout4);
    obj.label7:setLeft(5);
    obj.label7:setTop(1);
    obj.label7:setWidth(200);
    obj.label7:setHeight(20);
    obj.label7:setText("OMBROS");
    obj.label7:setName("label7");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout4);
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setLeft(5);
    obj.edit13:setTop(20);
    obj.edit13:setWidth(240);
    obj.edit13:setHeight(25);
    obj.edit13:setField("equipamentoOmbros");
    obj.edit13:setName("edit13");

    obj.textEditor4 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout4);
    obj.textEditor4:setLeft(5);
    obj.textEditor4:setTop(47);
    obj.textEditor4:setWidth(240);
    obj.textEditor4:setHeight(140);
    obj.textEditor4:setField("descricaoOmbros");
    obj.textEditor4:setName("textEditor4");

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout4);
    obj.edit14:setType("number");
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setLeft(64);
    obj.edit14:setTop(190);
    obj.edit14:setWidth(25);
    obj.edit14:setHeight(25);
    obj.edit14:setField("minOmbros");
    obj.edit14:setName("edit14");

    obj.dataLink4 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.layout4);
    obj.dataLink4:setField("minOmbros");
    obj.dataLink4:setName("dataLink4");

    obj.edit15 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout4);
    obj.edit15:setType("number");
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setLeft(90);
    obj.edit15:setTop(190);
    obj.edit15:setWidth(25);
    obj.edit15:setHeight(25);
    obj.edit15:setField("maxOmbros");
    obj.edit15:setName("edit15");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout4);
    obj.label8:setLeft(117);
    obj.label8:setTop(193);
    obj.label8:setWidth(50);
    obj.label8:setHeight(20);
    obj.label8:setText("PREÇO");
    obj.label8:setName("label8");

    obj.edit16 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout4);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setLeft(160);
    obj.edit16:setTop(190);
    obj.edit16:setWidth(84);
    obj.edit16:setHeight(25);
    obj.edit16:setField("precoOmbros");
    obj.edit16:setName("edit16");

    obj.progressBar4 = gui.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar4:setParent(obj.layout4);
    obj.progressBar4:setLeft(5);
    obj.progressBar4:setTop(195);
    obj.progressBar4:setWidth(55);
    obj.progressBar4:setHeight(15);
    obj.progressBar4:setColor("green");
    obj.progressBar4:setHitTest(true);
    obj.progressBar4:setMax(1);
    obj.progressBar4:setField("usosOmbros");
    obj.progressBar4:setName("progressBar4");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setLeft(1);
    obj.layout5:setTop(224);
    obj.layout5:setWidth(250);
    obj.layout5:setHeight(222);
    obj.layout5:setName("layout5");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout5);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("black");
    obj.rectangle5:setName("rectangle5");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout5);
    obj.label9:setLeft(5);
    obj.label9:setTop(1);
    obj.label9:setWidth(200);
    obj.label9:setHeight(20);
    obj.label9:setText("TORSO");
    obj.label9:setName("label9");

    obj.edit17 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout5);
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setLeft(5);
    obj.edit17:setTop(20);
    obj.edit17:setWidth(240);
    obj.edit17:setHeight(25);
    obj.edit17:setField("equipamentoTorso");
    obj.edit17:setName("edit17");

    obj.textEditor5 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout5);
    obj.textEditor5:setLeft(5);
    obj.textEditor5:setTop(47);
    obj.textEditor5:setWidth(240);
    obj.textEditor5:setHeight(140);
    obj.textEditor5:setField("descricaoTorso");
    obj.textEditor5:setName("textEditor5");

    obj.edit18 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout5);
    obj.edit18:setType("number");
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setLeft(64);
    obj.edit18:setTop(190);
    obj.edit18:setWidth(25);
    obj.edit18:setHeight(25);
    obj.edit18:setField("minTorso");
    obj.edit18:setName("edit18");

    obj.dataLink5 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.layout5);
    obj.dataLink5:setField("minTorso");
    obj.dataLink5:setName("dataLink5");

    obj.edit19 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout5);
    obj.edit19:setType("number");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setLeft(90);
    obj.edit19:setTop(190);
    obj.edit19:setWidth(25);
    obj.edit19:setHeight(25);
    obj.edit19:setField("maxTorso");
    obj.edit19:setName("edit19");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout5);
    obj.label10:setLeft(117);
    obj.label10:setTop(193);
    obj.label10:setWidth(50);
    obj.label10:setHeight(20);
    obj.label10:setText("PREÇO");
    obj.label10:setName("label10");

    obj.edit20 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout5);
    obj.edit20:setHorzTextAlign("center");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setLeft(160);
    obj.edit20:setTop(190);
    obj.edit20:setWidth(84);
    obj.edit20:setHeight(25);
    obj.edit20:setField("precoTorso");
    obj.edit20:setName("edit20");

    obj.progressBar5 = gui.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar5:setParent(obj.layout5);
    obj.progressBar5:setLeft(5);
    obj.progressBar5:setTop(195);
    obj.progressBar5:setWidth(55);
    obj.progressBar5:setHeight(15);
    obj.progressBar5:setColor("green");
    obj.progressBar5:setHitTest(true);
    obj.progressBar5:setMax(1);
    obj.progressBar5:setField("usosTorso");
    obj.progressBar5:setName("progressBar5");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox1);
    obj.layout6:setLeft(252);
    obj.layout6:setTop(224);
    obj.layout6:setWidth(250);
    obj.layout6:setHeight(222);
    obj.layout6:setName("layout6");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout6);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("black");
    obj.rectangle6:setName("rectangle6");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout6);
    obj.label11:setLeft(5);
    obj.label11:setTop(1);
    obj.label11:setWidth(200);
    obj.label11:setHeight(20);
    obj.label11:setText("CORPO (ARMADURA)");
    obj.label11:setName("label11");

    obj.edit21 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout6);
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setLeft(5);
    obj.edit21:setTop(20);
    obj.edit21:setWidth(240);
    obj.edit21:setHeight(25);
    obj.edit21:setField("equipamentoCorpo");
    obj.edit21:setName("edit21");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout6);
    obj.label12:setLeft(5);
    obj.label12:setTop(50);
    obj.label12:setWidth(50);
    obj.label12:setHeight(20);
    obj.label12:setText("CA");
    obj.label12:setName("label12");

    obj.edit22 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout6);
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setLeft(25);
    obj.edit22:setTop(50);
    obj.edit22:setWidth(40);
    obj.edit22:setHeight(20);
    obj.edit22:setField("equipamentoCorpoCA");
    obj.edit22:setName("edit22");

    obj.edit23 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout6);
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setLeft(65);
    obj.edit23:setTop(50);
    obj.edit23:setWidth(40);
    obj.edit23:setHeight(20);
    obj.edit23:setField("equipamentoCorpoCAmelhoria");
    obj.edit23:setName("edit23");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout6);
    obj.label13:setLeft(110);
    obj.label13:setTop(50);
    obj.label13:setWidth(50);
    obj.label13:setHeight(20);
    obj.label13:setText("CAT");
    obj.label13:setName("label13");

    obj.comboBox1 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.layout6);
    obj.comboBox1:setLeft(140);
    obj.comboBox1:setTop(50);
    obj.comboBox1:setWidth(105);
    obj.comboBox1:setHeight(20);
    obj.comboBox1:setField("equipamentoCorpoCategoria");
    obj.comboBox1:setItems({'Leve', 'Média', 'Pesada', 'Massiva'});
    obj.comboBox1:setName("comboBox1");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout6);
    obj.label14:setLeft(10);
    obj.label14:setTop(75);
    obj.label14:setWidth(50);
    obj.label14:setHeight(20);
    obj.label14:setText("DES");
    obj.label14:setName("label14");

    obj.edit24 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout6);
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setLeft(45);
    obj.edit24:setTop(75);
    obj.edit24:setWidth(40);
    obj.edit24:setHeight(20);
    obj.edit24:setField("equipamentoCorpoDesMax");
    obj.edit24:setName("edit24");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout6);
    obj.label15:setLeft(90);
    obj.label15:setTop(75);
    obj.label15:setWidth(50);
    obj.label15:setHeight(20);
    obj.label15:setText("PEN");
    obj.label15:setName("label15");

    obj.edit25 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout6);
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setLeft(125);
    obj.edit25:setTop(75);
    obj.edit25:setWidth(40);
    obj.edit25:setHeight(20);
    obj.edit25:setField("equipamentoCorpoPen");
    obj.edit25:setName("edit25");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout6);
    obj.label16:setLeft(170);
    obj.label16:setTop(75);
    obj.label16:setWidth(50);
    obj.label16:setHeight(20);
    obj.label16:setText("Falha");
    obj.label16:setFontSize(13);
    obj.label16:setName("label16");

    obj.edit26 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout6);
    obj.edit26:setVertTextAlign("center");
    obj.edit26:setLeft(205);
    obj.edit26:setTop(75);
    obj.edit26:setWidth(40);
    obj.edit26:setHeight(20);
    obj.edit26:setField("equipamentoCorpoFalha");
    obj.edit26:setName("edit26");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout6);
    obj.label17:setLeft(10);
    obj.label17:setTop(100);
    obj.label17:setWidth(50);
    obj.label17:setHeight(20);
    obj.label17:setText("Desl");
    obj.label17:setName("label17");

    obj.edit27 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout6);
    obj.edit27:setVertTextAlign("center");
    obj.edit27:setLeft(45);
    obj.edit27:setTop(100);
    obj.edit27:setWidth(40);
    obj.edit27:setHeight(20);
    obj.edit27:setField("equipamentoCorpoDesl");
    obj.edit27:setName("edit27");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout6);
    obj.label18:setLeft(90);
    obj.label18:setTop(100);
    obj.label18:setWidth(50);
    obj.label18:setHeight(20);
    obj.label18:setText("Peso");
    obj.label18:setName("label18");

    obj.edit28 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout6);
    obj.edit28:setVertTextAlign("center");
    obj.edit28:setLeft(125);
    obj.edit28:setTop(100);
    obj.edit28:setWidth(40);
    obj.edit28:setHeight(20);
    obj.edit28:setField("equipamentoCorpoPeso");
    obj.edit28:setName("edit28");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout6);
    obj.label19:setLeft(170);
    obj.label19:setTop(100);
    obj.label19:setWidth(50);
    obj.label19:setHeight(20);
    obj.label19:setText("Correr");
    obj.label19:setFontSize(12);
    obj.label19:setName("label19");

    obj.edit29 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout6);
    obj.edit29:setVertTextAlign("center");
    obj.edit29:setLeft(205);
    obj.edit29:setTop(100);
    obj.edit29:setWidth(40);
    obj.edit29:setHeight(20);
    obj.edit29:setField("equipamentoCorpoCorrer");
    obj.edit29:setName("edit29");

    obj.textEditor6 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout6);
    obj.textEditor6:setLeft(5);
    obj.textEditor6:setTop(122);
    obj.textEditor6:setWidth(240);
    obj.textEditor6:setHeight(65);
    obj.textEditor6:setField("descricaoCorpo");
    obj.textEditor6:setName("textEditor6");

    obj.edit30 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout6);
    obj.edit30:setType("number");
    obj.edit30:setVertTextAlign("center");
    obj.edit30:setHorzTextAlign("center");
    obj.edit30:setLeft(64);
    obj.edit30:setTop(190);
    obj.edit30:setWidth(25);
    obj.edit30:setHeight(25);
    obj.edit30:setField("minCorpo");
    obj.edit30:setName("edit30");

    obj.dataLink6 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.layout6);
    obj.dataLink6:setField("minCorpo");
    obj.dataLink6:setName("dataLink6");

    obj.edit31 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout6);
    obj.edit31:setType("number");
    obj.edit31:setVertTextAlign("center");
    obj.edit31:setHorzTextAlign("center");
    obj.edit31:setLeft(90);
    obj.edit31:setTop(190);
    obj.edit31:setWidth(25);
    obj.edit31:setHeight(25);
    obj.edit31:setField("maxCorpo");
    obj.edit31:setName("edit31");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout6);
    obj.label20:setLeft(117);
    obj.label20:setTop(193);
    obj.label20:setWidth(50);
    obj.label20:setHeight(20);
    obj.label20:setText("PREÇO");
    obj.label20:setName("label20");

    obj.edit32 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout6);
    obj.edit32:setHorzTextAlign("center");
    obj.edit32:setVertTextAlign("center");
    obj.edit32:setLeft(160);
    obj.edit32:setTop(190);
    obj.edit32:setWidth(84);
    obj.edit32:setHeight(25);
    obj.edit32:setField("precoCorpo");
    obj.edit32:setName("edit32");

    obj.progressBar6 = gui.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar6:setParent(obj.layout6);
    obj.progressBar6:setLeft(5);
    obj.progressBar6:setTop(195);
    obj.progressBar6:setWidth(55);
    obj.progressBar6:setHeight(15);
    obj.progressBar6:setColor("green");
    obj.progressBar6:setHitTest(true);
    obj.progressBar6:setMax(1);
    obj.progressBar6:setField("usosCorpo");
    obj.progressBar6:setName("progressBar6");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setLeft(710);
    obj.layout7:setTop(224);
    obj.layout7:setWidth(250);
    obj.layout7:setHeight(222);
    obj.layout7:setName("layout7");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout7);
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setColor("black");
    obj.rectangle7:setName("rectangle7");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout7);
    obj.label21:setLeft(5);
    obj.label21:setTop(1);
    obj.label21:setWidth(200);
    obj.label21:setHeight(20);
    obj.label21:setText("PUNHOS");
    obj.label21:setName("label21");

    obj.edit33 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout7);
    obj.edit33:setVertTextAlign("center");
    obj.edit33:setLeft(5);
    obj.edit33:setTop(20);
    obj.edit33:setWidth(240);
    obj.edit33:setHeight(25);
    obj.edit33:setField("equipamentoPunhos");
    obj.edit33:setName("edit33");

    obj.textEditor7 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout7);
    obj.textEditor7:setLeft(5);
    obj.textEditor7:setTop(47);
    obj.textEditor7:setWidth(240);
    obj.textEditor7:setHeight(140);
    obj.textEditor7:setField("descricaoPunhos");
    obj.textEditor7:setName("textEditor7");

    obj.edit34 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout7);
    obj.edit34:setType("number");
    obj.edit34:setVertTextAlign("center");
    obj.edit34:setHorzTextAlign("center");
    obj.edit34:setLeft(64);
    obj.edit34:setTop(190);
    obj.edit34:setWidth(25);
    obj.edit34:setHeight(25);
    obj.edit34:setField("minPunhos");
    obj.edit34:setName("edit34");

    obj.dataLink7 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.layout7);
    obj.dataLink7:setField("minPunhos");
    obj.dataLink7:setName("dataLink7");

    obj.edit35 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout7);
    obj.edit35:setType("number");
    obj.edit35:setVertTextAlign("center");
    obj.edit35:setHorzTextAlign("center");
    obj.edit35:setLeft(90);
    obj.edit35:setTop(190);
    obj.edit35:setWidth(25);
    obj.edit35:setHeight(25);
    obj.edit35:setField("maxPunhos");
    obj.edit35:setName("edit35");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout7);
    obj.label22:setLeft(117);
    obj.label22:setTop(193);
    obj.label22:setWidth(50);
    obj.label22:setHeight(20);
    obj.label22:setText("PREÇO");
    obj.label22:setName("label22");

    obj.edit36 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout7);
    obj.edit36:setHorzTextAlign("center");
    obj.edit36:setVertTextAlign("center");
    obj.edit36:setLeft(160);
    obj.edit36:setTop(190);
    obj.edit36:setWidth(84);
    obj.edit36:setHeight(25);
    obj.edit36:setField("precoPunhos");
    obj.edit36:setName("edit36");

    obj.progressBar7 = gui.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar7:setParent(obj.layout7);
    obj.progressBar7:setLeft(5);
    obj.progressBar7:setTop(195);
    obj.progressBar7:setWidth(55);
    obj.progressBar7:setHeight(15);
    obj.progressBar7:setColor("green");
    obj.progressBar7:setHitTest(true);
    obj.progressBar7:setMax(1);
    obj.progressBar7:setField("usosPunhos");
    obj.progressBar7:setName("progressBar7");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox1);
    obj.layout8:setLeft(961);
    obj.layout8:setTop(224);
    obj.layout8:setWidth(250);
    obj.layout8:setHeight(222);
    obj.layout8:setName("layout8");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout8);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("black");
    obj.rectangle8:setName("rectangle8");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout8);
    obj.label23:setLeft(5);
    obj.label23:setTop(1);
    obj.label23:setWidth(200);
    obj.label23:setHeight(20);
    obj.label23:setText("CINTURA");
    obj.label23:setName("label23");

    obj.edit37 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout8);
    obj.edit37:setVertTextAlign("center");
    obj.edit37:setLeft(5);
    obj.edit37:setTop(20);
    obj.edit37:setWidth(240);
    obj.edit37:setHeight(25);
    obj.edit37:setField("equipamentoCintura");
    obj.edit37:setName("edit37");

    obj.textEditor8 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout8);
    obj.textEditor8:setLeft(5);
    obj.textEditor8:setTop(47);
    obj.textEditor8:setWidth(240);
    obj.textEditor8:setHeight(140);
    obj.textEditor8:setField("descricaoCintura");
    obj.textEditor8:setName("textEditor8");

    obj.edit38 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout8);
    obj.edit38:setType("number");
    obj.edit38:setVertTextAlign("center");
    obj.edit38:setHorzTextAlign("center");
    obj.edit38:setLeft(64);
    obj.edit38:setTop(190);
    obj.edit38:setWidth(25);
    obj.edit38:setHeight(25);
    obj.edit38:setField("minCintura");
    obj.edit38:setName("edit38");

    obj.dataLink8 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.layout8);
    obj.dataLink8:setField("minCintura");
    obj.dataLink8:setName("dataLink8");

    obj.edit39 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout8);
    obj.edit39:setType("number");
    obj.edit39:setVertTextAlign("center");
    obj.edit39:setHorzTextAlign("center");
    obj.edit39:setLeft(90);
    obj.edit39:setTop(190);
    obj.edit39:setWidth(25);
    obj.edit39:setHeight(25);
    obj.edit39:setField("maxCintura");
    obj.edit39:setName("edit39");

    obj.label24 = gui.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout8);
    obj.label24:setLeft(117);
    obj.label24:setTop(193);
    obj.label24:setWidth(50);
    obj.label24:setHeight(20);
    obj.label24:setText("PREÇO");
    obj.label24:setName("label24");

    obj.edit40 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout8);
    obj.edit40:setHorzTextAlign("center");
    obj.edit40:setVertTextAlign("center");
    obj.edit40:setLeft(160);
    obj.edit40:setTop(190);
    obj.edit40:setWidth(84);
    obj.edit40:setHeight(25);
    obj.edit40:setField("precoCintura");
    obj.edit40:setName("edit40");

    obj.progressBar8 = gui.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar8:setParent(obj.layout8);
    obj.progressBar8:setLeft(5);
    obj.progressBar8:setTop(195);
    obj.progressBar8:setWidth(55);
    obj.progressBar8:setHeight(15);
    obj.progressBar8:setColor("green");
    obj.progressBar8:setHitTest(true);
    obj.progressBar8:setMax(1);
    obj.progressBar8:setField("usosCintura");
    obj.progressBar8:setName("progressBar8");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox1);
    obj.layout9:setLeft(1);
    obj.layout9:setTop(447);
    obj.layout9:setWidth(250);
    obj.layout9:setHeight(222);
    obj.layout9:setName("layout9");

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout9);
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setColor("black");
    obj.rectangle9:setName("rectangle9");

    obj.label25 = gui.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout9);
    obj.label25:setLeft(5);
    obj.label25:setTop(1);
    obj.label25:setWidth(200);
    obj.label25:setHeight(20);
    obj.label25:setText("MÃOS");
    obj.label25:setName("label25");

    obj.edit41 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout9);
    obj.edit41:setVertTextAlign("center");
    obj.edit41:setLeft(5);
    obj.edit41:setTop(20);
    obj.edit41:setWidth(240);
    obj.edit41:setHeight(25);
    obj.edit41:setField("equipamentoMaos");
    obj.edit41:setName("edit41");

    obj.textEditor9 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout9);
    obj.textEditor9:setLeft(5);
    obj.textEditor9:setTop(47);
    obj.textEditor9:setWidth(240);
    obj.textEditor9:setHeight(140);
    obj.textEditor9:setField("descricaoMaos");
    obj.textEditor9:setName("textEditor9");

    obj.edit42 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout9);
    obj.edit42:setType("number");
    obj.edit42:setVertTextAlign("center");
    obj.edit42:setHorzTextAlign("center");
    obj.edit42:setLeft(64);
    obj.edit42:setTop(190);
    obj.edit42:setWidth(25);
    obj.edit42:setHeight(25);
    obj.edit42:setField("minMaos");
    obj.edit42:setName("edit42");

    obj.dataLink9 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.layout9);
    obj.dataLink9:setField("minMaos");
    obj.dataLink9:setName("dataLink9");

    obj.edit43 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout9);
    obj.edit43:setType("number");
    obj.edit43:setVertTextAlign("center");
    obj.edit43:setHorzTextAlign("center");
    obj.edit43:setLeft(90);
    obj.edit43:setTop(190);
    obj.edit43:setWidth(25);
    obj.edit43:setHeight(25);
    obj.edit43:setField("maxMaos");
    obj.edit43:setName("edit43");

    obj.label26 = gui.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout9);
    obj.label26:setLeft(117);
    obj.label26:setTop(193);
    obj.label26:setWidth(50);
    obj.label26:setHeight(20);
    obj.label26:setText("PREÇO");
    obj.label26:setName("label26");

    obj.edit44 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout9);
    obj.edit44:setHorzTextAlign("center");
    obj.edit44:setVertTextAlign("center");
    obj.edit44:setLeft(160);
    obj.edit44:setTop(190);
    obj.edit44:setWidth(84);
    obj.edit44:setHeight(25);
    obj.edit44:setField("precoMaos");
    obj.edit44:setName("edit44");

    obj.progressBar9 = gui.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar9:setParent(obj.layout9);
    obj.progressBar9:setLeft(5);
    obj.progressBar9:setTop(195);
    obj.progressBar9:setWidth(55);
    obj.progressBar9:setHeight(15);
    obj.progressBar9:setColor("green");
    obj.progressBar9:setHitTest(true);
    obj.progressBar9:setMax(1);
    obj.progressBar9:setField("usosMaos");
    obj.progressBar9:setName("progressBar9");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.scrollBox1);
    obj.layout10:setLeft(252);
    obj.layout10:setTop(447);
    obj.layout10:setWidth(250);
    obj.layout10:setHeight(222);
    obj.layout10:setName("layout10");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout10);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("black");
    obj.rectangle10:setName("rectangle10");

    obj.label27 = gui.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout10);
    obj.label27:setLeft(5);
    obj.label27:setTop(1);
    obj.label27:setWidth(200);
    obj.label27:setHeight(20);
    obj.label27:setText("DEDO I");
    obj.label27:setName("label27");

    obj.edit45 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout10);
    obj.edit45:setVertTextAlign("center");
    obj.edit45:setLeft(5);
    obj.edit45:setTop(20);
    obj.edit45:setWidth(240);
    obj.edit45:setHeight(25);
    obj.edit45:setField("equipamentoDedosI");
    obj.edit45:setName("edit45");

    obj.textEditor10 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.layout10);
    obj.textEditor10:setLeft(5);
    obj.textEditor10:setTop(47);
    obj.textEditor10:setWidth(240);
    obj.textEditor10:setHeight(140);
    obj.textEditor10:setField("descricaoDedosI");
    obj.textEditor10:setName("textEditor10");

    obj.edit46 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout10);
    obj.edit46:setType("number");
    obj.edit46:setVertTextAlign("center");
    obj.edit46:setHorzTextAlign("center");
    obj.edit46:setLeft(64);
    obj.edit46:setTop(190);
    obj.edit46:setWidth(25);
    obj.edit46:setHeight(25);
    obj.edit46:setField("minDedosI");
    obj.edit46:setName("edit46");

    obj.dataLink10 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.layout10);
    obj.dataLink10:setField("minDedosI");
    obj.dataLink10:setName("dataLink10");

    obj.edit47 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout10);
    obj.edit47:setType("number");
    obj.edit47:setVertTextAlign("center");
    obj.edit47:setHorzTextAlign("center");
    obj.edit47:setLeft(90);
    obj.edit47:setTop(190);
    obj.edit47:setWidth(25);
    obj.edit47:setHeight(25);
    obj.edit47:setField("maxDedosI");
    obj.edit47:setName("edit47");

    obj.label28 = gui.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout10);
    obj.label28:setLeft(117);
    obj.label28:setTop(193);
    obj.label28:setWidth(50);
    obj.label28:setHeight(20);
    obj.label28:setText("PREÇO");
    obj.label28:setName("label28");

    obj.edit48 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout10);
    obj.edit48:setHorzTextAlign("center");
    obj.edit48:setVertTextAlign("center");
    obj.edit48:setLeft(160);
    obj.edit48:setTop(190);
    obj.edit48:setWidth(84);
    obj.edit48:setHeight(25);
    obj.edit48:setField("precoDedosI");
    obj.edit48:setName("edit48");

    obj.progressBar10 = gui.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar10:setParent(obj.layout10);
    obj.progressBar10:setLeft(5);
    obj.progressBar10:setTop(195);
    obj.progressBar10:setWidth(55);
    obj.progressBar10:setHeight(15);
    obj.progressBar10:setColor("green");
    obj.progressBar10:setHitTest(true);
    obj.progressBar10:setMax(1);
    obj.progressBar10:setField("usosDedosI");
    obj.progressBar10:setName("progressBar10");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.scrollBox1);
    obj.layout11:setLeft(710);
    obj.layout11:setTop(447);
    obj.layout11:setWidth(250);
    obj.layout11:setHeight(222);
    obj.layout11:setName("layout11");

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout11);
    obj.rectangle11:setAlign("client");
    obj.rectangle11:setColor("black");
    obj.rectangle11:setName("rectangle11");

    obj.label29 = gui.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout11);
    obj.label29:setLeft(5);
    obj.label29:setTop(1);
    obj.label29:setWidth(200);
    obj.label29:setHeight(20);
    obj.label29:setText("DEDO II");
    obj.label29:setName("label29");

    obj.edit49 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout11);
    obj.edit49:setVertTextAlign("center");
    obj.edit49:setLeft(5);
    obj.edit49:setTop(20);
    obj.edit49:setWidth(240);
    obj.edit49:setHeight(25);
    obj.edit49:setField("equipamentoDesdosII");
    obj.edit49:setName("edit49");

    obj.textEditor11 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor11:setParent(obj.layout11);
    obj.textEditor11:setLeft(5);
    obj.textEditor11:setTop(47);
    obj.textEditor11:setWidth(240);
    obj.textEditor11:setHeight(140);
    obj.textEditor11:setField("descricaoDesdosII");
    obj.textEditor11:setName("textEditor11");

    obj.edit50 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout11);
    obj.edit50:setType("number");
    obj.edit50:setVertTextAlign("center");
    obj.edit50:setHorzTextAlign("center");
    obj.edit50:setLeft(64);
    obj.edit50:setTop(190);
    obj.edit50:setWidth(25);
    obj.edit50:setHeight(25);
    obj.edit50:setField("minDesdosII");
    obj.edit50:setName("edit50");

    obj.dataLink11 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.layout11);
    obj.dataLink11:setField("minDesdosII");
    obj.dataLink11:setName("dataLink11");

    obj.edit51 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout11);
    obj.edit51:setType("number");
    obj.edit51:setVertTextAlign("center");
    obj.edit51:setHorzTextAlign("center");
    obj.edit51:setLeft(90);
    obj.edit51:setTop(190);
    obj.edit51:setWidth(25);
    obj.edit51:setHeight(25);
    obj.edit51:setField("maxDesdosII");
    obj.edit51:setName("edit51");

    obj.label30 = gui.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout11);
    obj.label30:setLeft(117);
    obj.label30:setTop(193);
    obj.label30:setWidth(50);
    obj.label30:setHeight(20);
    obj.label30:setText("PREÇO");
    obj.label30:setName("label30");

    obj.edit52 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout11);
    obj.edit52:setHorzTextAlign("center");
    obj.edit52:setVertTextAlign("center");
    obj.edit52:setLeft(160);
    obj.edit52:setTop(190);
    obj.edit52:setWidth(84);
    obj.edit52:setHeight(25);
    obj.edit52:setField("precoDesdosII");
    obj.edit52:setName("edit52");

    obj.progressBar11 = gui.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar11:setParent(obj.layout11);
    obj.progressBar11:setLeft(5);
    obj.progressBar11:setTop(195);
    obj.progressBar11:setWidth(55);
    obj.progressBar11:setHeight(15);
    obj.progressBar11:setColor("green");
    obj.progressBar11:setHitTest(true);
    obj.progressBar11:setMax(1);
    obj.progressBar11:setField("usosDesdosII");
    obj.progressBar11:setName("progressBar11");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.scrollBox1);
    obj.layout12:setLeft(961);
    obj.layout12:setTop(447);
    obj.layout12:setWidth(250);
    obj.layout12:setHeight(222);
    obj.layout12:setName("layout12");

    obj.rectangle12 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout12);
    obj.rectangle12:setAlign("client");
    obj.rectangle12:setColor("black");
    obj.rectangle12:setName("rectangle12");

    obj.label31 = gui.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout12);
    obj.label31:setLeft(5);
    obj.label31:setTop(1);
    obj.label31:setWidth(200);
    obj.label31:setHeight(20);
    obj.label31:setText("PÉS");
    obj.label31:setName("label31");

    obj.edit53 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout12);
    obj.edit53:setVertTextAlign("center");
    obj.edit53:setLeft(5);
    obj.edit53:setTop(20);
    obj.edit53:setWidth(240);
    obj.edit53:setHeight(25);
    obj.edit53:setField("equipamentoPes");
    obj.edit53:setName("edit53");

    obj.textEditor12 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor12:setParent(obj.layout12);
    obj.textEditor12:setLeft(5);
    obj.textEditor12:setTop(47);
    obj.textEditor12:setWidth(240);
    obj.textEditor12:setHeight(140);
    obj.textEditor12:setField("descricaoPes");
    obj.textEditor12:setName("textEditor12");

    obj.edit54 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout12);
    obj.edit54:setType("number");
    obj.edit54:setVertTextAlign("center");
    obj.edit54:setHorzTextAlign("center");
    obj.edit54:setLeft(64);
    obj.edit54:setTop(190);
    obj.edit54:setWidth(25);
    obj.edit54:setHeight(25);
    obj.edit54:setField("minPes");
    obj.edit54:setName("edit54");

    obj.dataLink12 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.layout12);
    obj.dataLink12:setField("minPes");
    obj.dataLink12:setName("dataLink12");

    obj.edit55 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout12);
    obj.edit55:setType("number");
    obj.edit55:setVertTextAlign("center");
    obj.edit55:setHorzTextAlign("center");
    obj.edit55:setLeft(90);
    obj.edit55:setTop(190);
    obj.edit55:setWidth(25);
    obj.edit55:setHeight(25);
    obj.edit55:setField("maxPes");
    obj.edit55:setName("edit55");

    obj.label32 = gui.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout12);
    obj.label32:setLeft(117);
    obj.label32:setTop(193);
    obj.label32:setWidth(50);
    obj.label32:setHeight(20);
    obj.label32:setText("PREÇO");
    obj.label32:setName("label32");

    obj.edit56 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout12);
    obj.edit56:setHorzTextAlign("center");
    obj.edit56:setVertTextAlign("center");
    obj.edit56:setLeft(160);
    obj.edit56:setTop(190);
    obj.edit56:setWidth(84);
    obj.edit56:setHeight(25);
    obj.edit56:setField("precoPes");
    obj.edit56:setName("edit56");

    obj.progressBar12 = gui.fromHandle(_obj_newObject("progressBar"));
    obj.progressBar12:setParent(obj.layout12);
    obj.progressBar12:setLeft(5);
    obj.progressBar12:setTop(195);
    obj.progressBar12:setWidth(55);
    obj.progressBar12:setHeight(15);
    obj.progressBar12:setColor("green");
    obj.progressBar12:setHitTest(true);
    obj.progressBar12:setMax(1);
    obj.progressBar12:setField("usosPes");
    obj.progressBar12:setName("progressBar12");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet.minCabeca~=nil and sheet.maxCabeca~=nil and sheet.usosCabeca~=nil then
            						sheet.usosCabeca = (sheet.minCabeca or 0)/ (sheet.maxCabeca or 0);
            
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						
            						local mod = 0;
            						if newValue~=nil and oldValue~=nil then
            							mod = newValue - oldValue;
            						end;
            						
            						if mod>0 then
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " recuperou " .. mod .. " usos de " .. sheet.equipamentoCabeca);
            						end;
            						if 0>mod then
            							mod = mod * -1;
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " gastou " .. mod .. " usos de " .. sheet.equipamentoCabeca);
            						end;
            					else
            						sheet.usosCabeca = 0;
            					end;
        end, obj);

    obj._e_event1 = obj.edit3:addEventListener("onUserChange",
        function (self)
            if sheet.minCabeca~=nil and sheet.maxCabeca~=nil then
            						sheet.usosCabeca = (sheet.minCabeca or 0)/ (sheet.maxCabeca or 0);
            					end;
        end, obj);

    obj._e_event2 = obj.dataLink2:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet.minOlhos~=nil and sheet.maxOlhos~=nil and sheet.usosOlhos~=nil then
            						sheet.usosOlhos = (sheet.minOlhos or 0)/ (sheet.maxOlhos or 0);
            
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						
            						local mod = 0;
            						if newValue~=nil and oldValue~=nil then
            							mod = newValue - oldValue;
            						end;
            						
            						if mod>0 then
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " recuperou " .. mod .. " usos de " .. sheet.equipamentoOlhos);
            						end;
            						if 0>mod then
            							mod = mod * -1;
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " gastou " .. mod .. " usos de " .. sheet.equipamentoOlhos);
            						end;
            					else
            						sheet.usosOlhos = 0;
            					end;
        end, obj);

    obj._e_event3 = obj.edit7:addEventListener("onUserChange",
        function (self)
            if sheet.minOlhos~=nil and sheet.maxOlhos~=nil then
            						sheet.usosOlhos = (sheet.minOlhos or 0)/ (sheet.maxOlhos or 0);
            					end;
        end, obj);

    obj._e_event4 = obj.dataLink3:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet.minPescoco~=nil and sheet.maxPescoco~=nil and sheet.usosPescoco~=nil then
            						sheet.usosPescoco = (sheet.minPescoco or 0)/ (sheet.maxPescoco or 0);
            
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						
            						local mod = 0;
            						if newValue~=nil and oldValue~=nil then
            							mod = newValue - oldValue;
            						end;
            						
            						if mod>0 then
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " recuperou " .. mod .. " usos de " .. sheet.equipamentoPescoco);
            						end;
            						if 0>mod then
            							mod = mod * -1;
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " gastou " .. mod .. " usos de " .. sheet.equipamentoPescoco);
            						end;
            					else
            						sheet.usosPescoco = 0;
            					end;
        end, obj);

    obj._e_event5 = obj.edit11:addEventListener("onUserChange",
        function (self)
            if sheet.minPescoco~=nil and sheet.maxPescoco~=nil then
            						sheet.usosPescoco = (sheet.minPescoco or 0)/ (sheet.maxPescoco or 0);
            					end;
        end, obj);

    obj._e_event6 = obj.dataLink4:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet.minOmbros~=nil and sheet.maxOmbros~=nil and sheet.usosOmbros~=nil then
            						sheet.usosOmbros = (sheet.minOmbros or 0)/ (sheet.maxOmbros or 0);
            
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						
            						local mod = 0;
            						if newValue~=nil and oldValue~=nil then
            							mod = newValue - oldValue;
            						end;
            						
            						if mod>0 then
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " recuperou " .. mod .. " usos de " .. sheet.equipamentoOmbros);
            						end;
            						if 0>mod then
            							mod = mod * -1;
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " gastou " .. mod .. " usos de " .. sheet.equipamentoOmbros);
            						end;
            					else
            						sheet.usosOmbros = 0;
            					end;
        end, obj);

    obj._e_event7 = obj.edit15:addEventListener("onUserChange",
        function (self)
            if sheet.minOmbros~=nil and sheet.maxOmbros~=nil then
            						sheet.usosOmbros = (sheet.minOmbros or 0)/ (sheet.maxOmbros or 0);
            					end;
        end, obj);

    obj._e_event8 = obj.dataLink5:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet.minTorso~=nil and sheet.maxTorso~=nil and sheet.usosTorso~=nil then
            						sheet.usosTorso = (sheet.minTorso or 0)/ (sheet.maxTorso or 0);
            
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						
            						local mod = 0;
            						if newValue~=nil and oldValue~=nil then
            							mod = newValue - oldValue;
            						end;
            						
            						if mod>0 then
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " recuperou " .. mod .. " usos de " .. sheet.equipamentoTorso);
            						end;
            						if 0>mod then
            							mod = mod * -1;
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " gastou " .. mod .. " usos de " .. sheet.equipamentoTorso);
            						end;
            					else
            						sheet.usosTorso = 0;
            					end;
        end, obj);

    obj._e_event9 = obj.edit19:addEventListener("onUserChange",
        function (self)
            if sheet.minTorso~=nil and sheet.maxTorso~=nil then
            						sheet.usosTorso = (sheet.minTorso or 0)/ (sheet.maxTorso or 0);
            					end;
        end, obj);

    obj._e_event10 = obj.dataLink6:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet.minCorpo~=nil and sheet.maxCorpo~=nil and sheet.usosCorpo~=nil then
            						sheet.usosCorpo = (sheet.minCorpo or 0)/ (sheet.maxCorpo or 0);
            
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						
            						local mod = 0;
            						if newValue~=nil and oldValue~=nil then
            							mod = newValue - oldValue;
            						end;
            						
            						if mod>0 then
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " recuperou " .. mod .. " usos de " .. sheet.equipamentoCorpo);
            						end;
            						if 0>mod then
            							mod = mod * -1;
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " gastou " .. mod .. " usos de " .. sheet.equipamentoCorpo);
            						end;
            					else
            						sheet.usosCorpo = 0;
            					end;
        end, obj);

    obj._e_event11 = obj.edit31:addEventListener("onUserChange",
        function (self)
            if sheet.minCorpo~=nil and sheet.maxCorpo~=nil then
            						sheet.usosCorpo = (sheet.minCorpo or 0)/ (sheet.maxCorpo or 0);
            					end;
        end, obj);

    obj._e_event12 = obj.dataLink7:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet.minPunhos~=nil and sheet.maxPunhos~=nil and sheet.usosPunhos~=nil then
            						sheet.usosPunhos = (sheet.minPunhos or 0)/ (sheet.maxPunhos or 0);
            
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						
            						local mod = 0;
            						if newValue~=nil and oldValue~=nil then
            							mod = newValue - oldValue;
            						end;
            						
            						if mod>0 then
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " recuperou " .. mod .. " usos de " .. sheet.equipamentoPunhos);
            						end;
            						if 0>mod then
            							mod = mod * -1;
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " gastou " .. mod .. " usos de " .. sheet.equipamentoPunhos);
            						end;
            					else
            						sheet.usosPunhos = 0;
            					end;
        end, obj);

    obj._e_event13 = obj.edit35:addEventListener("onUserChange",
        function (self)
            if sheet.minPunhos~=nil and sheet.maxPunhos~=nil then
            						sheet.usosPunhos = (sheet.minPunhos or 0)/ (sheet.maxPunhos or 0);
            					end;
        end, obj);

    obj._e_event14 = obj.dataLink8:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet.minCintura~=nil and sheet.maxCintura~=nil and sheet.usosCintura~=nil then
            						sheet.usosCintura = (sheet.minCintura or 0)/ (sheet.maxCintura or 0);
            
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						
            						local mod = 0;
            						if newValue~=nil and oldValue~=nil then
            							mod = newValue - oldValue;
            						end;
            						
            						if mod>0 then
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " recuperou " .. mod .. " usos de " .. sheet.equipamentoCintura);
            						end;
            						if 0>mod then
            							mod = mod * -1;
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " gastou " .. mod .. " usos de " .. sheet.equipamentoCintura);
            						end;
            					else
            						sheet.usosCintura = 0;
            					end;
        end, obj);

    obj._e_event15 = obj.edit39:addEventListener("onUserChange",
        function (self)
            if sheet.minCintura~=nil and sheet.maxCintura~=nil then
            						sheet.usosCintura = (sheet.minCintura or 0)/ (sheet.maxCintura or 0);
            					end;
        end, obj);

    obj._e_event16 = obj.dataLink9:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet.minMaos~=nil and sheet.maxMaos~=nil and sheet.usosMaos~=nil then
            						sheet.usosMaos = (sheet.minMaos or 0)/ (sheet.maxMaos or 0);
            
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						
            						local mod = 0;
            						if newValue~=nil and oldValue~=nil then
            							mod = newValue - oldValue;
            						end;
            						
            						if mod>0 then
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " recuperou " .. mod .. " usos de " .. sheet.equipamentoMaos);
            						end;
            						if 0>mod then
            							mod = mod * -1;
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " gastou " .. mod .. " usos de " .. sheet.equipamentoMaos);
            						end;
            					else
            						sheet.usosMaos = 0;
            					end;
        end, obj);

    obj._e_event17 = obj.edit43:addEventListener("onUserChange",
        function (self)
            if sheet.minMaos~=nil and sheet.maxMaos~=nil then
            						sheet.usosMaos = (sheet.minMaos or 0)/ (sheet.maxMaos or 0);
            					end;
        end, obj);

    obj._e_event18 = obj.dataLink10:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet.minDedosI~=nil and sheet.maxDedosI~=nil and sheet.usosDedosI~=nil then
            						sheet.usosDedosI = (sheet.minDedosI or 0)/ (sheet.maxDedosI or 0);
            
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						
            						local mod = 0;
            						if newValue~=nil and oldValue~=nil then
            							mod = newValue - oldValue;
            						end;
            						
            						if mod>0 then
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " recuperou " .. mod .. " usos de " .. sheet.equipamentoDedosI);
            						end;
            						if 0>mod then
            							mod = mod * -1;
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " gastou " .. mod .. " usos de " .. sheet.equipamentoDedosI);
            						end;
            					else
            						sheet.usosDedosI = 0;
            					end;
        end, obj);

    obj._e_event19 = obj.edit47:addEventListener("onUserChange",
        function (self)
            if sheet.minDedosI~=nil and sheet.maxDedosI~=nil then
            						sheet.usosDedosI = (sheet.minDedosI or 0)/ (sheet.maxDedosI or 0);
            					end;
        end, obj);

    obj._e_event20 = obj.dataLink11:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet.minDesdosII~=nil and sheet.maxDesdosII~=nil and sheet.usosDesdosII~=nil then
            						sheet.usosDesdosII = (sheet.minDesdosII or 0)/ (sheet.maxDesdosII or 0);
            
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						
            						local mod = 0;
            						if newValue~=nil and oldValue~=nil then
            							mod = newValue - oldValue;
            						end;
            						
            						if mod>0 then
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " recuperou " .. mod .. " usos de " .. sheet.equipamentoDesdosII);
            						end;
            						if 0>mod then
            							mod = mod * -1;
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " gastou " .. mod .. " usos de " .. sheet.equipamentoDesdosII);
            						end;
            					else
            						sheet.usosDesdosII = 0;
            					end;
        end, obj);

    obj._e_event21 = obj.edit51:addEventListener("onUserChange",
        function (self)
            if sheet.minDesdosII~=nil and sheet.maxDesdosII~=nil then
            						sheet.usosDesdosII = (sheet.minDesdosII or 0)/ (sheet.maxDesdosII or 0);
            					end;
        end, obj);

    obj._e_event22 = obj.dataLink12:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet.minPes~=nil and sheet.maxPes~=nil and sheet.usosPes~=nil then
            						sheet.usosPes = (sheet.minPes or 0)/ (sheet.maxPes or 0);
            
            						local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            						
            						local mod = 0;
            						if newValue~=nil and oldValue~=nil then
            							mod = newValue - oldValue;
            						end;
            						
            						if mod>0 then
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " recuperou " .. mod .. " usos de " .. sheet.equipamentoPes);
            						end;
            						if 0>mod then
            							mod = mod * -1;
            							mesaDoPersonagem.activeChat:enviarMensagem((sheet.nome or "PONHA UM NOME NO PERSONAGEM") .. " gastou " .. mod .. " usos de " .. sheet.equipamentoPes);
            						end;
            					else
            						sheet.usosPes = 0;
            					end;
        end, obj);

    obj._e_event23 = obj.edit55:addEventListener("onUserChange",
        function (self)
            if sheet.minPes~=nil and sheet.maxPes~=nil then
            						sheet.usosPes = (sheet.minPes or 0)/ (sheet.maxPes or 0);
            					end;
        end, obj);

    function obj:_releaseEvents()
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

        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.progressBar9 ~= nil then self.progressBar9:destroy(); self.progressBar9 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.progressBar8 ~= nil then self.progressBar8:destroy(); self.progressBar8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.textEditor11 ~= nil then self.textEditor11:destroy(); self.textEditor11 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.progressBar10 ~= nil then self.progressBar10:destroy(); self.progressBar10 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.progressBar4 ~= nil then self.progressBar4:destroy(); self.progressBar4 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.progressBar7 ~= nil then self.progressBar7:destroy(); self.progressBar7 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.progressBar5 ~= nil then self.progressBar5:destroy(); self.progressBar5 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.progressBar6 ~= nil then self.progressBar6:destroy(); self.progressBar6 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.textEditor12 ~= nil then self.textEditor12:destroy(); self.textEditor12 = nil; end;
        if self.progressBar2 ~= nil then self.progressBar2:destroy(); self.progressBar2 = nil; end;
        if self.progressBar12 ~= nil then self.progressBar12:destroy(); self.progressBar12 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.progressBar3 ~= nil then self.progressBar3:destroy(); self.progressBar3 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.progressBar1 ~= nil then self.progressBar1:destroy(); self.progressBar1 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.progressBar11 ~= nil then self.progressBar11:destroy(); self.progressBar11 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmFichaRPGmeister6_svg = {
    newEditor = newfrmFichaRPGmeister6_svg, 
    new = newfrmFichaRPGmeister6_svg, 
    name = "frmFichaRPGmeister6_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmFichaRPGmeister6_svg = _frmFichaRPGmeister6_svg;
rrpg.registrarForm(_frmFichaRPGmeister6_svg);

return _frmFichaRPGmeister6_svg;
