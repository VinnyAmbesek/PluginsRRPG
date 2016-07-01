require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmFichaRPGmeister7_svg()
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
    obj:setName("frmFichaRPGmeister7_svg");
    obj:setAlign("client");
    obj:setTheme("dark");
    obj:setMargins({top=1});

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(0);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(315);
    obj.layout1:setHeight(330);
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
    obj.label1:setText("ARMAS E ESCUDOS");
    obj.label1:setName("label1");

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout1);
    obj.textEditor1:setLeft(5);
    obj.textEditor1:setTop(25);
    obj.textEditor1:setWidth(306);
    obj.textEditor1:setHeight(275);
    obj.textEditor1:setField("armas");
    obj.textEditor1:setName("textEditor1");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setLeft(185);
    obj.label2:setTop(305);
    obj.label2:setWidth(50);
    obj.label2:setHeight(20);
    obj.label2:setText("PREÇO");
    obj.label2:setName("label2");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setLeft(235);
    obj.edit1:setTop(305);
    obj.edit1:setWidth(71);
    obj.edit1:setHeight(20);
    obj.edit1:setField("precoArmas");
    obj.edit1:setName("edit1");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.scrollBox1);
    obj.layout2:setLeft(0);
    obj.layout2:setTop(335);
    obj.layout2:setWidth(475);
    obj.layout2:setHeight(335);
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
    obj.label3:setText("MOCHILA");
    obj.label3:setName("label3");

    obj.textEditor2 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout2);
    obj.textEditor2:setLeft(5);
    obj.textEditor2:setTop(25);
    obj.textEditor2:setWidth(465);
    obj.textEditor2:setHeight(280);
    obj.textEditor2:setField("mochila");
    obj.textEditor2:setName("textEditor2");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setLeft(345);
    obj.label4:setTop(310);
    obj.label4:setWidth(50);
    obj.label4:setHeight(20);
    obj.label4:setText("PREÇO");
    obj.label4:setName("label4");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout2);
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setLeft(395);
    obj.edit2:setTop(310);
    obj.edit2:setWidth(71);
    obj.edit2:setHeight(20);
    obj.edit2:setField("precoMochila");
    obj.edit2:setName("edit2");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(320);
    obj.layout3:setTop(0);
    obj.layout3:setWidth(155);
    obj.layout3:setHeight(165);
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
    obj.label5:setText("DINHEIRO");
    obj.label5:setName("label5");

    obj.textEditor3 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout3);
    obj.textEditor3:setLeft(5);
    obj.textEditor3:setTop(25);
    obj.textEditor3:setWidth(145);
    obj.textEditor3:setHeight(110);
    obj.textEditor3:setField("dinheiro");
    obj.textEditor3:setName("textEditor3");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout3);
    obj.label6:setLeft(20);
    obj.label6:setTop(140);
    obj.label6:setWidth(50);
    obj.label6:setHeight(20);
    obj.label6:setText("PREÇO");
    obj.label6:setName("label6");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout3);
    obj.rectangle4:setLeft(65);
    obj.rectangle4:setTop(140);
    obj.rectangle4:setWidth(85);
    obj.rectangle4:setHeight(20);
    obj.rectangle4:setColor("black");
    obj.rectangle4:setStrokeColor("white");
    obj.rectangle4:setStrokeSize(1);
    obj.rectangle4:setName("rectangle4");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout3);
    obj.label7:setField("gastos");
    obj.label7:setText("0");
    obj.label7:setLeft(65);
    obj.label7:setTop(140);
    obj.label7:setWidth(85);
    obj.label7:setHeight(20);
    obj.label7:setHorzTextAlign("center");
    obj.label7:setName("label7");

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.scrollBox1);
    obj.dataLink1:setFields({'precoCabeca', 'precoOlhos', 'precoPescoco', 'precoOmbros', 'precoTorso', 'precoCorpo', 'precoPunhos', 'precoCintura', 'precoMaos', 'precoDedosI', 'precoDesdosII', 'precoPes', 'precoArmas', 'precoMochila', 'precoPermanencias', 'precoLivres', 'precoOutros', 'precoMunicoes', 'precoBolsos', 'precoImoveis', 'precoInventorioComp'});
    obj.dataLink1:setName("dataLink1");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(480);
    obj.layout4:setTop(0);
    obj.layout4:setWidth(200);
    obj.layout4:setHeight(220);
    obj.layout4:setName("layout4");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout4);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("black");
    obj.rectangle5:setName("rectangle5");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout4);
    obj.label8:setLeft(5);
    obj.label8:setTop(1);
    obj.label8:setWidth(150);
    obj.label8:setHeight(20);
    obj.label8:setText("PERMANENCIAS");
    obj.label8:setName("label8");

    obj.textEditor4 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout4);
    obj.textEditor4:setLeft(5);
    obj.textEditor4:setTop(25);
    obj.textEditor4:setWidth(190);
    obj.textEditor4:setHeight(165);
    obj.textEditor4:setField("permanencias");
    obj.textEditor4:setName("textEditor4");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout4);
    obj.label9:setLeft(70);
    obj.label9:setTop(195);
    obj.label9:setWidth(50);
    obj.label9:setHeight(20);
    obj.label9:setText("PREÇO");
    obj.label9:setName("label9");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout4);
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setLeft(120);
    obj.edit3:setTop(195);
    obj.edit3:setWidth(70);
    obj.edit3:setHeight(20);
    obj.edit3:setField("precoPermanencias");
    obj.edit3:setName("edit3");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setLeft(685);
    obj.layout5:setTop(0);
    obj.layout5:setWidth(200);
    obj.layout5:setHeight(220);
    obj.layout5:setName("layout5");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout5);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("black");
    obj.rectangle6:setName("rectangle6");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout5);
    obj.label10:setLeft(5);
    obj.label10:setTop(1);
    obj.label10:setWidth(150);
    obj.label10:setHeight(20);
    obj.label10:setText("LIVRES");
    obj.label10:setName("label10");

    obj.textEditor5 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout5);
    obj.textEditor5:setLeft(5);
    obj.textEditor5:setTop(25);
    obj.textEditor5:setWidth(190);
    obj.textEditor5:setHeight(165);
    obj.textEditor5:setField("livres");
    obj.textEditor5:setName("textEditor5");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout5);
    obj.label11:setLeft(70);
    obj.label11:setTop(195);
    obj.label11:setWidth(50);
    obj.label11:setHeight(20);
    obj.label11:setText("PREÇO");
    obj.label11:setName("label11");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout5);
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setLeft(120);
    obj.edit4:setTop(195);
    obj.edit4:setWidth(70);
    obj.edit4:setHeight(20);
    obj.edit4:setField("precoLivres");
    obj.edit4:setName("edit4");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox1);
    obj.layout6:setLeft(480);
    obj.layout6:setTop(225);
    obj.layout6:setWidth(200);
    obj.layout6:setHeight(220);
    obj.layout6:setName("layout6");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout6);
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setColor("black");
    obj.rectangle7:setName("rectangle7");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout6);
    obj.label12:setLeft(5);
    obj.label12:setTop(1);
    obj.label12:setWidth(150);
    obj.label12:setHeight(20);
    obj.label12:setText("OUTROS");
    obj.label12:setName("label12");

    obj.textEditor6 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout6);
    obj.textEditor6:setLeft(5);
    obj.textEditor6:setTop(25);
    obj.textEditor6:setWidth(190);
    obj.textEditor6:setHeight(165);
    obj.textEditor6:setField("outros");
    obj.textEditor6:setName("textEditor6");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout6);
    obj.label13:setLeft(70);
    obj.label13:setTop(195);
    obj.label13:setWidth(50);
    obj.label13:setHeight(20);
    obj.label13:setText("PREÇO");
    obj.label13:setName("label13");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout6);
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setLeft(120);
    obj.edit5:setTop(195);
    obj.edit5:setWidth(70);
    obj.edit5:setHeight(20);
    obj.edit5:setField("precoOutros");
    obj.edit5:setName("edit5");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setLeft(685);
    obj.layout7:setTop(225);
    obj.layout7:setWidth(200);
    obj.layout7:setHeight(220);
    obj.layout7:setName("layout7");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout7);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("black");
    obj.rectangle8:setName("rectangle8");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout7);
    obj.label14:setLeft(5);
    obj.label14:setTop(1);
    obj.label14:setWidth(150);
    obj.label14:setHeight(20);
    obj.label14:setText("MUNIÇÕES");
    obj.label14:setName("label14");

    obj.textEditor7 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout7);
    obj.textEditor7:setLeft(5);
    obj.textEditor7:setTop(25);
    obj.textEditor7:setWidth(190);
    obj.textEditor7:setHeight(165);
    obj.textEditor7:setField("municoes");
    obj.textEditor7:setName("textEditor7");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout7);
    obj.label15:setLeft(70);
    obj.label15:setTop(195);
    obj.label15:setWidth(50);
    obj.label15:setHeight(20);
    obj.label15:setText("PREÇO");
    obj.label15:setName("label15");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout7);
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setLeft(120);
    obj.edit6:setTop(195);
    obj.edit6:setWidth(70);
    obj.edit6:setHeight(20);
    obj.edit6:setField("precoMunicoes");
    obj.edit6:setName("edit6");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox1);
    obj.layout8:setLeft(480);
    obj.layout8:setTop(450);
    obj.layout8:setWidth(200);
    obj.layout8:setHeight(221);
    obj.layout8:setName("layout8");

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout8);
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setColor("black");
    obj.rectangle9:setName("rectangle9");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout8);
    obj.label16:setLeft(5);
    obj.label16:setTop(1);
    obj.label16:setWidth(150);
    obj.label16:setHeight(20);
    obj.label16:setText("BOLSOS");
    obj.label16:setName("label16");

    obj.textEditor8 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout8);
    obj.textEditor8:setLeft(5);
    obj.textEditor8:setTop(25);
    obj.textEditor8:setWidth(190);
    obj.textEditor8:setHeight(165);
    obj.textEditor8:setField("bolsos");
    obj.textEditor8:setName("textEditor8");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout8);
    obj.label17:setLeft(70);
    obj.label17:setTop(195);
    obj.label17:setWidth(50);
    obj.label17:setHeight(20);
    obj.label17:setText("PREÇO");
    obj.label17:setName("label17");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout8);
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setLeft(120);
    obj.edit7:setTop(195);
    obj.edit7:setWidth(70);
    obj.edit7:setHeight(20);
    obj.edit7:setField("precoBolsos");
    obj.edit7:setName("edit7");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox1);
    obj.layout9:setLeft(685);
    obj.layout9:setTop(450);
    obj.layout9:setWidth(200);
    obj.layout9:setHeight(221);
    obj.layout9:setName("layout9");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout9);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("black");
    obj.rectangle10:setName("rectangle10");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout9);
    obj.label18:setLeft(5);
    obj.label18:setTop(1);
    obj.label18:setWidth(150);
    obj.label18:setHeight(20);
    obj.label18:setText("IMOVEIS");
    obj.label18:setName("label18");

    obj.textEditor9 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout9);
    obj.textEditor9:setLeft(5);
    obj.textEditor9:setTop(25);
    obj.textEditor9:setWidth(190);
    obj.textEditor9:setHeight(165);
    obj.textEditor9:setField("imoveis");
    obj.textEditor9:setName("textEditor9");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout9);
    obj.label19:setLeft(70);
    obj.label19:setTop(195);
    obj.label19:setWidth(50);
    obj.label19:setHeight(20);
    obj.label19:setText("PREÇO");
    obj.label19:setName("label19");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout9);
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setLeft(120);
    obj.edit8:setTop(195);
    obj.edit8:setWidth(70);
    obj.edit8:setHeight(20);
    obj.edit8:setField("precoImoveis");
    obj.edit8:setName("edit8");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.scrollBox1);
    obj.layout10:setLeft(320);
    obj.layout10:setTop(170);
    obj.layout10:setWidth(155);
    obj.layout10:setHeight(160);
    obj.layout10:setName("layout10");

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout10);
    obj.rectangle11:setAlign("client");
    obj.rectangle11:setColor("black");
    obj.rectangle11:setName("rectangle11");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout10);
    obj.label20:setLeft(5);
    obj.label20:setTop(1);
    obj.label20:setWidth(150);
    obj.label20:setHeight(20);
    obj.label20:setText("CARGA");
    obj.label20:setName("label20");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout10);
    obj.label21:setLeft(20);
    obj.label21:setTop(25);
    obj.label21:setWidth(50);
    obj.label21:setHeight(20);
    obj.label21:setText("LEVE");
    obj.label21:setName("label21");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout10);
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setLeft(80);
    obj.edit9:setTop(25);
    obj.edit9:setWidth(70);
    obj.edit9:setHeight(20);
    obj.edit9:setField("cargaLeve");
    obj.edit9:setName("edit9");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout10);
    obj.label22:setLeft(20);
    obj.label22:setTop(47);
    obj.label22:setWidth(50);
    obj.label22:setHeight(20);
    obj.label22:setText("MÉDIA");
    obj.label22:setName("label22");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout10);
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setLeft(80);
    obj.edit10:setTop(47);
    obj.edit10:setWidth(70);
    obj.edit10:setHeight(20);
    obj.edit10:setField("cargaMedia");
    obj.edit10:setName("edit10");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout10);
    obj.label23:setLeft(20);
    obj.label23:setTop(69);
    obj.label23:setWidth(50);
    obj.label23:setHeight(20);
    obj.label23:setText("PESADA");
    obj.label23:setName("label23");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout10);
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setLeft(80);
    obj.edit11:setTop(69);
    obj.edit11:setWidth(70);
    obj.edit11:setHeight(20);
    obj.edit11:setField("cargaPesada");
    obj.edit11:setName("edit11");

    obj.rectangle12 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout10);
    obj.rectangle12:setWidth(70);
    obj.rectangle12:setHeight(20);
    obj.rectangle12:setLeft(80);
    obj.rectangle12:setTop(91);
    obj.rectangle12:setColor("black");
    obj.rectangle12:setStrokeColor("white");
    obj.rectangle12:setStrokeSize(1);
    obj.rectangle12:setName("rectangle12");

    obj.label24 = gui.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout10);
    obj.label24:setLeft(20);
    obj.label24:setTop(91);
    obj.label24:setWidth(50);
    obj.label24:setHeight(20);
    obj.label24:setText("ERGUER");
    obj.label24:setName("label24");

    obj.label25 = gui.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout10);
    obj.label25:setField("cargaErguer");
    obj.label25:setText("valor");
    obj.label25:setWidth(70);
    obj.label25:setHeight(20);
    obj.label25:setLeft(80);
    obj.label25:setTop(91);
    obj.label25:setHorzTextAlign("center");
    obj.label25:setName("label25");

    obj.rectangle13 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout10);
    obj.rectangle13:setWidth(70);
    obj.rectangle13:setHeight(20);
    obj.rectangle13:setLeft(80);
    obj.rectangle13:setTop(113);
    obj.rectangle13:setColor("black");
    obj.rectangle13:setStrokeColor("white");
    obj.rectangle13:setStrokeSize(1);
    obj.rectangle13:setName("rectangle13");

    obj.label26 = gui.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout10);
    obj.label26:setLeft(10);
    obj.label26:setTop(113);
    obj.label26:setWidth(70);
    obj.label26:setHeight(20);
    obj.label26:setText("EMPURRAR");
    obj.label26:setName("label26");

    obj.label27 = gui.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout10);
    obj.label27:setField("cargaLevantar");
    obj.label27:setText("valor");
    obj.label27:setWidth(70);
    obj.label27:setHeight(20);
    obj.label27:setLeft(80);
    obj.label27:setTop(113);
    obj.label27:setHorzTextAlign("center");
    obj.label27:setName("label27");

    obj.rectangle14 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout10);
    obj.rectangle14:setWidth(70);
    obj.rectangle14:setHeight(20);
    obj.rectangle14:setLeft(80);
    obj.rectangle14:setTop(135);
    obj.rectangle14:setColor("black");
    obj.rectangle14:setStrokeColor("white");
    obj.rectangle14:setStrokeSize(1);
    obj.rectangle14:setName("rectangle14");

    obj.label28 = gui.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout10);
    obj.label28:setLeft(10);
    obj.label28:setTop(135);
    obj.label28:setWidth(65);
    obj.label28:setHeight(20);
    obj.label28:setText("LEVANTAR");
    obj.label28:setName("label28");

    obj.label29 = gui.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout10);
    obj.label29:setField("cargaEmpurrar");
    obj.label29:setText("valor");
    obj.label29:setWidth(70);
    obj.label29:setHeight(20);
    obj.label29:setLeft(80);
    obj.label29:setTop(135);
    obj.label29:setHorzTextAlign("center");
    obj.label29:setName("label29");

    obj.dataLink2 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.scrollBox1);
    obj.dataLink2:setField("cargaPesada");
    obj.dataLink2:setName("dataLink2");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.scrollBox1);
    obj.layout11:setLeft(890);
    obj.layout11:setTop(0);
    obj.layout11:setWidth(305);
    obj.layout11:setHeight(670);
    obj.layout11:setName("layout11");

    obj.rectangle15 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout11);
    obj.rectangle15:setAlign("client");
    obj.rectangle15:setColor("#0000007F");
    obj.rectangle15:setStrokeColor("black");
    obj.rectangle15:setStrokeSize(1);
    obj.rectangle15:setName("rectangle15");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout11);
    obj.button1:setLeft(5);
    obj.button1:setTop(5);
    obj.button1:setHeight(20);
    obj.button1:setWidth(295);
    obj.button1:setText("Novo Item");
    obj.button1:setName("button1");

    obj.rclConsumiveis = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclConsumiveis:setParent(obj.layout11);
    obj.rclConsumiveis:setLeft(5);
    obj.rclConsumiveis:setTop(30);
    obj.rclConsumiveis:setWidth(295);
    obj.rclConsumiveis:setHeight(635);
    obj.rclConsumiveis:setName("rclConsumiveis");
    obj.rclConsumiveis:setField("itensConsumiveis");
    obj.rclConsumiveis:setTemplateForm("frmConsumiveis");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local mod = 0; 
            				mod = (getNumber(sheet.precoCabeca) or 0) +
            							(getNumber(sheet.precoOlhos) or 0) +
            							(getNumber(sheet.precoPescoco) or 0) +
            							(getNumber(sheet.precoOmbros) or 0) +
            							(getNumber(sheet.precoTorso) or 0) +
            							(getNumber(sheet.precoCorpo) or 0) +
            							(getNumber(sheet.precoPunhos) or 0) +
            							(getNumber(sheet.precoCintura) or 0) +
            							(getNumber(sheet.precoMaos) or 0) +
            							(getNumber(sheet.precoDedosI) or 0) +
            							(getNumber(sheet.precoDesdosII) or 0) +
            							(getNumber(sheet.precoPes) or 0) +
            							(getNumber(sheet.precoArmas) or 0) +
            							(getNumber(sheet.precoMochila) or 0) +
            							(getNumber(sheet.precoPermanencias) or 0) +
            							(getNumber(sheet.precoLivres) or 0) +
            							(getNumber(sheet.precoOutros) or 0) +
            							(getNumber(sheet.precoMunicoes) or 0) +
            							(getNumber(sheet.precoBolsos) or 0) +
            							(getNumber(sheet.precoImoveis) or 0)+
            							(getNumber(sheet.precoInventorioComp) or 0);
            				while true do  
            					mod, k = string.gsub(mod, "^(-?%d+)(%d%d%d)", '%1,%2')
            					if (k==0) then
            						break
            						end
            					end
            				mod = string.gsub(mod, ",", ".");
            				sheet.gastos = mod .. "PO";
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local mod1 = sheet.cargaPesada;
            					if mod1==nil then
            						mod1 = "0";
            					end
            					mod1 = string.gsub(mod1, "Kg", "");
            					mod1 = string.gsub(mod1, "K", "");
            					mod1 = string.gsub(mod1, "k", "");
            					mod1 = string.gsub(mod1, "G", "");
            					mod1 = string.gsub(mod1, "g", "");
            					local mod = (tonumber(mod1) or 0);
            					sheet.cargaErguer = mod .. "Kg";
            					sheet.cargaLevantar = (2*mod) .. "Kg";
            					sheet.cargaEmpurrar = (5*mod) .. "Kg";
        end, obj);

    obj._e_event2 = obj.button1:addEventListener("onClick",
        function (self)
            self.rclConsumiveis:append();
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

        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.rclConsumiveis ~= nil then self.rclConsumiveis:destroy(); self.rclConsumiveis = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmFichaRPGmeister7_svg = {
    newEditor = newfrmFichaRPGmeister7_svg, 
    new = newfrmFichaRPGmeister7_svg, 
    name = "frmFichaRPGmeister7_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmFichaRPGmeister7_svg = _frmFichaRPGmeister7_svg;
rrpg.registrarForm(_frmFichaRPGmeister7_svg);

return _frmFichaRPGmeister7_svg;
