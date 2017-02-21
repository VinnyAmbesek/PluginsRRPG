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
    obj.layout1:setWidth(475);
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
    obj.textEditor1:setWidth(465);
    obj.textEditor1:setHeight(275);
    obj.textEditor1:setField("armas");
    obj.textEditor1:setName("textEditor1");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setLeft(280);
    obj.label2:setTop(305);
    obj.label2:setWidth(50);
    obj.label2:setHeight(20);
    obj.label2:setText("Kg");
    obj.label2:setName("label2");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setLeft(300);
    obj.edit1:setTop(305);
    obj.edit1:setWidth(70);
    obj.edit1:setHeight(20);
    obj.edit1:setField("pesoArmas");
    obj.edit1:setName("edit1");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout1);
    obj.label3:setLeft(380);
    obj.label3:setTop(305);
    obj.label3:setWidth(50);
    obj.label3:setHeight(20);
    obj.label3:setText("$");
    obj.label3:setName("label3");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setLeft(395);
    obj.edit2:setTop(305);
    obj.edit2:setWidth(71);
    obj.edit2:setHeight(20);
    obj.edit2:setField("precoArmas");
    obj.edit2:setName("edit2");

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

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setLeft(5);
    obj.label4:setTop(1);
    obj.label4:setWidth(200);
    obj.label4:setHeight(20);
    obj.label4:setText("MOCHILA");
    obj.label4:setName("label4");

    obj.textEditor2 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout2);
    obj.textEditor2:setLeft(5);
    obj.textEditor2:setTop(25);
    obj.textEditor2:setWidth(465);
    obj.textEditor2:setHeight(280);
    obj.textEditor2:setField("mochila");
    obj.textEditor2:setName("textEditor2");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout2);
    obj.label5:setLeft(280);
    obj.label5:setTop(310);
    obj.label5:setWidth(50);
    obj.label5:setHeight(20);
    obj.label5:setText("Kg");
    obj.label5:setName("label5");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout2);
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setLeft(300);
    obj.edit3:setTop(310);
    obj.edit3:setWidth(70);
    obj.edit3:setHeight(20);
    obj.edit3:setField("pesoMochila");
    obj.edit3:setName("edit3");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout2);
    obj.label6:setLeft(380);
    obj.label6:setTop(310);
    obj.label6:setWidth(50);
    obj.label6:setHeight(20);
    obj.label6:setText("$");
    obj.label6:setName("label6");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout2);
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setLeft(395);
    obj.edit4:setTop(310);
    obj.edit4:setWidth(71);
    obj.edit4:setHeight(20);
    obj.edit4:setField("precoMochila");
    obj.edit4:setName("edit4");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.scrollBox1);
    obj.layout3:setLeft(480);
    obj.layout3:setTop(0);
    obj.layout3:setWidth(200);
    obj.layout3:setHeight(220);
    obj.layout3:setName("layout3");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout3);
    obj.rectangle3:setAlign("client");
    obj.rectangle3:setColor("black");
    obj.rectangle3:setName("rectangle3");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout3);
    obj.label7:setLeft(5);
    obj.label7:setTop(1);
    obj.label7:setWidth(150);
    obj.label7:setHeight(20);
    obj.label7:setText("PERMANENCIAS");
    obj.label7:setName("label7");

    obj.textEditor3 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout3);
    obj.textEditor3:setLeft(5);
    obj.textEditor3:setTop(25);
    obj.textEditor3:setWidth(190);
    obj.textEditor3:setHeight(165);
    obj.textEditor3:setField("permanencias");
    obj.textEditor3:setName("textEditor3");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout3);
    obj.label8:setLeft(5);
    obj.label8:setTop(195);
    obj.label8:setWidth(50);
    obj.label8:setHeight(20);
    obj.label8:setText("Kg");
    obj.label8:setName("label8");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout3);
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setLeft(25);
    obj.edit5:setTop(195);
    obj.edit5:setWidth(70);
    obj.edit5:setHeight(20);
    obj.edit5:setField("pesoPermanencias");
    obj.edit5:setName("edit5");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout3);
    obj.label9:setLeft(105);
    obj.label9:setTop(195);
    obj.label9:setWidth(50);
    obj.label9:setHeight(20);
    obj.label9:setText("$");
    obj.label9:setName("label9");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout3);
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setLeft(120);
    obj.edit6:setTop(195);
    obj.edit6:setWidth(70);
    obj.edit6:setHeight(20);
    obj.edit6:setField("precoPermanencias");
    obj.edit6:setName("edit6");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.scrollBox1);
    obj.layout4:setLeft(685);
    obj.layout4:setTop(0);
    obj.layout4:setWidth(200);
    obj.layout4:setHeight(220);
    obj.layout4:setName("layout4");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout4);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("black");
    obj.rectangle4:setName("rectangle4");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout4);
    obj.label10:setLeft(5);
    obj.label10:setTop(1);
    obj.label10:setWidth(150);
    obj.label10:setHeight(20);
    obj.label10:setText("LIVRES");
    obj.label10:setName("label10");

    obj.textEditor4 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout4);
    obj.textEditor4:setLeft(5);
    obj.textEditor4:setTop(25);
    obj.textEditor4:setWidth(190);
    obj.textEditor4:setHeight(165);
    obj.textEditor4:setField("livres");
    obj.textEditor4:setName("textEditor4");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout4);
    obj.label11:setLeft(5);
    obj.label11:setTop(195);
    obj.label11:setWidth(50);
    obj.label11:setHeight(20);
    obj.label11:setText("Kg");
    obj.label11:setName("label11");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout4);
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setLeft(25);
    obj.edit7:setTop(195);
    obj.edit7:setWidth(70);
    obj.edit7:setHeight(20);
    obj.edit7:setField("pesoLivres");
    obj.edit7:setName("edit7");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout4);
    obj.label12:setLeft(105);
    obj.label12:setTop(195);
    obj.label12:setWidth(50);
    obj.label12:setHeight(20);
    obj.label12:setText("$");
    obj.label12:setName("label12");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout4);
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setLeft(120);
    obj.edit8:setTop(195);
    obj.edit8:setWidth(70);
    obj.edit8:setHeight(20);
    obj.edit8:setField("precoLivres");
    obj.edit8:setName("edit8");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.scrollBox1);
    obj.layout5:setLeft(480);
    obj.layout5:setTop(225);
    obj.layout5:setWidth(200);
    obj.layout5:setHeight(220);
    obj.layout5:setName("layout5");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout5);
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setColor("black");
    obj.rectangle5:setName("rectangle5");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout5);
    obj.label13:setLeft(5);
    obj.label13:setTop(1);
    obj.label13:setWidth(150);
    obj.label13:setHeight(20);
    obj.label13:setText("OUTROS");
    obj.label13:setName("label13");

    obj.textEditor5 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout5);
    obj.textEditor5:setLeft(5);
    obj.textEditor5:setTop(25);
    obj.textEditor5:setWidth(190);
    obj.textEditor5:setHeight(165);
    obj.textEditor5:setField("outros");
    obj.textEditor5:setName("textEditor5");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout5);
    obj.label14:setLeft(5);
    obj.label14:setTop(195);
    obj.label14:setWidth(50);
    obj.label14:setHeight(20);
    obj.label14:setText("Kg");
    obj.label14:setName("label14");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout5);
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setLeft(25);
    obj.edit9:setTop(195);
    obj.edit9:setWidth(70);
    obj.edit9:setHeight(20);
    obj.edit9:setField("pesoOutros");
    obj.edit9:setName("edit9");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout5);
    obj.label15:setLeft(105);
    obj.label15:setTop(195);
    obj.label15:setWidth(50);
    obj.label15:setHeight(20);
    obj.label15:setText("$");
    obj.label15:setName("label15");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout5);
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setLeft(120);
    obj.edit10:setTop(195);
    obj.edit10:setWidth(70);
    obj.edit10:setHeight(20);
    obj.edit10:setField("precoOutros");
    obj.edit10:setName("edit10");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.scrollBox1);
    obj.layout6:setLeft(685);
    obj.layout6:setTop(225);
    obj.layout6:setWidth(200);
    obj.layout6:setHeight(220);
    obj.layout6:setName("layout6");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout6);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("black");
    obj.rectangle6:setName("rectangle6");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout6);
    obj.label16:setLeft(5);
    obj.label16:setTop(1);
    obj.label16:setWidth(150);
    obj.label16:setHeight(20);
    obj.label16:setText("MUNIÇÕES");
    obj.label16:setName("label16");

    obj.textEditor6 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout6);
    obj.textEditor6:setLeft(5);
    obj.textEditor6:setTop(25);
    obj.textEditor6:setWidth(190);
    obj.textEditor6:setHeight(165);
    obj.textEditor6:setField("municoes");
    obj.textEditor6:setName("textEditor6");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout6);
    obj.label17:setLeft(5);
    obj.label17:setTop(195);
    obj.label17:setWidth(50);
    obj.label17:setHeight(20);
    obj.label17:setText("Kg");
    obj.label17:setName("label17");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout6);
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setLeft(25);
    obj.edit11:setTop(195);
    obj.edit11:setWidth(70);
    obj.edit11:setHeight(20);
    obj.edit11:setField("pesoMunicoes");
    obj.edit11:setName("edit11");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout6);
    obj.label18:setLeft(105);
    obj.label18:setTop(195);
    obj.label18:setWidth(50);
    obj.label18:setHeight(20);
    obj.label18:setText("$");
    obj.label18:setName("label18");

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout6);
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setLeft(120);
    obj.edit12:setTop(195);
    obj.edit12:setWidth(70);
    obj.edit12:setHeight(20);
    obj.edit12:setField("precoMunicoes");
    obj.edit12:setName("edit12");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.scrollBox1);
    obj.layout7:setLeft(480);
    obj.layout7:setTop(450);
    obj.layout7:setWidth(200);
    obj.layout7:setHeight(221);
    obj.layout7:setName("layout7");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout7);
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setColor("black");
    obj.rectangle7:setName("rectangle7");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout7);
    obj.label19:setLeft(5);
    obj.label19:setTop(1);
    obj.label19:setWidth(150);
    obj.label19:setHeight(20);
    obj.label19:setText("BOLSOS");
    obj.label19:setName("label19");

    obj.textEditor7 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout7);
    obj.textEditor7:setLeft(5);
    obj.textEditor7:setTop(25);
    obj.textEditor7:setWidth(190);
    obj.textEditor7:setHeight(165);
    obj.textEditor7:setField("bolsos");
    obj.textEditor7:setName("textEditor7");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout7);
    obj.label20:setLeft(5);
    obj.label20:setTop(195);
    obj.label20:setWidth(50);
    obj.label20:setHeight(20);
    obj.label20:setText("Kg");
    obj.label20:setName("label20");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout7);
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setLeft(25);
    obj.edit13:setTop(195);
    obj.edit13:setWidth(70);
    obj.edit13:setHeight(20);
    obj.edit13:setField("pesoBolsos");
    obj.edit13:setName("edit13");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout7);
    obj.label21:setLeft(105);
    obj.label21:setTop(195);
    obj.label21:setWidth(50);
    obj.label21:setHeight(20);
    obj.label21:setText("$");
    obj.label21:setName("label21");

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout7);
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setLeft(120);
    obj.edit14:setTop(195);
    obj.edit14:setWidth(70);
    obj.edit14:setHeight(20);
    obj.edit14:setField("precoBolsos");
    obj.edit14:setName("edit14");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.scrollBox1);
    obj.layout8:setLeft(685);
    obj.layout8:setTop(450);
    obj.layout8:setWidth(200);
    obj.layout8:setHeight(221);
    obj.layout8:setName("layout8");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout8);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("black");
    obj.rectangle8:setName("rectangle8");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout8);
    obj.label22:setLeft(5);
    obj.label22:setTop(1);
    obj.label22:setWidth(150);
    obj.label22:setHeight(20);
    obj.label22:setText("IMOVEIS");
    obj.label22:setName("label22");

    obj.textEditor8 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout8);
    obj.textEditor8:setLeft(5);
    obj.textEditor8:setTop(25);
    obj.textEditor8:setWidth(190);
    obj.textEditor8:setHeight(165);
    obj.textEditor8:setField("moveis");
    obj.textEditor8:setName("textEditor8");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout8);
    obj.label23:setLeft(5);
    obj.label23:setTop(195);
    obj.label23:setWidth(50);
    obj.label23:setHeight(20);
    obj.label23:setText("Kg");
    obj.label23:setName("label23");

    obj.edit15 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout8);
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setLeft(25);
    obj.edit15:setTop(195);
    obj.edit15:setWidth(70);
    obj.edit15:setHeight(20);
    obj.edit15:setField("pesoImoveis");
    obj.edit15:setName("edit15");

    obj.label24 = gui.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout8);
    obj.label24:setLeft(105);
    obj.label24:setTop(195);
    obj.label24:setWidth(50);
    obj.label24:setHeight(20);
    obj.label24:setText("$");
    obj.label24:setName("label24");

    obj.edit16 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout8);
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setLeft(120);
    obj.edit16:setTop(195);
    obj.edit16:setWidth(70);
    obj.edit16:setHeight(20);
    obj.edit16:setField("precoImoveis");
    obj.edit16:setName("edit16");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.scrollBox1);
    obj.layout9:setLeft(890);
    obj.layout9:setTop(0);
    obj.layout9:setWidth(315);
    obj.layout9:setHeight(480);
    obj.layout9:setName("layout9");

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout9);
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setColor("#0000007F");
    obj.rectangle9:setStrokeColor("black");
    obj.rectangle9:setStrokeSize(1);
    obj.rectangle9:setName("rectangle9");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout9);
    obj.button1:setLeft(5);
    obj.button1:setTop(5);
    obj.button1:setHeight(20);
    obj.button1:setWidth(305);
    obj.button1:setText("Novo Item");
    obj.button1:setName("button1");

    obj.rclConsumiveis = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclConsumiveis:setParent(obj.layout9);
    obj.rclConsumiveis:setLeft(5);
    obj.rclConsumiveis:setTop(30);
    obj.rclConsumiveis:setWidth(305);
    obj.rclConsumiveis:setHeight(445);
    obj.rclConsumiveis:setName("rclConsumiveis");
    obj.rclConsumiveis:setField("itensConsumiveis");
    obj.rclConsumiveis:setTemplateForm("frmConsumiveis");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.scrollBox1);
    obj.layout10:setLeft(890);
    obj.layout10:setTop(485);
    obj.layout10:setWidth(155);
    obj.layout10:setHeight(185);
    obj.layout10:setName("layout10");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout10);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("black");
    obj.rectangle10:setName("rectangle10");

    obj.label25 = gui.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout10);
    obj.label25:setLeft(5);
    obj.label25:setTop(1);
    obj.label25:setWidth(200);
    obj.label25:setHeight(20);
    obj.label25:setText("DINHEIRO");
    obj.label25:setName("label25");

    obj.textEditor9 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout10);
    obj.textEditor9:setLeft(5);
    obj.textEditor9:setTop(25);
    obj.textEditor9:setWidth(145);
    obj.textEditor9:setHeight(130);
    obj.textEditor9:setField("dinheiro");
    obj.textEditor9:setName("textEditor9");

    obj.label26 = gui.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout10);
    obj.label26:setLeft(10);
    obj.label26:setTop(160);
    obj.label26:setWidth(50);
    obj.label26:setHeight(20);
    obj.label26:setText("GASTOS");
    obj.label26:setName("label26");

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout10);
    obj.rectangle11:setLeft(65);
    obj.rectangle11:setTop(160);
    obj.rectangle11:setWidth(85);
    obj.rectangle11:setHeight(20);
    obj.rectangle11:setColor("black");
    obj.rectangle11:setStrokeColor("white");
    obj.rectangle11:setStrokeSize(1);
    obj.rectangle11:setName("rectangle11");

    obj.label27 = gui.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout10);
    obj.label27:setField("gastos");
    obj.label27:setText("0");
    obj.label27:setLeft(65);
    obj.label27:setTop(160);
    obj.label27:setWidth(85);
    obj.label27:setHeight(20);
    obj.label27:setHorzTextAlign("center");
    obj.label27:setName("label27");

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.scrollBox1);
    obj.dataLink1:setFields({'precoCabeca', 'precoOlhos', 'precoPescoco', 'precoOmbros', 'precoTorso', 'precoCorpo', 'precoPunhos', 'precoCintura', 'precoMaos', 'precoDedosI', 'precoDesdosII', 'precoPes', 'precoArmas', 'precoMochila', 'precoPermanencias', 'precoLivres', 'precoOutros', 'precoMunicoes', 'precoBolsos', 'precoImoveis', 'precoInventorioComp'});
    obj.dataLink1:setName("dataLink1");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.scrollBox1);
    obj.layout11:setLeft(1050);
    obj.layout11:setTop(485);
    obj.layout11:setWidth(155);
    obj.layout11:setHeight(185);
    obj.layout11:setName("layout11");

    obj.rectangle12 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout11);
    obj.rectangle12:setAlign("client");
    obj.rectangle12:setColor("black");
    obj.rectangle12:setName("rectangle12");

    obj.label28 = gui.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout11);
    obj.label28:setLeft(5);
    obj.label28:setTop(1);
    obj.label28:setWidth(150);
    obj.label28:setHeight(20);
    obj.label28:setText("CARGA");
    obj.label28:setName("label28");

    obj.label29 = gui.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout11);
    obj.label29:setLeft(20);
    obj.label29:setTop(25);
    obj.label29:setWidth(50);
    obj.label29:setHeight(20);
    obj.label29:setText("LEVE");
    obj.label29:setName("label29");

    obj.edit17 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout11);
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setLeft(80);
    obj.edit17:setTop(25);
    obj.edit17:setWidth(70);
    obj.edit17:setHeight(20);
    obj.edit17:setField("cargaLeve");
    obj.edit17:setName("edit17");

    obj.label30 = gui.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout11);
    obj.label30:setLeft(20);
    obj.label30:setTop(47);
    obj.label30:setWidth(50);
    obj.label30:setHeight(20);
    obj.label30:setText("MÉDIA");
    obj.label30:setName("label30");

    obj.edit18 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout11);
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setLeft(80);
    obj.edit18:setTop(47);
    obj.edit18:setWidth(70);
    obj.edit18:setHeight(20);
    obj.edit18:setField("cargaMedia");
    obj.edit18:setName("edit18");

    obj.label31 = gui.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout11);
    obj.label31:setLeft(20);
    obj.label31:setTop(69);
    obj.label31:setWidth(50);
    obj.label31:setHeight(20);
    obj.label31:setText("PESADA");
    obj.label31:setName("label31");

    obj.edit19 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout11);
    obj.edit19:setHorzTextAlign("center");
    obj.edit19:setLeft(80);
    obj.edit19:setTop(69);
    obj.edit19:setWidth(70);
    obj.edit19:setHeight(20);
    obj.edit19:setField("cargaPesada");
    obj.edit19:setName("edit19");

    obj.rectangle13 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout11);
    obj.rectangle13:setWidth(70);
    obj.rectangle13:setHeight(20);
    obj.rectangle13:setLeft(80);
    obj.rectangle13:setTop(91);
    obj.rectangle13:setColor("black");
    obj.rectangle13:setStrokeColor("white");
    obj.rectangle13:setStrokeSize(1);
    obj.rectangle13:setName("rectangle13");

    obj.label32 = gui.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout11);
    obj.label32:setLeft(20);
    obj.label32:setTop(91);
    obj.label32:setWidth(50);
    obj.label32:setHeight(20);
    obj.label32:setText("ERGUER");
    obj.label32:setName("label32");

    obj.label33 = gui.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout11);
    obj.label33:setField("cargaErguer");
    obj.label33:setText("valor");
    obj.label33:setWidth(70);
    obj.label33:setHeight(20);
    obj.label33:setLeft(80);
    obj.label33:setTop(91);
    obj.label33:setHorzTextAlign("center");
    obj.label33:setName("label33");

    obj.rectangle14 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout11);
    obj.rectangle14:setWidth(70);
    obj.rectangle14:setHeight(20);
    obj.rectangle14:setLeft(80);
    obj.rectangle14:setTop(113);
    obj.rectangle14:setColor("black");
    obj.rectangle14:setStrokeColor("white");
    obj.rectangle14:setStrokeSize(1);
    obj.rectangle14:setName("rectangle14");

    obj.label34 = gui.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout11);
    obj.label34:setLeft(10);
    obj.label34:setTop(113);
    obj.label34:setWidth(70);
    obj.label34:setHeight(20);
    obj.label34:setText("EMPURRAR");
    obj.label34:setName("label34");

    obj.label35 = gui.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout11);
    obj.label35:setField("cargaLevantar");
    obj.label35:setText("valor");
    obj.label35:setWidth(70);
    obj.label35:setHeight(20);
    obj.label35:setLeft(80);
    obj.label35:setTop(113);
    obj.label35:setHorzTextAlign("center");
    obj.label35:setName("label35");

    obj.rectangle15 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout11);
    obj.rectangle15:setWidth(70);
    obj.rectangle15:setHeight(20);
    obj.rectangle15:setLeft(80);
    obj.rectangle15:setTop(135);
    obj.rectangle15:setColor("black");
    obj.rectangle15:setStrokeColor("white");
    obj.rectangle15:setStrokeSize(1);
    obj.rectangle15:setName("rectangle15");

    obj.label36 = gui.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout11);
    obj.label36:setLeft(10);
    obj.label36:setTop(135);
    obj.label36:setWidth(65);
    obj.label36:setHeight(20);
    obj.label36:setText("LEVANTAR");
    obj.label36:setName("label36");

    obj.label37 = gui.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout11);
    obj.label37:setField("cargaEmpurrar");
    obj.label37:setText("valor");
    obj.label37:setWidth(70);
    obj.label37:setHeight(20);
    obj.label37:setLeft(80);
    obj.label37:setTop(135);
    obj.label37:setHorzTextAlign("center");
    obj.label37:setName("label37");

    obj.rectangle16 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout11);
    obj.rectangle16:setWidth(70);
    obj.rectangle16:setHeight(20);
    obj.rectangle16:setLeft(80);
    obj.rectangle16:setTop(160);
    obj.rectangle16:setColor("white");
    obj.rectangle16:setStrokeColor("gray");
    obj.rectangle16:setStrokeSize(1);
    obj.rectangle16:setName("rectangle16");

    obj.label38 = gui.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout11);
    obj.label38:setLeft(20);
    obj.label38:setTop(160);
    obj.label38:setWidth(65);
    obj.label38:setHeight(20);
    obj.label38:setText("ATUAL");
    obj.label38:setName("label38");

    obj.label39 = gui.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout11);
    obj.label39:setField("cargaAtual");
    obj.label39:setText("valor");
    obj.label39:setWidth(70);
    obj.label39:setHeight(20);
    obj.label39:setLeft(80);
    obj.label39:setTop(160);
    obj.label39:setHorzTextAlign("center");
    obj.label39:setFontColor("black");
    lfm_setPropAsString(obj.label39, "fontStyle",  "bold");
    obj.label39:setName("label39");

    obj.dataLink2 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.scrollBox1);
    obj.dataLink2:setField("cargaPesada");
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.scrollBox1);
    obj.dataLink3:setFields({'pesoCabeca', 'pesoOlhos', 'pesoPescoco', 'pesoOmbros', 'pesoTorso', 'pesoCorpo', 'pesoPunhos', 'pesoCintura', 'pesoMaos', 'pesoDedosI', 'pesoDesdosII', 'pesoPes', 'pesoArmas', 'pesoMochila', 'pesoPermanencias', 'pesoLivres', 'pesoOutros', 'pesoMunicoes', 'pesoBolsos', 'pesoImoveis', 'pesoInventorioComp'});
    obj.dataLink3:setName("dataLink3");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (self)
            self.rclConsumiveis:append();
        end, obj);

    obj._e_event1 = obj.dataLink1:addEventListener("onChange",
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
            							(getNumber(sheet.precoImoveis) or 0);
            				local mod2 = 0;
            				local nodes = ndb.getChildNodes(sheet.campoDosCompanheiros);   
            				for i=1, #nodes, 1 do
            					mod2 = mod2 + (getNumber(nodes[i].precoInventorioComp) or 0);
            				end
            				mod = mod + mod2;
            				mod = string.gsub(mod, "%.", "_");
            				while true do  
            					mod, k = string.gsub(mod, "^(-?%d+)(%d%d%d)", '%1,%2')
            					if (k==0) then
            						break
            						end
            					end
            				mod = string.gsub(mod, ",", ".");
            				mod = string.gsub(mod, "_", ",");
            				sheet.gastos = mod .. "PO";
        end, obj);

    obj._e_event2 = obj.dataLink2:addEventListener("onChange",
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
            					mod1 = string.gsub(mod1, ",", ".");
            					local mod = (tonumber(mod1) or 0);
            					sheet.cargaErguer = mod .. "Kg";
            					sheet.cargaLevantar = (2*mod) .. "Kg";
            					sheet.cargaEmpurrar = (5*mod) .. "Kg";
        end, obj);

    obj._e_event3 = obj.dataLink3:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local mod = 0;
            				mod = (getNumber(sheet.pesoCabeca) or 0) +
            							(getNumber(sheet.pesoOlhos) or 0) +
            							(getNumber(sheet.pesoPescoco) or 0) +
            							(getNumber(sheet.pesoOmbros) or 0) +
            							(getNumber(sheet.pesoTorso) or 0) +
            							(getNumber(sheet.pesoCorpo) or 0) +
            							(getNumber(sheet.pesoPunhos) or 0) +
            							(getNumber(sheet.pesoCintura) or 0) +
            							(getNumber(sheet.pesoMaos) or 0) +
            							(getNumber(sheet.pesoDedosI) or 0) +
            							(getNumber(sheet.pesoDesdosII) or 0) +
            							(getNumber(sheet.pesoPes) or 0) +
            							(getNumber(sheet.pesoArmas) or 0) +
            							(getNumber(sheet.pesoMochila) or 0) +
            							(getNumber(sheet.pesoPermanencias) or 0) +
            							(getNumber(sheet.pesoLivres) or 0) +
            							(getNumber(sheet.pesoOutros) or 0) +
            							(getNumber(sheet.pesoMunicoes) or 0) +
            							(getNumber(sheet.pesoBolsos) or 0) +
            							(getNumber(sheet.pesoImoveis) or 0);
            				while true do  
            					mod, k = string.gsub(mod, "^(-?%d+)(%d%d%d)", '%1,%2')
            					if (k==0) then
            						break
            						end
            					end
            				mod = string.gsub(mod, ",", ".");
            				sheet.cargaAtual = mod .. "Kg";
        end, obj);

    function obj:_releaseEvents()
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

        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.rclConsumiveis ~= nil then self.rclConsumiveis:destroy(); self.rclConsumiveis = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
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
