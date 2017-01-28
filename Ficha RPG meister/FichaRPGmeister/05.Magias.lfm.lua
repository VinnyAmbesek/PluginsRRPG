require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmFichaRPGmeister5M_svg()
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
    obj:setName("frmFichaRPGmeister5M_svg");
    obj:setAlign("client");
    obj:setTheme("dark");
    obj:setMargins({top=1});

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.scrollBox1);
    obj.layout1:setLeft(1205);
    obj.layout1:setTop(0);
    obj.layout1:setWidth(30);
    obj.layout1:setHeight(30);
    obj.layout1:setMargins({bottom=4});
    obj.layout1:setName("layout1");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setText("+");
    obj.button1:setWidth(30);
    obj.button1:setAlign("left");
    obj.button1:setName("button1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setLeft(0);
    obj.rectangle1:setTop(0);
    obj.rectangle1:setWidth(1200);
    obj.rectangle1:setHeight(46);
    obj.rectangle1:setColor("gray");
    obj.rectangle1:setName("rectangle1");

    obj.rclListaDosItens = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens:setParent(obj.scrollBox1);
    obj.rclListaDosItens:setName("rclListaDosItens");
    obj.rclListaDosItens:setField("campoDosItens");
    obj.rclListaDosItens:setTemplateForm("frmFichaRPGmeister5MM_svg");
    obj.rclListaDosItens:setLeft(0);
    obj.rclListaDosItens:setTop(0);
    obj.rclListaDosItens:setWidth(1200);
    obj.rclListaDosItens:setHeight(46);
    obj.rclListaDosItens:setSelectable(true);
    obj.rclListaDosItens:setLayout("horizontal");

    obj.boxDetalhesDoItem = gui.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxDetalhesDoItem:setParent(obj.scrollBox1);
    obj.boxDetalhesDoItem:setName("boxDetalhesDoItem");
    obj.boxDetalhesDoItem:setVisible(false);
    obj.boxDetalhesDoItem:setLeft(0);
    obj.boxDetalhesDoItem:setTop(50);
    obj.boxDetalhesDoItem:setWidth(1200);
    obj.boxDetalhesDoItem:setHeight(600);

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.boxDetalhesDoItem);
    obj.label1:setVertTextAlign("center");
    obj.label1:setLeft(5);
    obj.label1:setTop(10);
    obj.label1:setWidth(50);
    obj.label1:setHeight(25);
    obj.label1:setText("Classe");
    obj.label1:setName("label1");
    obj.label1:setFontColor("white");
    obj.label1:setTextTrimming("none");
    obj.label1:setWordWrap(false);
    obj.label1:setAutoSize(true);

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.boxDetalhesDoItem);
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setLeft(50);
    obj.edit1:setTop(5);
    obj.edit1:setWidth(150);
    obj.edit1:setHeight(25);
    obj.edit1:setField("classeMagia");
    obj.edit1:setName("edit1");

    obj.button2 = gui.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.boxDetalhesDoItem);
    obj.button2:setLeft(203);
    obj.button2:setTop(8);
    obj.button2:setWidth(30);
    obj.button2:setHeight(20);
    obj.button2:setText("NC");
    obj.button2:setName("button2");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.boxDetalhesDoItem);
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setLeft(235);
    obj.edit2:setTop(5);
    obj.edit2:setWidth(100);
    obj.edit2:setHeight(25);
    obj.edit2:setField("NC");
    obj.edit2:setName("edit2");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.boxDetalhesDoItem);
    obj.label2:setVertTextAlign("center");
    obj.label2:setLeft(340);
    obj.label2:setTop(10);
    obj.label2:setWidth(30);
    obj.label2:setHeight(25);
    obj.label2:setText("PM");
    obj.label2:setName("label2");
    obj.label2:setFontColor("white");
    obj.label2:setTextTrimming("none");
    obj.label2:setWordWrap(false);
    obj.label2:setAutoSize(true);

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.boxDetalhesDoItem);
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setLeft(375);
    obj.edit3:setTop(5);
    obj.edit3:setWidth(100);
    obj.edit3:setHeight(25);
    obj.edit3:setField("PM");
    obj.edit3:setName("edit3");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.boxDetalhesDoItem);
    obj.label3:setVertTextAlign("center");
    obj.label3:setLeft(480);
    obj.label3:setTop(10);
    obj.label3:setWidth(30);
    obj.label3:setHeight(25);
    obj.label3:setText("Usos");
    obj.label3:setName("label3");
    obj.label3:setFontColor("white");
    obj.label3:setTextTrimming("none");
    obj.label3:setWordWrap(false);
    obj.label3:setAutoSize(true);

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.boxDetalhesDoItem);
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setLeft(515);
    obj.edit4:setTop(5);
    obj.edit4:setWidth(100);
    obj.edit4:setHeight(25);
    obj.edit4:setField("usos");
    obj.edit4:setName("edit4");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.boxDetalhesDoItem);
    obj.label4:setVertTextAlign("center");
    obj.label4:setLeft(620);
    obj.label4:setTop(10);
    obj.label4:setWidth(35);
    obj.label4:setHeight(25);
    obj.label4:setText("Outros");
    obj.label4:setName("label4");
    obj.label4:setFontColor("white");
    obj.label4:setTextTrimming("none");
    obj.label4:setWordWrap(false);
    obj.label4:setAutoSize(true);

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.boxDetalhesDoItem);
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setLeft(665);
    obj.edit5:setTop(5);
    obj.edit5:setWidth(535);
    obj.edit5:setHeight(25);
    obj.edit5:setField("magiasOutros");
    obj.edit5:setName("edit5");


				local function limpar()
					if self.boxDetalhesDoItem.node~= nil then
						local mod = self.boxDetalhesDoItem.node.tipoMagia;
						if mod=='1' then
							self.layoutMagias.visible = true;
							self.layoutSignos.visible = false;
							self.layoutMagiasEpicas.visible = false;
							self.layoutMagiasAprimoradas.visible = false;
						elseif mod=='2' then
							self.layoutMagias.visible = false;
							self.layoutSignos.visible = true;
							self.layoutMagiasEpicas.visible = false;
							self.layoutMagiasAprimoradas.visible = false;
						elseif mod=='7' then
							self.layoutMagias.visible = false;
							self.layoutSignos.visible = false;
							self.layoutMagiasEpicas.visible = true;
							self.layoutMagiasAprimoradas.visible = false;
						elseif mod=='8' then
							self.layoutMagias.visible = false;
							self.layoutSignos.visible = false;
							self.layoutMagiasEpicas.visible = false;
							self.layoutMagiasAprimoradas.visible = true;
						else
							self.layoutMagias.visible = false;
							self.layoutSignos.visible = false;
							self.layoutMagiasEpicas.visible = false;
							self.layoutMagiasAprimoradas.visible = false;
						end
					end
				end;
			


    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.boxDetalhesDoItem);
    obj.rectangle2:setLeft(5);
    obj.rectangle2:setTop(40);
    obj.rectangle2:setWidth(330);
    obj.rectangle2:setHeight(370);
    obj.rectangle2:setColor("black");
    obj.rectangle2:setCornerType("round");
    obj.rectangle2:setXradius(15);
    obj.rectangle2:setYradius(15);
    obj.rectangle2:setName("rectangle2");

    obj.layoutMagias = gui.fromHandle(_obj_newObject("layout"));
    obj.layoutMagias:setParent(obj.boxDetalhesDoItem);
    obj.layoutMagias:setLeft(0);
    obj.layoutMagias:setTop(50);
    obj.layoutMagias:setWidth(1200);
    obj.layoutMagias:setHeight(550);
    obj.layoutMagias:setName("layoutMagias");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layoutMagias);
    obj.layout2:setLeft(10);
    obj.layout2:setTop(0);
    obj.layout2:setWidth(350);
    obj.layout2:setHeight(350);
    obj.layout2:setName("layout2");

    obj.comboBox1 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.layout2);
    obj.comboBox1:setLeft(115);
    obj.comboBox1:setTop(0);
    obj.comboBox1:setWidth(60);
    obj.comboBox1:setHeight(25);
    obj.comboBox1:setItems({'FOR', 'DES', 'CON', 'INT', 'SAB', 'CAR'});
    obj.comboBox1:setValues({'1', '2', '3', '4', '5', '6'});
    obj.comboBox1:setField("atributoBonus");
    obj.comboBox1:setName("comboBox1");

    obj.comboBox2 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.layout2);
    obj.comboBox2:setLeft(260);
    obj.comboBox2:setTop(0);
    obj.comboBox2:setWidth(60);
    obj.comboBox2:setHeight(25);
    obj.comboBox2:setItems({'FOR', 'DES', 'CON', 'INT', 'SAB', 'CAR'});
    obj.comboBox2:setValues({'1', '2', '3', '4', '5', '6'});
    obj.comboBox2:setField("atributoCD");
    obj.comboBox2:setName("comboBox2");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout2);
    obj.rectangle3:setLeft(210);
    obj.rectangle3:setTop(0);
    obj.rectangle3:setWidth(30);
    obj.rectangle3:setHeight(25);
    obj.rectangle3:setColor("black");
    obj.rectangle3:setStrokeColor("white");
    obj.rectangle3:setStrokeSize(1);
    obj.rectangle3:setName("rectangle3");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout2);
    obj.label5:setLeft(211);
    obj.label5:setTop(0);
    obj.label5:setWidth(30);
    obj.label5:setHeight(25);
    obj.label5:setField("grimorio");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setName("label5");
    obj.label5:setFontColor("white");
    obj.label5:setTextTrimming("none");
    obj.label5:setWordWrap(false);
    obj.label5:setAutoSize(true);

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.layout2);
    obj.dataLink1:setFields({'conhecidas0', 'conhecidas1', 'conhecidas2', 'conhecidas3', 'conhecidas4', 'conhecidas5', 'conhecidas6', 'conhecidas7', 'conhecidas8', 'conhecidas9'});
    obj.dataLink1:setName("dataLink1");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout2);
    obj.layout3:setLeft(0);
    obj.layout3:setTop(25);
    obj.layout3:setWidth(350);
    obj.layout3:setHeight(25);
    obj.layout3:setName("layout3");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout3);
    obj.label6:setVertTextAlign("center");
    obj.label6:setLeft(0);
    obj.label6:setTop(3);
    obj.label6:setWidth(25);
    obj.label6:setHeight(22);
    obj.label6:setText("NÍVEL");
    obj.label6:setName("label6");
    obj.label6:setFontColor("white");
    obj.label6:setTextTrimming("none");
    obj.label6:setWordWrap(false);
    obj.label6:setAutoSize(true);

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout3);
    obj.label7:setVertTextAlign("center");
    obj.label7:setLeft(40);
    obj.label7:setTop(3);
    obj.label7:setWidth(25);
    obj.label7:setHeight(22);
    obj.label7:setText("TOTAL");
    obj.label7:setName("label7");
    obj.label7:setFontColor("white");
    obj.label7:setTextTrimming("none");
    obj.label7:setWordWrap(false);
    obj.label7:setAutoSize(true);

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout3);
    obj.label8:setVertTextAlign("center");
    obj.label8:setLeft(85);
    obj.label8:setTop(3);
    obj.label8:setWidth(25);
    obj.label8:setHeight(22);
    obj.label8:setText("BASE");
    obj.label8:setName("label8");
    obj.label8:setFontColor("white");
    obj.label8:setTextTrimming("none");
    obj.label8:setWordWrap(false);
    obj.label8:setAutoSize(true);

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout3);
    obj.label9:setVertTextAlign("center");
    obj.label9:setLeft(125);
    obj.label9:setTop(3);
    obj.label9:setWidth(25);
    obj.label9:setHeight(22);
    obj.label9:setText("BONUS");
    obj.label9:setName("label9");
    obj.label9:setFontColor("white");
    obj.label9:setTextTrimming("none");
    obj.label9:setWordWrap(false);
    obj.label9:setAutoSize(true);

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout3);
    obj.label10:setVertTextAlign("center");
    obj.label10:setLeft(180);
    obj.label10:setTop(3);
    obj.label10:setWidth(25);
    obj.label10:setHeight(22);
    obj.label10:setText("CONHECIDAS");
    obj.label10:setName("label10");
    obj.label10:setFontColor("white");
    obj.label10:setTextTrimming("none");
    obj.label10:setWordWrap(false);
    obj.label10:setAutoSize(true);

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout3);
    obj.label11:setVertTextAlign("center");
    obj.label11:setLeft(270);
    obj.label11:setTop(3);
    obj.label11:setWidth(25);
    obj.label11:setHeight(22);
    obj.label11:setText("CD");
    obj.label11:setName("label11");
    obj.label11:setFontColor("white");
    obj.label11:setTextTrimming("none");
    obj.label11:setWordWrap(false);
    obj.label11:setAutoSize(true);

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout2);
    obj.layout4:setLeft(0);
    obj.layout4:setTop(55);
    obj.layout4:setWidth(350);
    obj.layout4:setHeight(25);
    obj.layout4:setName("layout4");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout4);
    obj.label12:setVertTextAlign("center");
    obj.label12:setLeft(10);
    obj.label12:setTop(3);
    obj.label12:setWidth(25);
    obj.label12:setHeight(22);
    obj.label12:setText("0");
    obj.label12:setName("label12");
    obj.label12:setFontColor("white");
    obj.label12:setTextTrimming("none");
    obj.label12:setWordWrap(false);
    obj.label12:setAutoSize(true);

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout4);
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setLeft(45);
    obj.edit6:setTop(0);
    obj.edit6:setWidth(30);
    obj.edit6:setHeight(25);
    obj.edit6:setField("total0");
    obj.edit6:setType("number");
    obj.edit6:setName("edit6");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout4);
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setLeft(85);
    obj.edit7:setTop(0);
    obj.edit7:setWidth(30);
    obj.edit7:setHeight(25);
    obj.edit7:setField("base0");
    obj.edit7:setType("number");
    obj.edit7:setName("edit7");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout4);
    obj.label13:setVertTextAlign("center");
    obj.label13:setLeft(140);
    obj.label13:setTop(0);
    obj.label13:setWidth(30);
    obj.label13:setHeight(25);
    obj.label13:setField("bonus0");
    obj.label13:setName("label13");
    obj.label13:setFontColor("white");
    obj.label13:setTextTrimming("none");
    obj.label13:setWordWrap(false);
    obj.label13:setAutoSize(true);

    obj.dataLink2 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.layout4);
    obj.dataLink2:setFields({'base0', 'bonus0'});
    obj.dataLink2:setName("dataLink2");

    obj.dataLink3 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.layout4);
    obj.dataLink3:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink3:setName("dataLink3");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout4);
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setLeft(210);
    obj.edit8:setTop(0);
    obj.edit8:setWidth(30);
    obj.edit8:setHeight(25);
    obj.edit8:setField("conhecidas0");
    obj.edit8:setType("number");
    obj.edit8:setName("edit8");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout4);
    obj.label14:setVertTextAlign("center");
    obj.label14:setLeft(270);
    obj.label14:setTop(0);
    obj.label14:setWidth(30);
    obj.label14:setHeight(25);
    obj.label14:setField("cd0");
    obj.label14:setName("label14");
    obj.label14:setFontColor("white");
    obj.label14:setTextTrimming("none");
    obj.label14:setWordWrap(false);
    obj.label14:setAutoSize(true);

    obj.dataLink4 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.layout4);
    obj.dataLink4:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink4:setName("dataLink4");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout2);
    obj.layout5:setLeft(0);
    obj.layout5:setTop(85);
    obj.layout5:setWidth(350);
    obj.layout5:setHeight(25);
    obj.layout5:setName("layout5");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout5);
    obj.label15:setVertTextAlign("center");
    obj.label15:setLeft(10);
    obj.label15:setTop(3);
    obj.label15:setWidth(25);
    obj.label15:setHeight(22);
    obj.label15:setText("1");
    obj.label15:setName("label15");
    obj.label15:setFontColor("white");
    obj.label15:setTextTrimming("none");
    obj.label15:setWordWrap(false);
    obj.label15:setAutoSize(true);

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout5);
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setLeft(45);
    obj.edit9:setTop(0);
    obj.edit9:setWidth(30);
    obj.edit9:setHeight(25);
    obj.edit9:setField("total1");
    obj.edit9:setType("number");
    obj.edit9:setName("edit9");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout5);
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setLeft(85);
    obj.edit10:setTop(0);
    obj.edit10:setWidth(30);
    obj.edit10:setHeight(25);
    obj.edit10:setField("base1");
    obj.edit10:setType("number");
    obj.edit10:setName("edit10");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout5);
    obj.label16:setVertTextAlign("center");
    obj.label16:setLeft(140);
    obj.label16:setTop(0);
    obj.label16:setWidth(30);
    obj.label16:setHeight(25);
    obj.label16:setField("bonus1");
    obj.label16:setName("label16");
    obj.label16:setFontColor("white");
    obj.label16:setTextTrimming("none");
    obj.label16:setWordWrap(false);
    obj.label16:setAutoSize(true);

    obj.dataLink5 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.layout5);
    obj.dataLink5:setFields({'base1', 'bonus1'});
    obj.dataLink5:setName("dataLink5");

    obj.dataLink6 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.layout5);
    obj.dataLink6:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink6:setName("dataLink6");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout5);
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setLeft(210);
    obj.edit11:setTop(0);
    obj.edit11:setWidth(30);
    obj.edit11:setHeight(25);
    obj.edit11:setField("conhecidas1");
    obj.edit11:setType("number");
    obj.edit11:setName("edit11");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout5);
    obj.label17:setVertTextAlign("center");
    obj.label17:setLeft(270);
    obj.label17:setTop(0);
    obj.label17:setWidth(30);
    obj.label17:setHeight(25);
    obj.label17:setField("cd1");
    obj.label17:setName("label17");
    obj.label17:setFontColor("white");
    obj.label17:setTextTrimming("none");
    obj.label17:setWordWrap(false);
    obj.label17:setAutoSize(true);

    obj.dataLink7 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.layout5);
    obj.dataLink7:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink7:setName("dataLink7");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.layout2);
    obj.layout6:setLeft(0);
    obj.layout6:setTop(115);
    obj.layout6:setWidth(350);
    obj.layout6:setHeight(25);
    obj.layout6:setName("layout6");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout6);
    obj.label18:setVertTextAlign("center");
    obj.label18:setLeft(10);
    obj.label18:setTop(3);
    obj.label18:setWidth(25);
    obj.label18:setHeight(22);
    obj.label18:setText("2");
    obj.label18:setName("label18");
    obj.label18:setFontColor("white");
    obj.label18:setTextTrimming("none");
    obj.label18:setWordWrap(false);
    obj.label18:setAutoSize(true);

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout6);
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setLeft(45);
    obj.edit12:setTop(0);
    obj.edit12:setWidth(30);
    obj.edit12:setHeight(25);
    obj.edit12:setField("total2");
    obj.edit12:setType("number");
    obj.edit12:setName("edit12");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout6);
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setLeft(85);
    obj.edit13:setTop(0);
    obj.edit13:setWidth(30);
    obj.edit13:setHeight(25);
    obj.edit13:setField("base2");
    obj.edit13:setType("number");
    obj.edit13:setName("edit13");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout6);
    obj.label19:setVertTextAlign("center");
    obj.label19:setLeft(140);
    obj.label19:setTop(0);
    obj.label19:setWidth(30);
    obj.label19:setHeight(25);
    obj.label19:setField("bonus2");
    obj.label19:setName("label19");
    obj.label19:setFontColor("white");
    obj.label19:setTextTrimming("none");
    obj.label19:setWordWrap(false);
    obj.label19:setAutoSize(true);

    obj.dataLink8 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.layout6);
    obj.dataLink8:setFields({'base2', 'bonus2'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.layout6);
    obj.dataLink9:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink9:setName("dataLink9");

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout6);
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setLeft(210);
    obj.edit14:setTop(0);
    obj.edit14:setWidth(30);
    obj.edit14:setHeight(25);
    obj.edit14:setField("conhecidas2");
    obj.edit14:setType("number");
    obj.edit14:setName("edit14");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout6);
    obj.label20:setVertTextAlign("center");
    obj.label20:setLeft(270);
    obj.label20:setTop(0);
    obj.label20:setWidth(30);
    obj.label20:setHeight(25);
    obj.label20:setField("cd2");
    obj.label20:setName("label20");
    obj.label20:setFontColor("white");
    obj.label20:setTextTrimming("none");
    obj.label20:setWordWrap(false);
    obj.label20:setAutoSize(true);

    obj.dataLink10 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj.layout6);
    obj.dataLink10:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink10:setName("dataLink10");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout2);
    obj.layout7:setLeft(0);
    obj.layout7:setTop(145);
    obj.layout7:setWidth(350);
    obj.layout7:setHeight(25);
    obj.layout7:setName("layout7");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout7);
    obj.label21:setVertTextAlign("center");
    obj.label21:setLeft(10);
    obj.label21:setTop(3);
    obj.label21:setWidth(25);
    obj.label21:setHeight(22);
    obj.label21:setText("3");
    obj.label21:setName("label21");
    obj.label21:setFontColor("white");
    obj.label21:setTextTrimming("none");
    obj.label21:setWordWrap(false);
    obj.label21:setAutoSize(true);

    obj.edit15 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout7);
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setLeft(45);
    obj.edit15:setTop(0);
    obj.edit15:setWidth(30);
    obj.edit15:setHeight(25);
    obj.edit15:setField("total3");
    obj.edit15:setType("number");
    obj.edit15:setName("edit15");

    obj.edit16 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout7);
    obj.edit16:setVertTextAlign("center");
    obj.edit16:setLeft(85);
    obj.edit16:setTop(0);
    obj.edit16:setWidth(30);
    obj.edit16:setHeight(25);
    obj.edit16:setField("base3");
    obj.edit16:setType("number");
    obj.edit16:setName("edit16");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout7);
    obj.label22:setVertTextAlign("center");
    obj.label22:setLeft(140);
    obj.label22:setTop(0);
    obj.label22:setWidth(30);
    obj.label22:setHeight(25);
    obj.label22:setField("bonus3");
    obj.label22:setName("label22");
    obj.label22:setFontColor("white");
    obj.label22:setTextTrimming("none");
    obj.label22:setWordWrap(false);
    obj.label22:setAutoSize(true);

    obj.dataLink11 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink11:setParent(obj.layout7);
    obj.dataLink11:setFields({'base3', 'bonus3'});
    obj.dataLink11:setName("dataLink11");

    obj.dataLink12 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink12:setParent(obj.layout7);
    obj.dataLink12:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink12:setName("dataLink12");

    obj.edit17 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout7);
    obj.edit17:setVertTextAlign("center");
    obj.edit17:setLeft(210);
    obj.edit17:setTop(0);
    obj.edit17:setWidth(30);
    obj.edit17:setHeight(25);
    obj.edit17:setField("conhecidas3");
    obj.edit17:setType("number");
    obj.edit17:setName("edit17");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout7);
    obj.label23:setVertTextAlign("center");
    obj.label23:setLeft(270);
    obj.label23:setTop(0);
    obj.label23:setWidth(30);
    obj.label23:setHeight(25);
    obj.label23:setField("cd3");
    obj.label23:setName("label23");
    obj.label23:setFontColor("white");
    obj.label23:setTextTrimming("none");
    obj.label23:setWordWrap(false);
    obj.label23:setAutoSize(true);

    obj.dataLink13 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink13:setParent(obj.layout7);
    obj.dataLink13:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink13:setName("dataLink13");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.layout2);
    obj.layout8:setLeft(0);
    obj.layout8:setTop(175);
    obj.layout8:setWidth(350);
    obj.layout8:setHeight(25);
    obj.layout8:setName("layout8");

    obj.label24 = gui.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout8);
    obj.label24:setVertTextAlign("center");
    obj.label24:setLeft(10);
    obj.label24:setTop(3);
    obj.label24:setWidth(25);
    obj.label24:setHeight(22);
    obj.label24:setText("4");
    obj.label24:setName("label24");
    obj.label24:setFontColor("white");
    obj.label24:setTextTrimming("none");
    obj.label24:setWordWrap(false);
    obj.label24:setAutoSize(true);

    obj.edit18 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout8);
    obj.edit18:setVertTextAlign("center");
    obj.edit18:setLeft(45);
    obj.edit18:setTop(0);
    obj.edit18:setWidth(30);
    obj.edit18:setHeight(25);
    obj.edit18:setField("total4");
    obj.edit18:setType("number");
    obj.edit18:setName("edit18");

    obj.edit19 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout8);
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setLeft(85);
    obj.edit19:setTop(0);
    obj.edit19:setWidth(30);
    obj.edit19:setHeight(25);
    obj.edit19:setField("base4");
    obj.edit19:setType("number");
    obj.edit19:setName("edit19");

    obj.label25 = gui.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout8);
    obj.label25:setVertTextAlign("center");
    obj.label25:setLeft(140);
    obj.label25:setTop(0);
    obj.label25:setWidth(30);
    obj.label25:setHeight(25);
    obj.label25:setField("bonus4");
    obj.label25:setName("label25");
    obj.label25:setFontColor("white");
    obj.label25:setTextTrimming("none");
    obj.label25:setWordWrap(false);
    obj.label25:setAutoSize(true);

    obj.dataLink14 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink14:setParent(obj.layout8);
    obj.dataLink14:setFields({'base4', 'bonus4'});
    obj.dataLink14:setName("dataLink14");

    obj.dataLink15 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink15:setParent(obj.layout8);
    obj.dataLink15:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink15:setName("dataLink15");

    obj.edit20 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout8);
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setLeft(210);
    obj.edit20:setTop(0);
    obj.edit20:setWidth(30);
    obj.edit20:setHeight(25);
    obj.edit20:setField("conhecidas4");
    obj.edit20:setType("number");
    obj.edit20:setName("edit20");

    obj.label26 = gui.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout8);
    obj.label26:setVertTextAlign("center");
    obj.label26:setLeft(270);
    obj.label26:setTop(0);
    obj.label26:setWidth(30);
    obj.label26:setHeight(25);
    obj.label26:setField("cd4");
    obj.label26:setName("label26");
    obj.label26:setFontColor("white");
    obj.label26:setTextTrimming("none");
    obj.label26:setWordWrap(false);
    obj.label26:setAutoSize(true);

    obj.dataLink16 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink16:setParent(obj.layout8);
    obj.dataLink16:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink16:setName("dataLink16");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout2);
    obj.layout9:setLeft(0);
    obj.layout9:setTop(205);
    obj.layout9:setWidth(350);
    obj.layout9:setHeight(25);
    obj.layout9:setName("layout9");

    obj.label27 = gui.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout9);
    obj.label27:setVertTextAlign("center");
    obj.label27:setLeft(10);
    obj.label27:setTop(3);
    obj.label27:setWidth(25);
    obj.label27:setHeight(22);
    obj.label27:setText("5");
    obj.label27:setName("label27");
    obj.label27:setFontColor("white");
    obj.label27:setTextTrimming("none");
    obj.label27:setWordWrap(false);
    obj.label27:setAutoSize(true);

    obj.edit21 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout9);
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setLeft(45);
    obj.edit21:setTop(0);
    obj.edit21:setWidth(30);
    obj.edit21:setHeight(25);
    obj.edit21:setField("total5");
    obj.edit21:setType("number");
    obj.edit21:setName("edit21");

    obj.edit22 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout9);
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setLeft(85);
    obj.edit22:setTop(0);
    obj.edit22:setWidth(30);
    obj.edit22:setHeight(25);
    obj.edit22:setField("base5");
    obj.edit22:setType("number");
    obj.edit22:setName("edit22");

    obj.label28 = gui.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout9);
    obj.label28:setVertTextAlign("center");
    obj.label28:setLeft(140);
    obj.label28:setTop(0);
    obj.label28:setWidth(30);
    obj.label28:setHeight(25);
    obj.label28:setField("bonus5");
    obj.label28:setName("label28");
    obj.label28:setFontColor("white");
    obj.label28:setTextTrimming("none");
    obj.label28:setWordWrap(false);
    obj.label28:setAutoSize(true);

    obj.dataLink17 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink17:setParent(obj.layout9);
    obj.dataLink17:setFields({'base5', 'bonus5'});
    obj.dataLink17:setName("dataLink17");

    obj.dataLink18 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink18:setParent(obj.layout9);
    obj.dataLink18:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink18:setName("dataLink18");

    obj.edit23 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.layout9);
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setLeft(210);
    obj.edit23:setTop(0);
    obj.edit23:setWidth(30);
    obj.edit23:setHeight(25);
    obj.edit23:setField("conhecidas5");
    obj.edit23:setType("number");
    obj.edit23:setName("edit23");

    obj.label29 = gui.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout9);
    obj.label29:setVertTextAlign("center");
    obj.label29:setLeft(270);
    obj.label29:setTop(0);
    obj.label29:setWidth(30);
    obj.label29:setHeight(25);
    obj.label29:setField("cd5");
    obj.label29:setName("label29");
    obj.label29:setFontColor("white");
    obj.label29:setTextTrimming("none");
    obj.label29:setWordWrap(false);
    obj.label29:setAutoSize(true);

    obj.dataLink19 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink19:setParent(obj.layout9);
    obj.dataLink19:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink19:setName("dataLink19");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.layout2);
    obj.layout10:setLeft(0);
    obj.layout10:setTop(235);
    obj.layout10:setWidth(350);
    obj.layout10:setHeight(25);
    obj.layout10:setName("layout10");

    obj.label30 = gui.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout10);
    obj.label30:setVertTextAlign("center");
    obj.label30:setLeft(10);
    obj.label30:setTop(3);
    obj.label30:setWidth(25);
    obj.label30:setHeight(22);
    obj.label30:setText("6");
    obj.label30:setName("label30");
    obj.label30:setFontColor("white");
    obj.label30:setTextTrimming("none");
    obj.label30:setWordWrap(false);
    obj.label30:setAutoSize(true);

    obj.edit24 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout10);
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setLeft(45);
    obj.edit24:setTop(0);
    obj.edit24:setWidth(30);
    obj.edit24:setHeight(25);
    obj.edit24:setField("total6");
    obj.edit24:setType("number");
    obj.edit24:setName("edit24");

    obj.edit25 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout10);
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setLeft(85);
    obj.edit25:setTop(0);
    obj.edit25:setWidth(30);
    obj.edit25:setHeight(25);
    obj.edit25:setField("base6");
    obj.edit25:setType("number");
    obj.edit25:setName("edit25");

    obj.label31 = gui.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout10);
    obj.label31:setVertTextAlign("center");
    obj.label31:setLeft(140);
    obj.label31:setTop(0);
    obj.label31:setWidth(30);
    obj.label31:setHeight(25);
    obj.label31:setField("bonus6");
    obj.label31:setName("label31");
    obj.label31:setFontColor("white");
    obj.label31:setTextTrimming("none");
    obj.label31:setWordWrap(false);
    obj.label31:setAutoSize(true);

    obj.dataLink20 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink20:setParent(obj.layout10);
    obj.dataLink20:setFields({'base6', 'bonus6'});
    obj.dataLink20:setName("dataLink20");

    obj.dataLink21 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink21:setParent(obj.layout10);
    obj.dataLink21:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink21:setName("dataLink21");

    obj.edit26 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout10);
    obj.edit26:setVertTextAlign("center");
    obj.edit26:setLeft(210);
    obj.edit26:setTop(0);
    obj.edit26:setWidth(30);
    obj.edit26:setHeight(25);
    obj.edit26:setField("conhecidas6");
    obj.edit26:setType("number");
    obj.edit26:setName("edit26");

    obj.label32 = gui.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout10);
    obj.label32:setVertTextAlign("center");
    obj.label32:setLeft(270);
    obj.label32:setTop(0);
    obj.label32:setWidth(30);
    obj.label32:setHeight(25);
    obj.label32:setField("cd6");
    obj.label32:setName("label32");
    obj.label32:setFontColor("white");
    obj.label32:setTextTrimming("none");
    obj.label32:setWordWrap(false);
    obj.label32:setAutoSize(true);

    obj.dataLink22 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink22:setParent(obj.layout10);
    obj.dataLink22:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink22:setName("dataLink22");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout2);
    obj.layout11:setLeft(0);
    obj.layout11:setTop(265);
    obj.layout11:setWidth(350);
    obj.layout11:setHeight(25);
    obj.layout11:setName("layout11");

    obj.label33 = gui.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout11);
    obj.label33:setVertTextAlign("center");
    obj.label33:setLeft(10);
    obj.label33:setTop(3);
    obj.label33:setWidth(25);
    obj.label33:setHeight(22);
    obj.label33:setText("7");
    obj.label33:setName("label33");
    obj.label33:setFontColor("white");
    obj.label33:setTextTrimming("none");
    obj.label33:setWordWrap(false);
    obj.label33:setAutoSize(true);

    obj.edit27 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj.layout11);
    obj.edit27:setVertTextAlign("center");
    obj.edit27:setLeft(45);
    obj.edit27:setTop(0);
    obj.edit27:setWidth(30);
    obj.edit27:setHeight(25);
    obj.edit27:setField("total7");
    obj.edit27:setType("number");
    obj.edit27:setName("edit27");

    obj.edit28 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj.layout11);
    obj.edit28:setVertTextAlign("center");
    obj.edit28:setLeft(85);
    obj.edit28:setTop(0);
    obj.edit28:setWidth(30);
    obj.edit28:setHeight(25);
    obj.edit28:setField("base7");
    obj.edit28:setType("number");
    obj.edit28:setName("edit28");

    obj.label34 = gui.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout11);
    obj.label34:setVertTextAlign("center");
    obj.label34:setLeft(140);
    obj.label34:setTop(0);
    obj.label34:setWidth(30);
    obj.label34:setHeight(25);
    obj.label34:setField("bonus7");
    obj.label34:setName("label34");
    obj.label34:setFontColor("white");
    obj.label34:setTextTrimming("none");
    obj.label34:setWordWrap(false);
    obj.label34:setAutoSize(true);

    obj.dataLink23 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink23:setParent(obj.layout11);
    obj.dataLink23:setFields({'base7', 'bonus7'});
    obj.dataLink23:setName("dataLink23");

    obj.dataLink24 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink24:setParent(obj.layout11);
    obj.dataLink24:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink24:setName("dataLink24");

    obj.edit29 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj.layout11);
    obj.edit29:setVertTextAlign("center");
    obj.edit29:setLeft(210);
    obj.edit29:setTop(0);
    obj.edit29:setWidth(30);
    obj.edit29:setHeight(25);
    obj.edit29:setField("conhecidas7");
    obj.edit29:setType("number");
    obj.edit29:setName("edit29");

    obj.label35 = gui.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout11);
    obj.label35:setVertTextAlign("center");
    obj.label35:setLeft(270);
    obj.label35:setTop(0);
    obj.label35:setWidth(30);
    obj.label35:setHeight(25);
    obj.label35:setField("cd7");
    obj.label35:setName("label35");
    obj.label35:setFontColor("white");
    obj.label35:setTextTrimming("none");
    obj.label35:setWordWrap(false);
    obj.label35:setAutoSize(true);

    obj.dataLink25 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink25:setParent(obj.layout11);
    obj.dataLink25:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink25:setName("dataLink25");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.layout2);
    obj.layout12:setLeft(0);
    obj.layout12:setTop(295);
    obj.layout12:setWidth(350);
    obj.layout12:setHeight(25);
    obj.layout12:setName("layout12");

    obj.label36 = gui.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout12);
    obj.label36:setVertTextAlign("center");
    obj.label36:setLeft(10);
    obj.label36:setTop(3);
    obj.label36:setWidth(25);
    obj.label36:setHeight(22);
    obj.label36:setText("8");
    obj.label36:setName("label36");
    obj.label36:setFontColor("white");
    obj.label36:setTextTrimming("none");
    obj.label36:setWordWrap(false);
    obj.label36:setAutoSize(true);

    obj.edit30 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj.layout12);
    obj.edit30:setVertTextAlign("center");
    obj.edit30:setLeft(45);
    obj.edit30:setTop(0);
    obj.edit30:setWidth(30);
    obj.edit30:setHeight(25);
    obj.edit30:setField("total8");
    obj.edit30:setType("number");
    obj.edit30:setName("edit30");

    obj.edit31 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj.layout12);
    obj.edit31:setVertTextAlign("center");
    obj.edit31:setLeft(85);
    obj.edit31:setTop(0);
    obj.edit31:setWidth(30);
    obj.edit31:setHeight(25);
    obj.edit31:setField("base8");
    obj.edit31:setType("number");
    obj.edit31:setName("edit31");

    obj.label37 = gui.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout12);
    obj.label37:setVertTextAlign("center");
    obj.label37:setLeft(140);
    obj.label37:setTop(0);
    obj.label37:setWidth(30);
    obj.label37:setHeight(25);
    obj.label37:setField("bonus8");
    obj.label37:setName("label37");
    obj.label37:setFontColor("white");
    obj.label37:setTextTrimming("none");
    obj.label37:setWordWrap(false);
    obj.label37:setAutoSize(true);

    obj.dataLink26 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink26:setParent(obj.layout12);
    obj.dataLink26:setFields({'base8', 'bonus8'});
    obj.dataLink26:setName("dataLink26");

    obj.dataLink27 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink27:setParent(obj.layout12);
    obj.dataLink27:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink27:setName("dataLink27");

    obj.edit32 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj.layout12);
    obj.edit32:setVertTextAlign("center");
    obj.edit32:setLeft(210);
    obj.edit32:setTop(0);
    obj.edit32:setWidth(30);
    obj.edit32:setHeight(25);
    obj.edit32:setField("conhecidas8");
    obj.edit32:setType("number");
    obj.edit32:setName("edit32");

    obj.label38 = gui.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout12);
    obj.label38:setVertTextAlign("center");
    obj.label38:setLeft(270);
    obj.label38:setTop(0);
    obj.label38:setWidth(30);
    obj.label38:setHeight(25);
    obj.label38:setField("cd8");
    obj.label38:setName("label38");
    obj.label38:setFontColor("white");
    obj.label38:setTextTrimming("none");
    obj.label38:setWordWrap(false);
    obj.label38:setAutoSize(true);

    obj.dataLink28 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink28:setParent(obj.layout12);
    obj.dataLink28:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink28:setName("dataLink28");

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.layout2);
    obj.layout13:setLeft(0);
    obj.layout13:setTop(325);
    obj.layout13:setWidth(350);
    obj.layout13:setHeight(25);
    obj.layout13:setName("layout13");

    obj.label39 = gui.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout13);
    obj.label39:setVertTextAlign("center");
    obj.label39:setLeft(10);
    obj.label39:setTop(3);
    obj.label39:setWidth(25);
    obj.label39:setHeight(22);
    obj.label39:setText("9");
    obj.label39:setName("label39");
    obj.label39:setFontColor("white");
    obj.label39:setTextTrimming("none");
    obj.label39:setWordWrap(false);
    obj.label39:setAutoSize(true);

    obj.edit33 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj.layout13);
    obj.edit33:setVertTextAlign("center");
    obj.edit33:setLeft(45);
    obj.edit33:setTop(0);
    obj.edit33:setWidth(30);
    obj.edit33:setHeight(25);
    obj.edit33:setField("total9");
    obj.edit33:setType("number");
    obj.edit33:setName("edit33");

    obj.edit34 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj.layout13);
    obj.edit34:setVertTextAlign("center");
    obj.edit34:setLeft(85);
    obj.edit34:setTop(0);
    obj.edit34:setWidth(30);
    obj.edit34:setHeight(25);
    obj.edit34:setField("base9");
    obj.edit34:setType("number");
    obj.edit34:setName("edit34");

    obj.label40 = gui.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout13);
    obj.label40:setVertTextAlign("center");
    obj.label40:setLeft(140);
    obj.label40:setTop(0);
    obj.label40:setWidth(30);
    obj.label40:setHeight(25);
    obj.label40:setField("bonus9");
    obj.label40:setName("label40");
    obj.label40:setFontColor("white");
    obj.label40:setTextTrimming("none");
    obj.label40:setWordWrap(false);
    obj.label40:setAutoSize(true);

    obj.dataLink29 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink29:setParent(obj.layout13);
    obj.dataLink29:setFields({'base9', 'bonus9'});
    obj.dataLink29:setName("dataLink29");

    obj.dataLink30 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink30:setParent(obj.layout13);
    obj.dataLink30:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink30:setName("dataLink30");

    obj.edit35 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj.layout13);
    obj.edit35:setVertTextAlign("center");
    obj.edit35:setLeft(210);
    obj.edit35:setTop(0);
    obj.edit35:setWidth(30);
    obj.edit35:setHeight(25);
    obj.edit35:setField("conhecidas9");
    obj.edit35:setType("number");
    obj.edit35:setName("edit35");

    obj.label41 = gui.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout13);
    obj.label41:setVertTextAlign("center");
    obj.label41:setLeft(270);
    obj.label41:setTop(0);
    obj.label41:setWidth(30);
    obj.label41:setHeight(25);
    obj.label41:setField("cd9");
    obj.label41:setName("label41");
    obj.label41:setFontColor("white");
    obj.label41:setTextTrimming("none");
    obj.label41:setWordWrap(false);
    obj.label41:setAutoSize(true);

    obj.dataLink31 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink31:setParent(obj.layout13);
    obj.dataLink31:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink31:setName("dataLink31");

    obj.layout14 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layoutMagias);
    obj.layout14:setLeft(50);
    obj.layout14:setTop(360);
    obj.layout14:setWidth(280);
    obj.layout14:setHeight(180);
    obj.layout14:setName("layout14");

    obj.label42 = gui.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout14);
    obj.label42:setVertTextAlign("center");
    obj.label42:setLeft(0);
    obj.label42:setTop(0);
    obj.label42:setWidth(100);
    obj.label42:setHeight(20);
    obj.label42:setText("Magias Nível 6");
    obj.label42:setName("label42");
    obj.label42:setFontColor("white");
    obj.label42:setTextTrimming("none");
    obj.label42:setWordWrap(false);
    obj.label42:setAutoSize(true);

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.layout14);
    obj.textEditor1:setTop(20);
    obj.textEditor1:setWidth(280);
    obj.textEditor1:setHeight(160);
    obj.textEditor1:setFontSize(12);
    obj.textEditor1:setField("circulo6");
    obj.textEditor1:setName("textEditor1");

    obj.layout15 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.layoutMagias);
    obj.layout15:setLeft(340);
    obj.layout15:setTop(0);
    obj.layout15:setWidth(280);
    obj.layout15:setHeight(180);
    obj.layout15:setName("layout15");

    obj.label43 = gui.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout15);
    obj.label43:setVertTextAlign("center");
    obj.label43:setLeft(0);
    obj.label43:setTop(0);
    obj.label43:setWidth(100);
    obj.label43:setHeight(20);
    obj.label43:setText("Magias Nível 0");
    obj.label43:setName("label43");
    obj.label43:setFontColor("white");
    obj.label43:setTextTrimming("none");
    obj.label43:setWordWrap(false);
    obj.label43:setAutoSize(true);

    obj.textEditor2 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.layout15);
    obj.textEditor2:setTop(20);
    obj.textEditor2:setWidth(280);
    obj.textEditor2:setHeight(160);
    obj.textEditor2:setFontSize(12);
    obj.textEditor2:setField("circulo0");
    obj.textEditor2:setName("textEditor2");

    obj.layout16 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layoutMagias);
    obj.layout16:setLeft(340);
    obj.layout16:setTop(180);
    obj.layout16:setWidth(280);
    obj.layout16:setHeight(180);
    obj.layout16:setName("layout16");

    obj.label44 = gui.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout16);
    obj.label44:setVertTextAlign("center");
    obj.label44:setLeft(0);
    obj.label44:setTop(0);
    obj.label44:setWidth(100);
    obj.label44:setHeight(20);
    obj.label44:setText("Magias Nível 3");
    obj.label44:setName("label44");
    obj.label44:setFontColor("white");
    obj.label44:setTextTrimming("none");
    obj.label44:setWordWrap(false);
    obj.label44:setAutoSize(true);

    obj.textEditor3 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.layout16);
    obj.textEditor3:setTop(20);
    obj.textEditor3:setWidth(280);
    obj.textEditor3:setHeight(160);
    obj.textEditor3:setFontSize(12);
    obj.textEditor3:setField("circulo3");
    obj.textEditor3:setName("textEditor3");

    obj.layout17 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layoutMagias);
    obj.layout17:setLeft(340);
    obj.layout17:setTop(360);
    obj.layout17:setWidth(280);
    obj.layout17:setHeight(180);
    obj.layout17:setName("layout17");

    obj.label45 = gui.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout17);
    obj.label45:setVertTextAlign("center");
    obj.label45:setLeft(0);
    obj.label45:setTop(0);
    obj.label45:setWidth(100);
    obj.label45:setHeight(20);
    obj.label45:setText("Magias Nível 7");
    obj.label45:setName("label45");
    obj.label45:setFontColor("white");
    obj.label45:setTextTrimming("none");
    obj.label45:setWordWrap(false);
    obj.label45:setAutoSize(true);

    obj.textEditor4 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor4:setParent(obj.layout17);
    obj.textEditor4:setTop(20);
    obj.textEditor4:setWidth(280);
    obj.textEditor4:setHeight(160);
    obj.textEditor4:setFontSize(12);
    obj.textEditor4:setField("circulo7");
    obj.textEditor4:setName("textEditor4");

    obj.layout18 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.layoutMagias);
    obj.layout18:setLeft(630);
    obj.layout18:setTop(0);
    obj.layout18:setWidth(280);
    obj.layout18:setHeight(180);
    obj.layout18:setName("layout18");

    obj.label46 = gui.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout18);
    obj.label46:setVertTextAlign("center");
    obj.label46:setLeft(0);
    obj.label46:setTop(0);
    obj.label46:setWidth(100);
    obj.label46:setHeight(20);
    obj.label46:setText("Magias Nível 1");
    obj.label46:setName("label46");
    obj.label46:setFontColor("white");
    obj.label46:setTextTrimming("none");
    obj.label46:setWordWrap(false);
    obj.label46:setAutoSize(true);

    obj.textEditor5 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor5:setParent(obj.layout18);
    obj.textEditor5:setTop(20);
    obj.textEditor5:setWidth(280);
    obj.textEditor5:setHeight(160);
    obj.textEditor5:setFontSize(12);
    obj.textEditor5:setField("circulo1");
    obj.textEditor5:setName("textEditor5");

    obj.layout19 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layoutMagias);
    obj.layout19:setLeft(630);
    obj.layout19:setTop(180);
    obj.layout19:setWidth(280);
    obj.layout19:setHeight(180);
    obj.layout19:setName("layout19");

    obj.label47 = gui.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout19);
    obj.label47:setVertTextAlign("center");
    obj.label47:setLeft(0);
    obj.label47:setTop(0);
    obj.label47:setWidth(100);
    obj.label47:setHeight(20);
    obj.label47:setText("Magias Nível 4");
    obj.label47:setName("label47");
    obj.label47:setFontColor("white");
    obj.label47:setTextTrimming("none");
    obj.label47:setWordWrap(false);
    obj.label47:setAutoSize(true);

    obj.textEditor6 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor6:setParent(obj.layout19);
    obj.textEditor6:setTop(20);
    obj.textEditor6:setWidth(280);
    obj.textEditor6:setHeight(160);
    obj.textEditor6:setFontSize(12);
    obj.textEditor6:setField("circulo4");
    obj.textEditor6:setName("textEditor6");

    obj.layout20 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.layoutMagias);
    obj.layout20:setLeft(630);
    obj.layout20:setTop(360);
    obj.layout20:setWidth(280);
    obj.layout20:setHeight(180);
    obj.layout20:setName("layout20");

    obj.label48 = gui.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout20);
    obj.label48:setVertTextAlign("center");
    obj.label48:setLeft(0);
    obj.label48:setTop(0);
    obj.label48:setWidth(100);
    obj.label48:setHeight(20);
    obj.label48:setText("Magias Nível 8");
    obj.label48:setName("label48");
    obj.label48:setFontColor("white");
    obj.label48:setTextTrimming("none");
    obj.label48:setWordWrap(false);
    obj.label48:setAutoSize(true);

    obj.textEditor7 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor7:setParent(obj.layout20);
    obj.textEditor7:setTop(20);
    obj.textEditor7:setWidth(280);
    obj.textEditor7:setHeight(160);
    obj.textEditor7:setFontSize(12);
    obj.textEditor7:setField("circulo8");
    obj.textEditor7:setName("textEditor7");

    obj.layout21 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layoutMagias);
    obj.layout21:setLeft(920);
    obj.layout21:setTop(0);
    obj.layout21:setWidth(280);
    obj.layout21:setHeight(180);
    obj.layout21:setName("layout21");

    obj.label49 = gui.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout21);
    obj.label49:setVertTextAlign("center");
    obj.label49:setLeft(0);
    obj.label49:setTop(0);
    obj.label49:setWidth(100);
    obj.label49:setHeight(20);
    obj.label49:setText("Magias Nível 2");
    obj.label49:setName("label49");
    obj.label49:setFontColor("white");
    obj.label49:setTextTrimming("none");
    obj.label49:setWordWrap(false);
    obj.label49:setAutoSize(true);

    obj.textEditor8 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor8:setParent(obj.layout21);
    obj.textEditor8:setTop(20);
    obj.textEditor8:setWidth(280);
    obj.textEditor8:setHeight(160);
    obj.textEditor8:setFontSize(12);
    obj.textEditor8:setField("circulo2");
    obj.textEditor8:setName("textEditor8");

    obj.layout22 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.layoutMagias);
    obj.layout22:setLeft(920);
    obj.layout22:setTop(180);
    obj.layout22:setWidth(280);
    obj.layout22:setHeight(180);
    obj.layout22:setName("layout22");

    obj.label50 = gui.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout22);
    obj.label50:setVertTextAlign("center");
    obj.label50:setLeft(0);
    obj.label50:setTop(0);
    obj.label50:setWidth(100);
    obj.label50:setHeight(20);
    obj.label50:setText("Magias Nível 5");
    obj.label50:setName("label50");
    obj.label50:setFontColor("white");
    obj.label50:setTextTrimming("none");
    obj.label50:setWordWrap(false);
    obj.label50:setAutoSize(true);

    obj.textEditor9 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor9:setParent(obj.layout22);
    obj.textEditor9:setTop(20);
    obj.textEditor9:setWidth(280);
    obj.textEditor9:setHeight(160);
    obj.textEditor9:setFontSize(12);
    obj.textEditor9:setField("circulo5");
    obj.textEditor9:setName("textEditor9");

    obj.layout23 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.layoutMagias);
    obj.layout23:setLeft(920);
    obj.layout23:setTop(360);
    obj.layout23:setWidth(280);
    obj.layout23:setHeight(180);
    obj.layout23:setName("layout23");

    obj.label51 = gui.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout23);
    obj.label51:setVertTextAlign("center");
    obj.label51:setLeft(0);
    obj.label51:setTop(0);
    obj.label51:setWidth(100);
    obj.label51:setHeight(20);
    obj.label51:setText("Magias Nível 9");
    obj.label51:setName("label51");
    obj.label51:setFontColor("white");
    obj.label51:setTextTrimming("none");
    obj.label51:setWordWrap(false);
    obj.label51:setAutoSize(true);

    obj.textEditor10 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor10:setParent(obj.layout23);
    obj.textEditor10:setTop(20);
    obj.textEditor10:setWidth(280);
    obj.textEditor10:setHeight(160);
    obj.textEditor10:setFontSize(12);
    obj.textEditor10:setField("circulo9");
    obj.textEditor10:setName("textEditor10");

    obj.layoutSignos = gui.fromHandle(_obj_newObject("layout"));
    obj.layoutSignos:setParent(obj.boxDetalhesDoItem);
    obj.layoutSignos:setLeft(0);
    obj.layoutSignos:setTop(50);
    obj.layoutSignos:setWidth(1200);
    obj.layoutSignos:setHeight(550);
    obj.layoutSignos:setName("layoutSignos");

    obj.label52 = gui.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.layoutSignos);
    obj.label52:setVertTextAlign("center");
    obj.label52:setLeft(130);
    obj.label52:setTop(0);
    obj.label52:setWidth(30);
    obj.label52:setHeight(25);
    obj.label52:setText("CD");
    obj.label52:setName("label52");
    obj.label52:setFontColor("white");
    obj.label52:setTextTrimming("none");
    obj.label52:setWordWrap(false);
    obj.label52:setAutoSize(true);

    obj.comboBox3 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.layoutSignos);
    obj.comboBox3:setLeft(160);
    obj.comboBox3:setTop(0);
    obj.comboBox3:setWidth(60);
    obj.comboBox3:setHeight(25);
    obj.comboBox3:setItems({'FOR', 'DES', 'CON', 'INT', 'SAB', 'CAR'});
    obj.comboBox3:setValues({'1', '2', '3', '4', '5', '6'});
    obj.comboBox3:setField("atributoCD");
    obj.comboBox3:setName("comboBox3");

    obj.dataLink32 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink32:setParent(obj.layoutSignos);
    obj.dataLink32:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink32:setName("dataLink32");

    obj.label53 = gui.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.layoutSignos);
    obj.label53:setVertTextAlign("center");
    obj.label53:setLeft(230);
    obj.label53:setTop(0);
    obj.label53:setWidth(100);
    obj.label53:setHeight(25);
    obj.label53:setField("cdSignos");
    obj.label53:setName("label53");
    obj.label53:setFontColor("white");
    obj.label53:setTextTrimming("none");
    obj.label53:setWordWrap(false);
    obj.label53:setAutoSize(true);

    obj.label54 = gui.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layoutSignos);
    obj.label54:setVertTextAlign("center");
    obj.label54:setLeft(20);
    obj.label54:setTop(30);
    obj.label54:setWidth(100);
    obj.label54:setHeight(25);
    obj.label54:setText("NOME");
    obj.label54:setName("label54");
    obj.label54:setFontColor("white");
    obj.label54:setTextTrimming("none");
    obj.label54:setWordWrap(false);
    obj.label54:setAutoSize(true);

    obj.label55 = gui.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layoutSignos);
    obj.label55:setVertTextAlign("center");
    obj.label55:setLeft(280);
    obj.label55:setTop(30);
    obj.label55:setWidth(50);
    obj.label55:setHeight(25);
    obj.label55:setText("NÍVEL");
    obj.label55:setName("label55");
    obj.label55:setFontColor("white");
    obj.label55:setTextTrimming("none");
    obj.label55:setWordWrap(false);
    obj.label55:setAutoSize(true);

    obj.layout24 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.layoutSignos);
    obj.layout24:setLeft(20);
    obj.layout24:setTop(50);
    obj.layout24:setWidth(350);
    obj.layout24:setHeight(300);
    obj.layout24:setName("layout24");

    obj.layout25 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.layout24);
    obj.layout25:setLeft(0);
    obj.layout25:setTop(0);
    obj.layout25:setWidth(350);
    obj.layout25:setHeight(25);
    obj.layout25:setName("layout25");

    obj.edit36 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj.layout25);
    obj.edit36:setVertTextAlign("center");
    obj.edit36:setLeft(0);
    obj.edit36:setTop(0);
    obj.edit36:setWidth(270);
    obj.edit36:setHeight(25);
    obj.edit36:setField("nomeSignos0");
    obj.edit36:setName("edit36");

    obj.edit37 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit37:setParent(obj.layout25);
    obj.edit37:setVertTextAlign("center");
    obj.edit37:setLeft(270);
    obj.edit37:setTop(0);
    obj.edit37:setWidth(30);
    obj.edit37:setHeight(25);
    obj.edit37:setField("nivelSignos0");
    obj.edit37:setName("edit37");

    obj.layout26 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.layout24);
    obj.layout26:setLeft(0);
    obj.layout26:setTop(25);
    obj.layout26:setWidth(350);
    obj.layout26:setHeight(25);
    obj.layout26:setName("layout26");

    obj.edit38 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit38:setParent(obj.layout26);
    obj.edit38:setVertTextAlign("center");
    obj.edit38:setLeft(0);
    obj.edit38:setTop(0);
    obj.edit38:setWidth(270);
    obj.edit38:setHeight(25);
    obj.edit38:setField("nomeSignos1");
    obj.edit38:setName("edit38");

    obj.edit39 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit39:setParent(obj.layout26);
    obj.edit39:setVertTextAlign("center");
    obj.edit39:setLeft(270);
    obj.edit39:setTop(0);
    obj.edit39:setWidth(30);
    obj.edit39:setHeight(25);
    obj.edit39:setField("nivelSignos1");
    obj.edit39:setName("edit39");

    obj.layout27 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.layout24);
    obj.layout27:setLeft(0);
    obj.layout27:setTop(50);
    obj.layout27:setWidth(350);
    obj.layout27:setHeight(25);
    obj.layout27:setName("layout27");

    obj.edit40 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit40:setParent(obj.layout27);
    obj.edit40:setVertTextAlign("center");
    obj.edit40:setLeft(0);
    obj.edit40:setTop(0);
    obj.edit40:setWidth(270);
    obj.edit40:setHeight(25);
    obj.edit40:setField("nomeSignos2");
    obj.edit40:setName("edit40");

    obj.edit41 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit41:setParent(obj.layout27);
    obj.edit41:setVertTextAlign("center");
    obj.edit41:setLeft(270);
    obj.edit41:setTop(0);
    obj.edit41:setWidth(30);
    obj.edit41:setHeight(25);
    obj.edit41:setField("nivelSignos2");
    obj.edit41:setName("edit41");

    obj.layout28 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.layout24);
    obj.layout28:setLeft(0);
    obj.layout28:setTop(75);
    obj.layout28:setWidth(350);
    obj.layout28:setHeight(25);
    obj.layout28:setName("layout28");

    obj.edit42 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit42:setParent(obj.layout28);
    obj.edit42:setVertTextAlign("center");
    obj.edit42:setLeft(0);
    obj.edit42:setTop(0);
    obj.edit42:setWidth(270);
    obj.edit42:setHeight(25);
    obj.edit42:setField("nomeSignos3");
    obj.edit42:setName("edit42");

    obj.edit43 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit43:setParent(obj.layout28);
    obj.edit43:setVertTextAlign("center");
    obj.edit43:setLeft(270);
    obj.edit43:setTop(0);
    obj.edit43:setWidth(30);
    obj.edit43:setHeight(25);
    obj.edit43:setField("nivelSignos3");
    obj.edit43:setName("edit43");

    obj.layout29 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.layout24);
    obj.layout29:setLeft(0);
    obj.layout29:setTop(100);
    obj.layout29:setWidth(350);
    obj.layout29:setHeight(25);
    obj.layout29:setName("layout29");

    obj.edit44 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit44:setParent(obj.layout29);
    obj.edit44:setVertTextAlign("center");
    obj.edit44:setLeft(0);
    obj.edit44:setTop(0);
    obj.edit44:setWidth(270);
    obj.edit44:setHeight(25);
    obj.edit44:setField("nomeSignos4");
    obj.edit44:setName("edit44");

    obj.edit45 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit45:setParent(obj.layout29);
    obj.edit45:setVertTextAlign("center");
    obj.edit45:setLeft(270);
    obj.edit45:setTop(0);
    obj.edit45:setWidth(30);
    obj.edit45:setHeight(25);
    obj.edit45:setField("nivelSignos4");
    obj.edit45:setName("edit45");

    obj.layout30 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.layout24);
    obj.layout30:setLeft(0);
    obj.layout30:setTop(125);
    obj.layout30:setWidth(350);
    obj.layout30:setHeight(25);
    obj.layout30:setName("layout30");

    obj.edit46 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit46:setParent(obj.layout30);
    obj.edit46:setVertTextAlign("center");
    obj.edit46:setLeft(0);
    obj.edit46:setTop(0);
    obj.edit46:setWidth(270);
    obj.edit46:setHeight(25);
    obj.edit46:setField("nomeSignos5");
    obj.edit46:setName("edit46");

    obj.edit47 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit47:setParent(obj.layout30);
    obj.edit47:setVertTextAlign("center");
    obj.edit47:setLeft(270);
    obj.edit47:setTop(0);
    obj.edit47:setWidth(30);
    obj.edit47:setHeight(25);
    obj.edit47:setField("nivelSignos5");
    obj.edit47:setName("edit47");

    obj.layout31 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.layout24);
    obj.layout31:setLeft(0);
    obj.layout31:setTop(150);
    obj.layout31:setWidth(350);
    obj.layout31:setHeight(25);
    obj.layout31:setName("layout31");

    obj.edit48 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit48:setParent(obj.layout31);
    obj.edit48:setVertTextAlign("center");
    obj.edit48:setLeft(0);
    obj.edit48:setTop(0);
    obj.edit48:setWidth(270);
    obj.edit48:setHeight(25);
    obj.edit48:setField("nomeSignos6");
    obj.edit48:setName("edit48");

    obj.edit49 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit49:setParent(obj.layout31);
    obj.edit49:setVertTextAlign("center");
    obj.edit49:setLeft(270);
    obj.edit49:setTop(0);
    obj.edit49:setWidth(30);
    obj.edit49:setHeight(25);
    obj.edit49:setField("nivelSignos6");
    obj.edit49:setName("edit49");

    obj.layout32 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.layout24);
    obj.layout32:setLeft(0);
    obj.layout32:setTop(175);
    obj.layout32:setWidth(350);
    obj.layout32:setHeight(25);
    obj.layout32:setName("layout32");

    obj.edit50 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit50:setParent(obj.layout32);
    obj.edit50:setVertTextAlign("center");
    obj.edit50:setLeft(0);
    obj.edit50:setTop(0);
    obj.edit50:setWidth(270);
    obj.edit50:setHeight(25);
    obj.edit50:setField("nomeSignos7");
    obj.edit50:setName("edit50");

    obj.edit51 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit51:setParent(obj.layout32);
    obj.edit51:setVertTextAlign("center");
    obj.edit51:setLeft(270);
    obj.edit51:setTop(0);
    obj.edit51:setWidth(30);
    obj.edit51:setHeight(25);
    obj.edit51:setField("nivelSignos7");
    obj.edit51:setName("edit51");

    obj.layout33 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.layout24);
    obj.layout33:setLeft(0);
    obj.layout33:setTop(200);
    obj.layout33:setWidth(350);
    obj.layout33:setHeight(25);
    obj.layout33:setName("layout33");

    obj.edit52 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit52:setParent(obj.layout33);
    obj.edit52:setVertTextAlign("center");
    obj.edit52:setLeft(0);
    obj.edit52:setTop(0);
    obj.edit52:setWidth(270);
    obj.edit52:setHeight(25);
    obj.edit52:setField("nomeSignos8");
    obj.edit52:setName("edit52");

    obj.edit53 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit53:setParent(obj.layout33);
    obj.edit53:setVertTextAlign("center");
    obj.edit53:setLeft(270);
    obj.edit53:setTop(0);
    obj.edit53:setWidth(30);
    obj.edit53:setHeight(25);
    obj.edit53:setField("nivelSignos8");
    obj.edit53:setName("edit53");

    obj.layout34 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.layout24);
    obj.layout34:setLeft(0);
    obj.layout34:setTop(225);
    obj.layout34:setWidth(350);
    obj.layout34:setHeight(25);
    obj.layout34:setName("layout34");

    obj.edit54 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit54:setParent(obj.layout34);
    obj.edit54:setVertTextAlign("center");
    obj.edit54:setLeft(0);
    obj.edit54:setTop(0);
    obj.edit54:setWidth(270);
    obj.edit54:setHeight(25);
    obj.edit54:setField("nomeSignos9");
    obj.edit54:setName("edit54");

    obj.edit55 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit55:setParent(obj.layout34);
    obj.edit55:setVertTextAlign("center");
    obj.edit55:setLeft(270);
    obj.edit55:setTop(0);
    obj.edit55:setWidth(30);
    obj.edit55:setHeight(25);
    obj.edit55:setField("nivelSignos9");
    obj.edit55:setName("edit55");

    obj.layout35 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.layout24);
    obj.layout35:setLeft(0);
    obj.layout35:setTop(250);
    obj.layout35:setWidth(350);
    obj.layout35:setHeight(25);
    obj.layout35:setName("layout35");

    obj.edit56 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit56:setParent(obj.layout35);
    obj.edit56:setVertTextAlign("center");
    obj.edit56:setLeft(0);
    obj.edit56:setTop(0);
    obj.edit56:setWidth(270);
    obj.edit56:setHeight(25);
    obj.edit56:setField("nomeSignos10");
    obj.edit56:setName("edit56");

    obj.edit57 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit57:setParent(obj.layout35);
    obj.edit57:setVertTextAlign("center");
    obj.edit57:setLeft(270);
    obj.edit57:setTop(0);
    obj.edit57:setWidth(30);
    obj.edit57:setHeight(25);
    obj.edit57:setField("nivelSignos10");
    obj.edit57:setName("edit57");

    obj.layout36 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.layout24);
    obj.layout36:setLeft(0);
    obj.layout36:setTop(275);
    obj.layout36:setWidth(350);
    obj.layout36:setHeight(25);
    obj.layout36:setName("layout36");

    obj.edit58 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit58:setParent(obj.layout36);
    obj.edit58:setVertTextAlign("center");
    obj.edit58:setLeft(0);
    obj.edit58:setTop(0);
    obj.edit58:setWidth(270);
    obj.edit58:setHeight(25);
    obj.edit58:setField("nomeSignos11");
    obj.edit58:setName("edit58");

    obj.edit59 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit59:setParent(obj.layout36);
    obj.edit59:setVertTextAlign("center");
    obj.edit59:setLeft(270);
    obj.edit59:setTop(0);
    obj.edit59:setWidth(30);
    obj.edit59:setHeight(25);
    obj.edit59:setField("nivelSignos11");
    obj.edit59:setName("edit59");

    obj.layout37 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.layoutSignos);
    obj.layout37:setLeft(50);
    obj.layout37:setTop(360);
    obj.layout37:setWidth(280);
    obj.layout37:setHeight(180);
    obj.layout37:setName("layout37");

    obj.edit60 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit60:setParent(obj.layout37);
    obj.edit60:setVertTextAlign("center");
    obj.edit60:setLeft(40);
    obj.edit60:setTop(5);
    obj.edit60:setWidth(200);
    obj.edit60:setHeight(20);
    obj.edit60:setField("descricaoNomeSigno0");
    obj.edit60:setName("edit60");

    obj.textEditor11 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor11:setParent(obj.layout37);
    obj.textEditor11:setTop(25);
    obj.textEditor11:setWidth(280);
    obj.textEditor11:setHeight(155);
    obj.textEditor11:setFontSize(12);
    obj.textEditor11:setField("descricaoSigno0");
    obj.textEditor11:setName("textEditor11");

    obj.layout38 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.layoutSignos);
    obj.layout38:setLeft(340);
    obj.layout38:setTop(0);
    obj.layout38:setWidth(280);
    obj.layout38:setHeight(180);
    obj.layout38:setName("layout38");

    obj.edit61 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit61:setParent(obj.layout38);
    obj.edit61:setVertTextAlign("center");
    obj.edit61:setLeft(40);
    obj.edit61:setTop(5);
    obj.edit61:setWidth(200);
    obj.edit61:setHeight(20);
    obj.edit61:setField("descricaoNomeSigno1");
    obj.edit61:setName("edit61");

    obj.textEditor12 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor12:setParent(obj.layout38);
    obj.textEditor12:setTop(25);
    obj.textEditor12:setWidth(280);
    obj.textEditor12:setHeight(155);
    obj.textEditor12:setFontSize(12);
    obj.textEditor12:setField("descricaoSigno1");
    obj.textEditor12:setName("textEditor12");

    obj.layout39 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.layoutSignos);
    obj.layout39:setLeft(340);
    obj.layout39:setTop(180);
    obj.layout39:setWidth(280);
    obj.layout39:setHeight(180);
    obj.layout39:setName("layout39");

    obj.edit62 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit62:setParent(obj.layout39);
    obj.edit62:setVertTextAlign("center");
    obj.edit62:setLeft(40);
    obj.edit62:setTop(5);
    obj.edit62:setWidth(200);
    obj.edit62:setHeight(20);
    obj.edit62:setField("descricaoNomeSigno2");
    obj.edit62:setName("edit62");

    obj.textEditor13 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor13:setParent(obj.layout39);
    obj.textEditor13:setTop(25);
    obj.textEditor13:setWidth(280);
    obj.textEditor13:setHeight(155);
    obj.textEditor13:setFontSize(12);
    obj.textEditor13:setField("descricaoSigno2");
    obj.textEditor13:setName("textEditor13");

    obj.layout40 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.layoutSignos);
    obj.layout40:setLeft(340);
    obj.layout40:setTop(360);
    obj.layout40:setWidth(280);
    obj.layout40:setHeight(180);
    obj.layout40:setName("layout40");

    obj.edit63 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit63:setParent(obj.layout40);
    obj.edit63:setVertTextAlign("center");
    obj.edit63:setLeft(40);
    obj.edit63:setTop(5);
    obj.edit63:setWidth(200);
    obj.edit63:setHeight(20);
    obj.edit63:setField("descricaoNomeSigno3");
    obj.edit63:setName("edit63");

    obj.textEditor14 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor14:setParent(obj.layout40);
    obj.textEditor14:setTop(25);
    obj.textEditor14:setWidth(280);
    obj.textEditor14:setHeight(155);
    obj.textEditor14:setFontSize(12);
    obj.textEditor14:setField("descricaoSigno3");
    obj.textEditor14:setName("textEditor14");

    obj.layout41 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.layoutSignos);
    obj.layout41:setLeft(630);
    obj.layout41:setTop(0);
    obj.layout41:setWidth(280);
    obj.layout41:setHeight(180);
    obj.layout41:setName("layout41");

    obj.edit64 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit64:setParent(obj.layout41);
    obj.edit64:setVertTextAlign("center");
    obj.edit64:setLeft(40);
    obj.edit64:setTop(5);
    obj.edit64:setWidth(200);
    obj.edit64:setHeight(20);
    obj.edit64:setField("descricaoNomeSigno4");
    obj.edit64:setName("edit64");

    obj.textEditor15 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor15:setParent(obj.layout41);
    obj.textEditor15:setTop(25);
    obj.textEditor15:setWidth(280);
    obj.textEditor15:setHeight(155);
    obj.textEditor15:setFontSize(12);
    obj.textEditor15:setField("descricaoSigno4");
    obj.textEditor15:setName("textEditor15");

    obj.layout42 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.layoutSignos);
    obj.layout42:setLeft(630);
    obj.layout42:setTop(180);
    obj.layout42:setWidth(280);
    obj.layout42:setHeight(180);
    obj.layout42:setName("layout42");

    obj.edit65 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit65:setParent(obj.layout42);
    obj.edit65:setVertTextAlign("center");
    obj.edit65:setLeft(40);
    obj.edit65:setTop(5);
    obj.edit65:setWidth(200);
    obj.edit65:setHeight(20);
    obj.edit65:setField("descricaoNomeSigno5");
    obj.edit65:setName("edit65");

    obj.textEditor16 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor16:setParent(obj.layout42);
    obj.textEditor16:setTop(25);
    obj.textEditor16:setWidth(280);
    obj.textEditor16:setHeight(155);
    obj.textEditor16:setFontSize(12);
    obj.textEditor16:setField("descricaoSigno5");
    obj.textEditor16:setName("textEditor16");

    obj.layout43 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.layoutSignos);
    obj.layout43:setLeft(630);
    obj.layout43:setTop(360);
    obj.layout43:setWidth(280);
    obj.layout43:setHeight(180);
    obj.layout43:setName("layout43");

    obj.edit66 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit66:setParent(obj.layout43);
    obj.edit66:setVertTextAlign("center");
    obj.edit66:setLeft(40);
    obj.edit66:setTop(5);
    obj.edit66:setWidth(200);
    obj.edit66:setHeight(20);
    obj.edit66:setField("descricaoNomeSigno6");
    obj.edit66:setName("edit66");

    obj.textEditor17 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor17:setParent(obj.layout43);
    obj.textEditor17:setTop(25);
    obj.textEditor17:setWidth(280);
    obj.textEditor17:setHeight(155);
    obj.textEditor17:setFontSize(12);
    obj.textEditor17:setField("descricaoSigno6");
    obj.textEditor17:setName("textEditor17");

    obj.layout44 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.layoutSignos);
    obj.layout44:setLeft(920);
    obj.layout44:setTop(0);
    obj.layout44:setWidth(280);
    obj.layout44:setHeight(180);
    obj.layout44:setName("layout44");

    obj.edit67 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit67:setParent(obj.layout44);
    obj.edit67:setVertTextAlign("center");
    obj.edit67:setLeft(40);
    obj.edit67:setTop(5);
    obj.edit67:setWidth(200);
    obj.edit67:setHeight(20);
    obj.edit67:setField("descricaoNomeSigno7");
    obj.edit67:setName("edit67");

    obj.textEditor18 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor18:setParent(obj.layout44);
    obj.textEditor18:setTop(25);
    obj.textEditor18:setWidth(280);
    obj.textEditor18:setHeight(155);
    obj.textEditor18:setFontSize(12);
    obj.textEditor18:setField("descricaoSigno7");
    obj.textEditor18:setName("textEditor18");

    obj.layout45 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.layoutSignos);
    obj.layout45:setLeft(920);
    obj.layout45:setTop(180);
    obj.layout45:setWidth(280);
    obj.layout45:setHeight(180);
    obj.layout45:setName("layout45");

    obj.edit68 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit68:setParent(obj.layout45);
    obj.edit68:setVertTextAlign("center");
    obj.edit68:setLeft(40);
    obj.edit68:setTop(5);
    obj.edit68:setWidth(200);
    obj.edit68:setHeight(20);
    obj.edit68:setField("descricaoNomeSigno8");
    obj.edit68:setName("edit68");

    obj.textEditor19 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor19:setParent(obj.layout45);
    obj.textEditor19:setTop(25);
    obj.textEditor19:setWidth(280);
    obj.textEditor19:setHeight(155);
    obj.textEditor19:setFontSize(12);
    obj.textEditor19:setField("descricaoSigno8");
    obj.textEditor19:setName("textEditor19");

    obj.layout46 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.layoutSignos);
    obj.layout46:setLeft(920);
    obj.layout46:setTop(360);
    obj.layout46:setWidth(280);
    obj.layout46:setHeight(180);
    obj.layout46:setName("layout46");

    obj.edit69 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit69:setParent(obj.layout46);
    obj.edit69:setVertTextAlign("center");
    obj.edit69:setLeft(40);
    obj.edit69:setTop(5);
    obj.edit69:setWidth(200);
    obj.edit69:setHeight(20);
    obj.edit69:setField("descricaoNomeSigno9");
    obj.edit69:setName("edit69");

    obj.textEditor20 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor20:setParent(obj.layout46);
    obj.textEditor20:setTop(25);
    obj.textEditor20:setWidth(280);
    obj.textEditor20:setHeight(155);
    obj.textEditor20:setFontSize(12);
    obj.textEditor20:setField("descricaoSigno9");
    obj.textEditor20:setName("textEditor20");

    obj.layoutMagiasEpicas = gui.fromHandle(_obj_newObject("layout"));
    obj.layoutMagiasEpicas:setParent(obj.boxDetalhesDoItem);
    obj.layoutMagiasEpicas:setLeft(0);
    obj.layoutMagiasEpicas:setTop(50);
    obj.layoutMagiasEpicas:setWidth(1200);
    obj.layoutMagiasEpicas:setHeight(550);
    obj.layoutMagiasEpicas:setName("layoutMagiasEpicas");

    obj.layout47 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.layoutMagiasEpicas);
    obj.layout47:setLeft(50);
    obj.layout47:setTop(360);
    obj.layout47:setWidth(280);
    obj.layout47:setHeight(180);
    obj.layout47:setName("layout47");

    obj.edit70 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit70:setParent(obj.layout47);
    obj.edit70:setVertTextAlign("center");
    obj.edit70:setLeft(0);
    obj.edit70:setTop(5);
    obj.edit70:setWidth(200);
    obj.edit70:setHeight(20);
    obj.edit70:setField("nomeMagiaEpica0");
    obj.edit70:setName("edit70");

    obj.label56 = gui.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout47);
    obj.label56:setVertTextAlign("center");
    obj.label56:setLeft(205);
    obj.label56:setTop(5);
    obj.label56:setWidth(30);
    obj.label56:setHeight(20);
    obj.label56:setText("Teste");
    obj.label56:setName("label56");
    obj.label56:setFontColor("white");
    obj.label56:setTextTrimming("none");
    obj.label56:setWordWrap(false);
    obj.label56:setAutoSize(true);

    obj.edit71 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit71:setParent(obj.layout47);
    obj.edit71:setVertTextAlign("center");
    obj.edit71:setLeft(240);
    obj.edit71:setTop(5);
    obj.edit71:setWidth(40);
    obj.edit71:setHeight(20);
    obj.edit71:setField("cdMagiaEpica0");
    obj.edit71:setName("edit71");

    obj.textEditor21 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor21:setParent(obj.layout47);
    obj.textEditor21:setTop(25);
    obj.textEditor21:setWidth(280);
    obj.textEditor21:setHeight(155);
    obj.textEditor21:setFontSize(12);
    obj.textEditor21:setField("descricaoMagiaEpica0");
    obj.textEditor21:setName("textEditor21");

    obj.layout48 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.layoutMagiasEpicas);
    obj.layout48:setLeft(340);
    obj.layout48:setTop(0);
    obj.layout48:setWidth(280);
    obj.layout48:setHeight(180);
    obj.layout48:setName("layout48");

    obj.edit72 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit72:setParent(obj.layout48);
    obj.edit72:setVertTextAlign("center");
    obj.edit72:setLeft(0);
    obj.edit72:setTop(5);
    obj.edit72:setWidth(200);
    obj.edit72:setHeight(20);
    obj.edit72:setField("nomeMagiaEpica1");
    obj.edit72:setName("edit72");

    obj.label57 = gui.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.layout48);
    obj.label57:setVertTextAlign("center");
    obj.label57:setLeft(205);
    obj.label57:setTop(5);
    obj.label57:setWidth(30);
    obj.label57:setHeight(20);
    obj.label57:setText("Teste");
    obj.label57:setName("label57");
    obj.label57:setFontColor("white");
    obj.label57:setTextTrimming("none");
    obj.label57:setWordWrap(false);
    obj.label57:setAutoSize(true);

    obj.edit73 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit73:setParent(obj.layout48);
    obj.edit73:setVertTextAlign("center");
    obj.edit73:setLeft(240);
    obj.edit73:setTop(5);
    obj.edit73:setWidth(40);
    obj.edit73:setHeight(20);
    obj.edit73:setField("cdMagiaEpica1");
    obj.edit73:setName("edit73");

    obj.textEditor22 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor22:setParent(obj.layout48);
    obj.textEditor22:setTop(25);
    obj.textEditor22:setWidth(280);
    obj.textEditor22:setHeight(155);
    obj.textEditor22:setFontSize(12);
    obj.textEditor22:setField("descricaoMagiaEpica1");
    obj.textEditor22:setName("textEditor22");

    obj.layout49 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.layoutMagiasEpicas);
    obj.layout49:setLeft(340);
    obj.layout49:setTop(180);
    obj.layout49:setWidth(280);
    obj.layout49:setHeight(180);
    obj.layout49:setName("layout49");

    obj.edit74 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit74:setParent(obj.layout49);
    obj.edit74:setVertTextAlign("center");
    obj.edit74:setLeft(0);
    obj.edit74:setTop(5);
    obj.edit74:setWidth(200);
    obj.edit74:setHeight(20);
    obj.edit74:setField("nomeMagiaEpica2");
    obj.edit74:setName("edit74");

    obj.label58 = gui.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.layout49);
    obj.label58:setVertTextAlign("center");
    obj.label58:setLeft(205);
    obj.label58:setTop(5);
    obj.label58:setWidth(30);
    obj.label58:setHeight(20);
    obj.label58:setText("Teste");
    obj.label58:setName("label58");
    obj.label58:setFontColor("white");
    obj.label58:setTextTrimming("none");
    obj.label58:setWordWrap(false);
    obj.label58:setAutoSize(true);

    obj.edit75 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit75:setParent(obj.layout49);
    obj.edit75:setVertTextAlign("center");
    obj.edit75:setLeft(240);
    obj.edit75:setTop(5);
    obj.edit75:setWidth(40);
    obj.edit75:setHeight(20);
    obj.edit75:setField("cdMagiaEpica2");
    obj.edit75:setName("edit75");

    obj.textEditor23 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor23:setParent(obj.layout49);
    obj.textEditor23:setTop(25);
    obj.textEditor23:setWidth(280);
    obj.textEditor23:setHeight(155);
    obj.textEditor23:setFontSize(12);
    obj.textEditor23:setField("descricaoMagiaEpica2");
    obj.textEditor23:setName("textEditor23");

    obj.layout50 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.layoutMagiasEpicas);
    obj.layout50:setLeft(340);
    obj.layout50:setTop(360);
    obj.layout50:setWidth(280);
    obj.layout50:setHeight(180);
    obj.layout50:setName("layout50");

    obj.edit76 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit76:setParent(obj.layout50);
    obj.edit76:setVertTextAlign("center");
    obj.edit76:setLeft(0);
    obj.edit76:setTop(5);
    obj.edit76:setWidth(200);
    obj.edit76:setHeight(20);
    obj.edit76:setField("nomeMagiaEpica3");
    obj.edit76:setName("edit76");

    obj.label59 = gui.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.layout50);
    obj.label59:setVertTextAlign("center");
    obj.label59:setLeft(205);
    obj.label59:setTop(5);
    obj.label59:setWidth(30);
    obj.label59:setHeight(20);
    obj.label59:setText("Teste");
    obj.label59:setName("label59");
    obj.label59:setFontColor("white");
    obj.label59:setTextTrimming("none");
    obj.label59:setWordWrap(false);
    obj.label59:setAutoSize(true);

    obj.edit77 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit77:setParent(obj.layout50);
    obj.edit77:setVertTextAlign("center");
    obj.edit77:setLeft(240);
    obj.edit77:setTop(5);
    obj.edit77:setWidth(40);
    obj.edit77:setHeight(20);
    obj.edit77:setField("cdMagiaEpica3");
    obj.edit77:setName("edit77");

    obj.textEditor24 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor24:setParent(obj.layout50);
    obj.textEditor24:setTop(25);
    obj.textEditor24:setWidth(280);
    obj.textEditor24:setHeight(155);
    obj.textEditor24:setFontSize(12);
    obj.textEditor24:setField("descricaoMagiaEpica3");
    obj.textEditor24:setName("textEditor24");

    obj.layout51 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.layoutMagiasEpicas);
    obj.layout51:setLeft(630);
    obj.layout51:setTop(0);
    obj.layout51:setWidth(280);
    obj.layout51:setHeight(180);
    obj.layout51:setName("layout51");

    obj.edit78 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit78:setParent(obj.layout51);
    obj.edit78:setVertTextAlign("center");
    obj.edit78:setLeft(0);
    obj.edit78:setTop(5);
    obj.edit78:setWidth(200);
    obj.edit78:setHeight(20);
    obj.edit78:setField("nomeMagiaEpica4");
    obj.edit78:setName("edit78");

    obj.label60 = gui.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout51);
    obj.label60:setVertTextAlign("center");
    obj.label60:setLeft(205);
    obj.label60:setTop(5);
    obj.label60:setWidth(30);
    obj.label60:setHeight(20);
    obj.label60:setText("Teste");
    obj.label60:setName("label60");
    obj.label60:setFontColor("white");
    obj.label60:setTextTrimming("none");
    obj.label60:setWordWrap(false);
    obj.label60:setAutoSize(true);

    obj.edit79 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit79:setParent(obj.layout51);
    obj.edit79:setVertTextAlign("center");
    obj.edit79:setLeft(240);
    obj.edit79:setTop(5);
    obj.edit79:setWidth(40);
    obj.edit79:setHeight(20);
    obj.edit79:setField("cdMagiaEpica4");
    obj.edit79:setName("edit79");

    obj.textEditor25 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor25:setParent(obj.layout51);
    obj.textEditor25:setTop(25);
    obj.textEditor25:setWidth(280);
    obj.textEditor25:setHeight(155);
    obj.textEditor25:setFontSize(12);
    obj.textEditor25:setField("descricaoMagiaEpica4");
    obj.textEditor25:setName("textEditor25");

    obj.layout52 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.layoutMagiasEpicas);
    obj.layout52:setLeft(630);
    obj.layout52:setTop(180);
    obj.layout52:setWidth(280);
    obj.layout52:setHeight(180);
    obj.layout52:setName("layout52");

    obj.edit80 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit80:setParent(obj.layout52);
    obj.edit80:setVertTextAlign("center");
    obj.edit80:setLeft(0);
    obj.edit80:setTop(5);
    obj.edit80:setWidth(200);
    obj.edit80:setHeight(20);
    obj.edit80:setField("nomeMagiaEpica5");
    obj.edit80:setName("edit80");

    obj.label61 = gui.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.layout52);
    obj.label61:setVertTextAlign("center");
    obj.label61:setLeft(205);
    obj.label61:setTop(5);
    obj.label61:setWidth(30);
    obj.label61:setHeight(20);
    obj.label61:setText("Teste");
    obj.label61:setName("label61");
    obj.label61:setFontColor("white");
    obj.label61:setTextTrimming("none");
    obj.label61:setWordWrap(false);
    obj.label61:setAutoSize(true);

    obj.edit81 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit81:setParent(obj.layout52);
    obj.edit81:setVertTextAlign("center");
    obj.edit81:setLeft(240);
    obj.edit81:setTop(5);
    obj.edit81:setWidth(40);
    obj.edit81:setHeight(20);
    obj.edit81:setField("cdMagiaEpica5");
    obj.edit81:setName("edit81");

    obj.textEditor26 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor26:setParent(obj.layout52);
    obj.textEditor26:setTop(25);
    obj.textEditor26:setWidth(280);
    obj.textEditor26:setHeight(155);
    obj.textEditor26:setFontSize(12);
    obj.textEditor26:setField("descricaoMagiaEpica5");
    obj.textEditor26:setName("textEditor26");

    obj.layout53 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.layoutMagiasEpicas);
    obj.layout53:setLeft(630);
    obj.layout53:setTop(360);
    obj.layout53:setWidth(280);
    obj.layout53:setHeight(180);
    obj.layout53:setName("layout53");

    obj.edit82 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit82:setParent(obj.layout53);
    obj.edit82:setVertTextAlign("center");
    obj.edit82:setLeft(0);
    obj.edit82:setTop(5);
    obj.edit82:setWidth(200);
    obj.edit82:setHeight(20);
    obj.edit82:setField("nomeMagiaEpica6");
    obj.edit82:setName("edit82");

    obj.label62 = gui.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.layout53);
    obj.label62:setVertTextAlign("center");
    obj.label62:setLeft(205);
    obj.label62:setTop(5);
    obj.label62:setWidth(30);
    obj.label62:setHeight(20);
    obj.label62:setText("Teste");
    obj.label62:setName("label62");
    obj.label62:setFontColor("white");
    obj.label62:setTextTrimming("none");
    obj.label62:setWordWrap(false);
    obj.label62:setAutoSize(true);

    obj.edit83 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit83:setParent(obj.layout53);
    obj.edit83:setVertTextAlign("center");
    obj.edit83:setLeft(240);
    obj.edit83:setTop(5);
    obj.edit83:setWidth(40);
    obj.edit83:setHeight(20);
    obj.edit83:setField("cdMagiaEpica6");
    obj.edit83:setName("edit83");

    obj.textEditor27 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor27:setParent(obj.layout53);
    obj.textEditor27:setTop(25);
    obj.textEditor27:setWidth(280);
    obj.textEditor27:setHeight(155);
    obj.textEditor27:setFontSize(12);
    obj.textEditor27:setField("descricaoMagiaEpica6");
    obj.textEditor27:setName("textEditor27");

    obj.layout54 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.layoutMagiasEpicas);
    obj.layout54:setLeft(920);
    obj.layout54:setTop(0);
    obj.layout54:setWidth(280);
    obj.layout54:setHeight(180);
    obj.layout54:setName("layout54");

    obj.edit84 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit84:setParent(obj.layout54);
    obj.edit84:setVertTextAlign("center");
    obj.edit84:setLeft(0);
    obj.edit84:setTop(5);
    obj.edit84:setWidth(200);
    obj.edit84:setHeight(20);
    obj.edit84:setField("nomeMagiaEpica7");
    obj.edit84:setName("edit84");

    obj.label63 = gui.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.layout54);
    obj.label63:setVertTextAlign("center");
    obj.label63:setLeft(205);
    obj.label63:setTop(5);
    obj.label63:setWidth(30);
    obj.label63:setHeight(20);
    obj.label63:setText("Teste");
    obj.label63:setName("label63");
    obj.label63:setFontColor("white");
    obj.label63:setTextTrimming("none");
    obj.label63:setWordWrap(false);
    obj.label63:setAutoSize(true);

    obj.edit85 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit85:setParent(obj.layout54);
    obj.edit85:setVertTextAlign("center");
    obj.edit85:setLeft(240);
    obj.edit85:setTop(5);
    obj.edit85:setWidth(40);
    obj.edit85:setHeight(20);
    obj.edit85:setField("cdMagiaEpica7");
    obj.edit85:setName("edit85");

    obj.textEditor28 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor28:setParent(obj.layout54);
    obj.textEditor28:setTop(25);
    obj.textEditor28:setWidth(280);
    obj.textEditor28:setHeight(155);
    obj.textEditor28:setFontSize(12);
    obj.textEditor28:setField("descricaoMagiaEpica7");
    obj.textEditor28:setName("textEditor28");

    obj.layout55 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.layoutMagiasEpicas);
    obj.layout55:setLeft(920);
    obj.layout55:setTop(180);
    obj.layout55:setWidth(280);
    obj.layout55:setHeight(180);
    obj.layout55:setName("layout55");

    obj.edit86 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit86:setParent(obj.layout55);
    obj.edit86:setVertTextAlign("center");
    obj.edit86:setLeft(0);
    obj.edit86:setTop(5);
    obj.edit86:setWidth(200);
    obj.edit86:setHeight(20);
    obj.edit86:setField("nomeMagiaEpica8");
    obj.edit86:setName("edit86");

    obj.label64 = gui.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.layout55);
    obj.label64:setVertTextAlign("center");
    obj.label64:setLeft(205);
    obj.label64:setTop(5);
    obj.label64:setWidth(30);
    obj.label64:setHeight(20);
    obj.label64:setText("Teste");
    obj.label64:setName("label64");
    obj.label64:setFontColor("white");
    obj.label64:setTextTrimming("none");
    obj.label64:setWordWrap(false);
    obj.label64:setAutoSize(true);

    obj.edit87 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit87:setParent(obj.layout55);
    obj.edit87:setVertTextAlign("center");
    obj.edit87:setLeft(240);
    obj.edit87:setTop(5);
    obj.edit87:setWidth(40);
    obj.edit87:setHeight(20);
    obj.edit87:setField("cdMagiaEpica8");
    obj.edit87:setName("edit87");

    obj.textEditor29 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor29:setParent(obj.layout55);
    obj.textEditor29:setTop(25);
    obj.textEditor29:setWidth(280);
    obj.textEditor29:setHeight(155);
    obj.textEditor29:setFontSize(12);
    obj.textEditor29:setField("descricaoMagiaEpica8");
    obj.textEditor29:setName("textEditor29");

    obj.layout56 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.layoutMagiasEpicas);
    obj.layout56:setLeft(920);
    obj.layout56:setTop(360);
    obj.layout56:setWidth(280);
    obj.layout56:setHeight(180);
    obj.layout56:setName("layout56");

    obj.edit88 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit88:setParent(obj.layout56);
    obj.edit88:setVertTextAlign("center");
    obj.edit88:setLeft(0);
    obj.edit88:setTop(5);
    obj.edit88:setWidth(200);
    obj.edit88:setHeight(20);
    obj.edit88:setField("nomeMagiaEpica9");
    obj.edit88:setName("edit88");

    obj.label65 = gui.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.layout56);
    obj.label65:setVertTextAlign("center");
    obj.label65:setLeft(205);
    obj.label65:setTop(5);
    obj.label65:setWidth(30);
    obj.label65:setHeight(20);
    obj.label65:setText("Teste");
    obj.label65:setName("label65");
    obj.label65:setFontColor("white");
    obj.label65:setTextTrimming("none");
    obj.label65:setWordWrap(false);
    obj.label65:setAutoSize(true);

    obj.edit89 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit89:setParent(obj.layout56);
    obj.edit89:setVertTextAlign("center");
    obj.edit89:setLeft(240);
    obj.edit89:setTop(5);
    obj.edit89:setWidth(40);
    obj.edit89:setHeight(20);
    obj.edit89:setField("cdMagiaEpica9");
    obj.edit89:setName("edit89");

    obj.textEditor30 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor30:setParent(obj.layout56);
    obj.textEditor30:setTop(25);
    obj.textEditor30:setWidth(280);
    obj.textEditor30:setHeight(155);
    obj.textEditor30:setFontSize(12);
    obj.textEditor30:setField("descricaoMagiaEpica9");
    obj.textEditor30:setName("textEditor30");

    obj.layoutMagiasAprimoradas = gui.fromHandle(_obj_newObject("layout"));
    obj.layoutMagiasAprimoradas:setParent(obj.boxDetalhesDoItem);
    obj.layoutMagiasAprimoradas:setLeft(0);
    obj.layoutMagiasAprimoradas:setTop(50);
    obj.layoutMagiasAprimoradas:setWidth(1200);
    obj.layoutMagiasAprimoradas:setHeight(550);
    obj.layoutMagiasAprimoradas:setName("layoutMagiasAprimoradas");

    obj.layout57 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.layoutMagiasAprimoradas);
    obj.layout57:setLeft(10);
    obj.layout57:setTop(0);
    obj.layout57:setWidth(350);
    obj.layout57:setHeight(350);
    obj.layout57:setName("layout57");

    obj.comboBox4 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox4:setParent(obj.layout57);
    obj.comboBox4:setLeft(115);
    obj.comboBox4:setTop(0);
    obj.comboBox4:setWidth(60);
    obj.comboBox4:setHeight(25);
    obj.comboBox4:setItems({'FOR', 'DES', 'CON', 'INT', 'SAB', 'CAR'});
    obj.comboBox4:setValues({'1', '2', '3', '4', '5', '6'});
    obj.comboBox4:setField("atributoBonus");
    obj.comboBox4:setName("comboBox4");

    obj.comboBox5 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox5:setParent(obj.layout57);
    obj.comboBox5:setLeft(260);
    obj.comboBox5:setTop(0);
    obj.comboBox5:setWidth(60);
    obj.comboBox5:setHeight(25);
    obj.comboBox5:setItems({'FOR', 'DES', 'CON', 'INT', 'SAB', 'CAR'});
    obj.comboBox5:setValues({'1', '2', '3', '4', '5', '6'});
    obj.comboBox5:setField("atributoCD");
    obj.comboBox5:setName("comboBox5");

    obj.layout58 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.layout57);
    obj.layout58:setLeft(0);
    obj.layout58:setTop(25);
    obj.layout58:setWidth(350);
    obj.layout58:setHeight(25);
    obj.layout58:setName("layout58");

    obj.label66 = gui.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.layout58);
    obj.label66:setVertTextAlign("center");
    obj.label66:setLeft(0);
    obj.label66:setTop(3);
    obj.label66:setWidth(25);
    obj.label66:setHeight(22);
    obj.label66:setText("NÍVEL");
    obj.label66:setName("label66");
    obj.label66:setFontColor("white");
    obj.label66:setTextTrimming("none");
    obj.label66:setWordWrap(false);
    obj.label66:setAutoSize(true);

    obj.label67 = gui.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.layout58);
    obj.label67:setVertTextAlign("center");
    obj.label67:setLeft(40);
    obj.label67:setTop(3);
    obj.label67:setWidth(25);
    obj.label67:setHeight(22);
    obj.label67:setText("TOTAL");
    obj.label67:setName("label67");
    obj.label67:setFontColor("white");
    obj.label67:setTextTrimming("none");
    obj.label67:setWordWrap(false);
    obj.label67:setAutoSize(true);

    obj.label68 = gui.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.layout58);
    obj.label68:setVertTextAlign("center");
    obj.label68:setLeft(85);
    obj.label68:setTop(3);
    obj.label68:setWidth(25);
    obj.label68:setHeight(22);
    obj.label68:setText("BASE");
    obj.label68:setName("label68");
    obj.label68:setFontColor("white");
    obj.label68:setTextTrimming("none");
    obj.label68:setWordWrap(false);
    obj.label68:setAutoSize(true);

    obj.label69 = gui.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.layout58);
    obj.label69:setVertTextAlign("center");
    obj.label69:setLeft(125);
    obj.label69:setTop(3);
    obj.label69:setWidth(25);
    obj.label69:setHeight(22);
    obj.label69:setText("BONUS");
    obj.label69:setName("label69");
    obj.label69:setFontColor("white");
    obj.label69:setTextTrimming("none");
    obj.label69:setWordWrap(false);
    obj.label69:setAutoSize(true);

    obj.label70 = gui.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.layout58);
    obj.label70:setVertTextAlign("center");
    obj.label70:setLeft(180);
    obj.label70:setTop(3);
    obj.label70:setWidth(25);
    obj.label70:setHeight(22);
    obj.label70:setText("CONHECIDAS");
    obj.label70:setName("label70");
    obj.label70:setFontColor("white");
    obj.label70:setTextTrimming("none");
    obj.label70:setWordWrap(false);
    obj.label70:setAutoSize(true);

    obj.label71 = gui.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.layout58);
    obj.label71:setVertTextAlign("center");
    obj.label71:setLeft(270);
    obj.label71:setTop(3);
    obj.label71:setWidth(25);
    obj.label71:setHeight(22);
    obj.label71:setText("CD");
    obj.label71:setName("label71");
    obj.label71:setFontColor("white");
    obj.label71:setTextTrimming("none");
    obj.label71:setWordWrap(false);
    obj.label71:setAutoSize(true);

    obj.layout59 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.layout57);
    obj.layout59:setLeft(0);
    obj.layout59:setTop(55);
    obj.layout59:setWidth(350);
    obj.layout59:setHeight(25);
    obj.layout59:setName("layout59");

    obj.label72 = gui.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.layout59);
    obj.label72:setVertTextAlign("center");
    obj.label72:setLeft(10);
    obj.label72:setTop(3);
    obj.label72:setWidth(25);
    obj.label72:setHeight(22);
    obj.label72:setText("10");
    obj.label72:setName("label72");
    obj.label72:setFontColor("white");
    obj.label72:setTextTrimming("none");
    obj.label72:setWordWrap(false);
    obj.label72:setAutoSize(true);

    obj.edit90 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit90:setParent(obj.layout59);
    obj.edit90:setVertTextAlign("center");
    obj.edit90:setLeft(45);
    obj.edit90:setTop(0);
    obj.edit90:setWidth(30);
    obj.edit90:setHeight(25);
    obj.edit90:setField("total10");
    obj.edit90:setType("number");
    obj.edit90:setName("edit90");

    obj.edit91 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit91:setParent(obj.layout59);
    obj.edit91:setVertTextAlign("center");
    obj.edit91:setLeft(85);
    obj.edit91:setTop(0);
    obj.edit91:setWidth(30);
    obj.edit91:setHeight(25);
    obj.edit91:setField("base10");
    obj.edit91:setType("number");
    obj.edit91:setName("edit91");

    obj.label73 = gui.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.layout59);
    obj.label73:setVertTextAlign("center");
    obj.label73:setLeft(140);
    obj.label73:setTop(0);
    obj.label73:setWidth(30);
    obj.label73:setHeight(25);
    obj.label73:setField("bonus10");
    obj.label73:setName("label73");
    obj.label73:setFontColor("white");
    obj.label73:setTextTrimming("none");
    obj.label73:setWordWrap(false);
    obj.label73:setAutoSize(true);

    obj.dataLink33 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink33:setParent(obj.layout59);
    obj.dataLink33:setFields({'base10', 'bonus10'});
    obj.dataLink33:setName("dataLink33");

    obj.dataLink34 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink34:setParent(obj.layout59);
    obj.dataLink34:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink34:setName("dataLink34");

    obj.edit92 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit92:setParent(obj.layout59);
    obj.edit92:setVertTextAlign("center");
    obj.edit92:setLeft(210);
    obj.edit92:setTop(0);
    obj.edit92:setWidth(30);
    obj.edit92:setHeight(25);
    obj.edit92:setField("conhecidas10");
    obj.edit92:setType("number");
    obj.edit92:setName("edit92");

    obj.label74 = gui.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.layout59);
    obj.label74:setVertTextAlign("center");
    obj.label74:setLeft(270);
    obj.label74:setTop(0);
    obj.label74:setWidth(30);
    obj.label74:setHeight(25);
    obj.label74:setField("cd10");
    obj.label74:setName("label74");
    obj.label74:setFontColor("white");
    obj.label74:setTextTrimming("none");
    obj.label74:setWordWrap(false);
    obj.label74:setAutoSize(true);

    obj.dataLink35 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink35:setParent(obj.layout59);
    obj.dataLink35:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink35:setName("dataLink35");

    obj.layout60 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.layout57);
    obj.layout60:setLeft(0);
    obj.layout60:setTop(85);
    obj.layout60:setWidth(350);
    obj.layout60:setHeight(25);
    obj.layout60:setName("layout60");

    obj.label75 = gui.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.layout60);
    obj.label75:setVertTextAlign("center");
    obj.label75:setLeft(10);
    obj.label75:setTop(3);
    obj.label75:setWidth(25);
    obj.label75:setHeight(22);
    obj.label75:setText("11");
    obj.label75:setName("label75");
    obj.label75:setFontColor("white");
    obj.label75:setTextTrimming("none");
    obj.label75:setWordWrap(false);
    obj.label75:setAutoSize(true);

    obj.edit93 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit93:setParent(obj.layout60);
    obj.edit93:setVertTextAlign("center");
    obj.edit93:setLeft(45);
    obj.edit93:setTop(0);
    obj.edit93:setWidth(30);
    obj.edit93:setHeight(25);
    obj.edit93:setField("total11");
    obj.edit93:setType("number");
    obj.edit93:setName("edit93");

    obj.edit94 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit94:setParent(obj.layout60);
    obj.edit94:setVertTextAlign("center");
    obj.edit94:setLeft(85);
    obj.edit94:setTop(0);
    obj.edit94:setWidth(30);
    obj.edit94:setHeight(25);
    obj.edit94:setField("base11");
    obj.edit94:setType("number");
    obj.edit94:setName("edit94");

    obj.label76 = gui.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.layout60);
    obj.label76:setVertTextAlign("center");
    obj.label76:setLeft(140);
    obj.label76:setTop(0);
    obj.label76:setWidth(30);
    obj.label76:setHeight(25);
    obj.label76:setField("bonus11");
    obj.label76:setName("label76");
    obj.label76:setFontColor("white");
    obj.label76:setTextTrimming("none");
    obj.label76:setWordWrap(false);
    obj.label76:setAutoSize(true);

    obj.dataLink36 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink36:setParent(obj.layout60);
    obj.dataLink36:setFields({'base11', 'bonus11'});
    obj.dataLink36:setName("dataLink36");

    obj.dataLink37 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink37:setParent(obj.layout60);
    obj.dataLink37:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink37:setName("dataLink37");

    obj.edit95 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit95:setParent(obj.layout60);
    obj.edit95:setVertTextAlign("center");
    obj.edit95:setLeft(210);
    obj.edit95:setTop(0);
    obj.edit95:setWidth(30);
    obj.edit95:setHeight(25);
    obj.edit95:setField("conhecidas11");
    obj.edit95:setType("number");
    obj.edit95:setName("edit95");

    obj.label77 = gui.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.layout60);
    obj.label77:setVertTextAlign("center");
    obj.label77:setLeft(270);
    obj.label77:setTop(0);
    obj.label77:setWidth(30);
    obj.label77:setHeight(25);
    obj.label77:setField("cd11");
    obj.label77:setName("label77");
    obj.label77:setFontColor("white");
    obj.label77:setTextTrimming("none");
    obj.label77:setWordWrap(false);
    obj.label77:setAutoSize(true);

    obj.dataLink38 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink38:setParent(obj.layout60);
    obj.dataLink38:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink38:setName("dataLink38");

    obj.layout61 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.layout57);
    obj.layout61:setLeft(0);
    obj.layout61:setTop(115);
    obj.layout61:setWidth(350);
    obj.layout61:setHeight(25);
    obj.layout61:setName("layout61");

    obj.label78 = gui.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.layout61);
    obj.label78:setVertTextAlign("center");
    obj.label78:setLeft(10);
    obj.label78:setTop(3);
    obj.label78:setWidth(25);
    obj.label78:setHeight(22);
    obj.label78:setText("12");
    obj.label78:setName("label78");
    obj.label78:setFontColor("white");
    obj.label78:setTextTrimming("none");
    obj.label78:setWordWrap(false);
    obj.label78:setAutoSize(true);

    obj.edit96 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit96:setParent(obj.layout61);
    obj.edit96:setVertTextAlign("center");
    obj.edit96:setLeft(45);
    obj.edit96:setTop(0);
    obj.edit96:setWidth(30);
    obj.edit96:setHeight(25);
    obj.edit96:setField("total12");
    obj.edit96:setType("number");
    obj.edit96:setName("edit96");

    obj.edit97 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit97:setParent(obj.layout61);
    obj.edit97:setVertTextAlign("center");
    obj.edit97:setLeft(85);
    obj.edit97:setTop(0);
    obj.edit97:setWidth(30);
    obj.edit97:setHeight(25);
    obj.edit97:setField("base12");
    obj.edit97:setType("number");
    obj.edit97:setName("edit97");

    obj.label79 = gui.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.layout61);
    obj.label79:setVertTextAlign("center");
    obj.label79:setLeft(140);
    obj.label79:setTop(0);
    obj.label79:setWidth(30);
    obj.label79:setHeight(25);
    obj.label79:setField("bonus12");
    obj.label79:setName("label79");
    obj.label79:setFontColor("white");
    obj.label79:setTextTrimming("none");
    obj.label79:setWordWrap(false);
    obj.label79:setAutoSize(true);

    obj.dataLink39 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink39:setParent(obj.layout61);
    obj.dataLink39:setFields({'base12', 'bonus12'});
    obj.dataLink39:setName("dataLink39");

    obj.dataLink40 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink40:setParent(obj.layout61);
    obj.dataLink40:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink40:setName("dataLink40");

    obj.edit98 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit98:setParent(obj.layout61);
    obj.edit98:setVertTextAlign("center");
    obj.edit98:setLeft(210);
    obj.edit98:setTop(0);
    obj.edit98:setWidth(30);
    obj.edit98:setHeight(25);
    obj.edit98:setField("conhecidas12");
    obj.edit98:setType("number");
    obj.edit98:setName("edit98");

    obj.label80 = gui.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.layout61);
    obj.label80:setVertTextAlign("center");
    obj.label80:setLeft(270);
    obj.label80:setTop(0);
    obj.label80:setWidth(30);
    obj.label80:setHeight(25);
    obj.label80:setField("cd12");
    obj.label80:setName("label80");
    obj.label80:setFontColor("white");
    obj.label80:setTextTrimming("none");
    obj.label80:setWordWrap(false);
    obj.label80:setAutoSize(true);

    obj.dataLink41 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink41:setParent(obj.layout61);
    obj.dataLink41:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink41:setName("dataLink41");

    obj.layout62 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.layout57);
    obj.layout62:setLeft(0);
    obj.layout62:setTop(145);
    obj.layout62:setWidth(350);
    obj.layout62:setHeight(25);
    obj.layout62:setName("layout62");

    obj.label81 = gui.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.layout62);
    obj.label81:setVertTextAlign("center");
    obj.label81:setLeft(10);
    obj.label81:setTop(3);
    obj.label81:setWidth(25);
    obj.label81:setHeight(22);
    obj.label81:setText("13");
    obj.label81:setName("label81");
    obj.label81:setFontColor("white");
    obj.label81:setTextTrimming("none");
    obj.label81:setWordWrap(false);
    obj.label81:setAutoSize(true);

    obj.edit99 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit99:setParent(obj.layout62);
    obj.edit99:setVertTextAlign("center");
    obj.edit99:setLeft(45);
    obj.edit99:setTop(0);
    obj.edit99:setWidth(30);
    obj.edit99:setHeight(25);
    obj.edit99:setField("total13");
    obj.edit99:setType("number");
    obj.edit99:setName("edit99");

    obj.edit100 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit100:setParent(obj.layout62);
    obj.edit100:setVertTextAlign("center");
    obj.edit100:setLeft(85);
    obj.edit100:setTop(0);
    obj.edit100:setWidth(30);
    obj.edit100:setHeight(25);
    obj.edit100:setField("base13");
    obj.edit100:setType("number");
    obj.edit100:setName("edit100");

    obj.label82 = gui.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.layout62);
    obj.label82:setVertTextAlign("center");
    obj.label82:setLeft(140);
    obj.label82:setTop(0);
    obj.label82:setWidth(30);
    obj.label82:setHeight(25);
    obj.label82:setField("bonus13");
    obj.label82:setName("label82");
    obj.label82:setFontColor("white");
    obj.label82:setTextTrimming("none");
    obj.label82:setWordWrap(false);
    obj.label82:setAutoSize(true);

    obj.dataLink42 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink42:setParent(obj.layout62);
    obj.dataLink42:setFields({'base13', 'bonus13'});
    obj.dataLink42:setName("dataLink42");

    obj.dataLink43 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink43:setParent(obj.layout62);
    obj.dataLink43:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink43:setName("dataLink43");

    obj.edit101 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit101:setParent(obj.layout62);
    obj.edit101:setVertTextAlign("center");
    obj.edit101:setLeft(210);
    obj.edit101:setTop(0);
    obj.edit101:setWidth(30);
    obj.edit101:setHeight(25);
    obj.edit101:setField("conhecidas13");
    obj.edit101:setType("number");
    obj.edit101:setName("edit101");

    obj.label83 = gui.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.layout62);
    obj.label83:setVertTextAlign("center");
    obj.label83:setLeft(270);
    obj.label83:setTop(0);
    obj.label83:setWidth(30);
    obj.label83:setHeight(25);
    obj.label83:setField("cd13");
    obj.label83:setName("label83");
    obj.label83:setFontColor("white");
    obj.label83:setTextTrimming("none");
    obj.label83:setWordWrap(false);
    obj.label83:setAutoSize(true);

    obj.dataLink44 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink44:setParent(obj.layout62);
    obj.dataLink44:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink44:setName("dataLink44");

    obj.layout63 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.layout57);
    obj.layout63:setLeft(0);
    obj.layout63:setTop(175);
    obj.layout63:setWidth(350);
    obj.layout63:setHeight(25);
    obj.layout63:setName("layout63");

    obj.label84 = gui.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.layout63);
    obj.label84:setVertTextAlign("center");
    obj.label84:setLeft(10);
    obj.label84:setTop(3);
    obj.label84:setWidth(25);
    obj.label84:setHeight(22);
    obj.label84:setText("14");
    obj.label84:setName("label84");
    obj.label84:setFontColor("white");
    obj.label84:setTextTrimming("none");
    obj.label84:setWordWrap(false);
    obj.label84:setAutoSize(true);

    obj.edit102 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit102:setParent(obj.layout63);
    obj.edit102:setVertTextAlign("center");
    obj.edit102:setLeft(45);
    obj.edit102:setTop(0);
    obj.edit102:setWidth(30);
    obj.edit102:setHeight(25);
    obj.edit102:setField("total14");
    obj.edit102:setType("number");
    obj.edit102:setName("edit102");

    obj.edit103 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit103:setParent(obj.layout63);
    obj.edit103:setVertTextAlign("center");
    obj.edit103:setLeft(85);
    obj.edit103:setTop(0);
    obj.edit103:setWidth(30);
    obj.edit103:setHeight(25);
    obj.edit103:setField("base14");
    obj.edit103:setType("number");
    obj.edit103:setName("edit103");

    obj.label85 = gui.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.layout63);
    obj.label85:setVertTextAlign("center");
    obj.label85:setLeft(140);
    obj.label85:setTop(0);
    obj.label85:setWidth(30);
    obj.label85:setHeight(25);
    obj.label85:setField("bonus14");
    obj.label85:setName("label85");
    obj.label85:setFontColor("white");
    obj.label85:setTextTrimming("none");
    obj.label85:setWordWrap(false);
    obj.label85:setAutoSize(true);

    obj.dataLink45 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink45:setParent(obj.layout63);
    obj.dataLink45:setFields({'base14', 'bonus14'});
    obj.dataLink45:setName("dataLink45");

    obj.dataLink46 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink46:setParent(obj.layout63);
    obj.dataLink46:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink46:setName("dataLink46");

    obj.edit104 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit104:setParent(obj.layout63);
    obj.edit104:setVertTextAlign("center");
    obj.edit104:setLeft(210);
    obj.edit104:setTop(0);
    obj.edit104:setWidth(30);
    obj.edit104:setHeight(25);
    obj.edit104:setField("conhecidas14");
    obj.edit104:setType("number");
    obj.edit104:setName("edit104");

    obj.label86 = gui.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.layout63);
    obj.label86:setVertTextAlign("center");
    obj.label86:setLeft(270);
    obj.label86:setTop(0);
    obj.label86:setWidth(30);
    obj.label86:setHeight(25);
    obj.label86:setField("cd14");
    obj.label86:setName("label86");
    obj.label86:setFontColor("white");
    obj.label86:setTextTrimming("none");
    obj.label86:setWordWrap(false);
    obj.label86:setAutoSize(true);

    obj.dataLink47 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink47:setParent(obj.layout63);
    obj.dataLink47:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink47:setName("dataLink47");

    obj.layout64 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.layout57);
    obj.layout64:setLeft(0);
    obj.layout64:setTop(205);
    obj.layout64:setWidth(350);
    obj.layout64:setHeight(25);
    obj.layout64:setName("layout64");

    obj.label87 = gui.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.layout64);
    obj.label87:setVertTextAlign("center");
    obj.label87:setLeft(10);
    obj.label87:setTop(3);
    obj.label87:setWidth(25);
    obj.label87:setHeight(22);
    obj.label87:setText("15");
    obj.label87:setName("label87");
    obj.label87:setFontColor("white");
    obj.label87:setTextTrimming("none");
    obj.label87:setWordWrap(false);
    obj.label87:setAutoSize(true);

    obj.edit105 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit105:setParent(obj.layout64);
    obj.edit105:setVertTextAlign("center");
    obj.edit105:setLeft(45);
    obj.edit105:setTop(0);
    obj.edit105:setWidth(30);
    obj.edit105:setHeight(25);
    obj.edit105:setField("total15");
    obj.edit105:setType("number");
    obj.edit105:setName("edit105");

    obj.edit106 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit106:setParent(obj.layout64);
    obj.edit106:setVertTextAlign("center");
    obj.edit106:setLeft(85);
    obj.edit106:setTop(0);
    obj.edit106:setWidth(30);
    obj.edit106:setHeight(25);
    obj.edit106:setField("base15");
    obj.edit106:setType("number");
    obj.edit106:setName("edit106");

    obj.label88 = gui.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.layout64);
    obj.label88:setVertTextAlign("center");
    obj.label88:setLeft(140);
    obj.label88:setTop(0);
    obj.label88:setWidth(30);
    obj.label88:setHeight(25);
    obj.label88:setField("bonus15");
    obj.label88:setName("label88");
    obj.label88:setFontColor("white");
    obj.label88:setTextTrimming("none");
    obj.label88:setWordWrap(false);
    obj.label88:setAutoSize(true);

    obj.dataLink48 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink48:setParent(obj.layout64);
    obj.dataLink48:setFields({'base15', 'bonus15'});
    obj.dataLink48:setName("dataLink48");

    obj.dataLink49 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink49:setParent(obj.layout64);
    obj.dataLink49:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink49:setName("dataLink49");

    obj.edit107 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit107:setParent(obj.layout64);
    obj.edit107:setVertTextAlign("center");
    obj.edit107:setLeft(210);
    obj.edit107:setTop(0);
    obj.edit107:setWidth(30);
    obj.edit107:setHeight(25);
    obj.edit107:setField("conhecidas15");
    obj.edit107:setType("number");
    obj.edit107:setName("edit107");

    obj.label89 = gui.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.layout64);
    obj.label89:setVertTextAlign("center");
    obj.label89:setLeft(270);
    obj.label89:setTop(0);
    obj.label89:setWidth(30);
    obj.label89:setHeight(25);
    obj.label89:setField("cd15");
    obj.label89:setName("label89");
    obj.label89:setFontColor("white");
    obj.label89:setTextTrimming("none");
    obj.label89:setWordWrap(false);
    obj.label89:setAutoSize(true);

    obj.dataLink50 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink50:setParent(obj.layout64);
    obj.dataLink50:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink50:setName("dataLink50");

    obj.layout65 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.layout57);
    obj.layout65:setLeft(0);
    obj.layout65:setTop(235);
    obj.layout65:setWidth(350);
    obj.layout65:setHeight(25);
    obj.layout65:setName("layout65");

    obj.label90 = gui.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.layout65);
    obj.label90:setVertTextAlign("center");
    obj.label90:setLeft(10);
    obj.label90:setTop(3);
    obj.label90:setWidth(25);
    obj.label90:setHeight(22);
    obj.label90:setText("16");
    obj.label90:setName("label90");
    obj.label90:setFontColor("white");
    obj.label90:setTextTrimming("none");
    obj.label90:setWordWrap(false);
    obj.label90:setAutoSize(true);

    obj.edit108 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit108:setParent(obj.layout65);
    obj.edit108:setVertTextAlign("center");
    obj.edit108:setLeft(45);
    obj.edit108:setTop(0);
    obj.edit108:setWidth(30);
    obj.edit108:setHeight(25);
    obj.edit108:setField("total16");
    obj.edit108:setType("number");
    obj.edit108:setName("edit108");

    obj.edit109 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit109:setParent(obj.layout65);
    obj.edit109:setVertTextAlign("center");
    obj.edit109:setLeft(85);
    obj.edit109:setTop(0);
    obj.edit109:setWidth(30);
    obj.edit109:setHeight(25);
    obj.edit109:setField("base16");
    obj.edit109:setType("number");
    obj.edit109:setName("edit109");

    obj.label91 = gui.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.layout65);
    obj.label91:setVertTextAlign("center");
    obj.label91:setLeft(140);
    obj.label91:setTop(0);
    obj.label91:setWidth(30);
    obj.label91:setHeight(25);
    obj.label91:setField("bonus16");
    obj.label91:setName("label91");
    obj.label91:setFontColor("white");
    obj.label91:setTextTrimming("none");
    obj.label91:setWordWrap(false);
    obj.label91:setAutoSize(true);

    obj.dataLink51 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink51:setParent(obj.layout65);
    obj.dataLink51:setFields({'base16', 'bonus16'});
    obj.dataLink51:setName("dataLink51");

    obj.dataLink52 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink52:setParent(obj.layout65);
    obj.dataLink52:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink52:setName("dataLink52");

    obj.edit110 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit110:setParent(obj.layout65);
    obj.edit110:setVertTextAlign("center");
    obj.edit110:setLeft(210);
    obj.edit110:setTop(0);
    obj.edit110:setWidth(30);
    obj.edit110:setHeight(25);
    obj.edit110:setField("conhecidas16");
    obj.edit110:setType("number");
    obj.edit110:setName("edit110");

    obj.label92 = gui.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.layout65);
    obj.label92:setVertTextAlign("center");
    obj.label92:setLeft(270);
    obj.label92:setTop(0);
    obj.label92:setWidth(30);
    obj.label92:setHeight(25);
    obj.label92:setField("cd16");
    obj.label92:setName("label92");
    obj.label92:setFontColor("white");
    obj.label92:setTextTrimming("none");
    obj.label92:setWordWrap(false);
    obj.label92:setAutoSize(true);

    obj.dataLink53 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink53:setParent(obj.layout65);
    obj.dataLink53:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink53:setName("dataLink53");

    obj.layout66 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.layout57);
    obj.layout66:setLeft(0);
    obj.layout66:setTop(265);
    obj.layout66:setWidth(350);
    obj.layout66:setHeight(25);
    obj.layout66:setName("layout66");

    obj.label93 = gui.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.layout66);
    obj.label93:setVertTextAlign("center");
    obj.label93:setLeft(10);
    obj.label93:setTop(3);
    obj.label93:setWidth(25);
    obj.label93:setHeight(22);
    obj.label93:setText("17");
    obj.label93:setName("label93");
    obj.label93:setFontColor("white");
    obj.label93:setTextTrimming("none");
    obj.label93:setWordWrap(false);
    obj.label93:setAutoSize(true);

    obj.edit111 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit111:setParent(obj.layout66);
    obj.edit111:setVertTextAlign("center");
    obj.edit111:setLeft(45);
    obj.edit111:setTop(0);
    obj.edit111:setWidth(30);
    obj.edit111:setHeight(25);
    obj.edit111:setField("total17");
    obj.edit111:setType("number");
    obj.edit111:setName("edit111");

    obj.edit112 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit112:setParent(obj.layout66);
    obj.edit112:setVertTextAlign("center");
    obj.edit112:setLeft(85);
    obj.edit112:setTop(0);
    obj.edit112:setWidth(30);
    obj.edit112:setHeight(25);
    obj.edit112:setField("base17");
    obj.edit112:setType("number");
    obj.edit112:setName("edit112");

    obj.label94 = gui.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.layout66);
    obj.label94:setVertTextAlign("center");
    obj.label94:setLeft(140);
    obj.label94:setTop(0);
    obj.label94:setWidth(30);
    obj.label94:setHeight(25);
    obj.label94:setField("bonus17");
    obj.label94:setName("label94");
    obj.label94:setFontColor("white");
    obj.label94:setTextTrimming("none");
    obj.label94:setWordWrap(false);
    obj.label94:setAutoSize(true);

    obj.dataLink54 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink54:setParent(obj.layout66);
    obj.dataLink54:setFields({'base17', 'bonus17'});
    obj.dataLink54:setName("dataLink54");

    obj.dataLink55 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink55:setParent(obj.layout66);
    obj.dataLink55:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink55:setName("dataLink55");

    obj.edit113 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit113:setParent(obj.layout66);
    obj.edit113:setVertTextAlign("center");
    obj.edit113:setLeft(210);
    obj.edit113:setTop(0);
    obj.edit113:setWidth(30);
    obj.edit113:setHeight(25);
    obj.edit113:setField("conhecidas17");
    obj.edit113:setType("number");
    obj.edit113:setName("edit113");

    obj.label95 = gui.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.layout66);
    obj.label95:setVertTextAlign("center");
    obj.label95:setLeft(270);
    obj.label95:setTop(0);
    obj.label95:setWidth(30);
    obj.label95:setHeight(25);
    obj.label95:setField("cd17");
    obj.label95:setName("label95");
    obj.label95:setFontColor("white");
    obj.label95:setTextTrimming("none");
    obj.label95:setWordWrap(false);
    obj.label95:setAutoSize(true);

    obj.dataLink56 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink56:setParent(obj.layout66);
    obj.dataLink56:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink56:setName("dataLink56");

    obj.layout67 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.layout57);
    obj.layout67:setLeft(0);
    obj.layout67:setTop(295);
    obj.layout67:setWidth(350);
    obj.layout67:setHeight(25);
    obj.layout67:setName("layout67");

    obj.label96 = gui.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.layout67);
    obj.label96:setVertTextAlign("center");
    obj.label96:setLeft(10);
    obj.label96:setTop(3);
    obj.label96:setWidth(25);
    obj.label96:setHeight(22);
    obj.label96:setText("18");
    obj.label96:setName("label96");
    obj.label96:setFontColor("white");
    obj.label96:setTextTrimming("none");
    obj.label96:setWordWrap(false);
    obj.label96:setAutoSize(true);

    obj.edit114 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit114:setParent(obj.layout67);
    obj.edit114:setVertTextAlign("center");
    obj.edit114:setLeft(45);
    obj.edit114:setTop(0);
    obj.edit114:setWidth(30);
    obj.edit114:setHeight(25);
    obj.edit114:setField("total18");
    obj.edit114:setType("number");
    obj.edit114:setName("edit114");

    obj.edit115 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit115:setParent(obj.layout67);
    obj.edit115:setVertTextAlign("center");
    obj.edit115:setLeft(85);
    obj.edit115:setTop(0);
    obj.edit115:setWidth(30);
    obj.edit115:setHeight(25);
    obj.edit115:setField("base18");
    obj.edit115:setType("number");
    obj.edit115:setName("edit115");

    obj.label97 = gui.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.layout67);
    obj.label97:setVertTextAlign("center");
    obj.label97:setLeft(140);
    obj.label97:setTop(0);
    obj.label97:setWidth(30);
    obj.label97:setHeight(25);
    obj.label97:setField("bonus18");
    obj.label97:setName("label97");
    obj.label97:setFontColor("white");
    obj.label97:setTextTrimming("none");
    obj.label97:setWordWrap(false);
    obj.label97:setAutoSize(true);

    obj.dataLink57 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink57:setParent(obj.layout67);
    obj.dataLink57:setFields({'base18', 'bonus18'});
    obj.dataLink57:setName("dataLink57");

    obj.dataLink58 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink58:setParent(obj.layout67);
    obj.dataLink58:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink58:setName("dataLink58");

    obj.edit116 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit116:setParent(obj.layout67);
    obj.edit116:setVertTextAlign("center");
    obj.edit116:setLeft(210);
    obj.edit116:setTop(0);
    obj.edit116:setWidth(30);
    obj.edit116:setHeight(25);
    obj.edit116:setField("conhecidas18");
    obj.edit116:setType("number");
    obj.edit116:setName("edit116");

    obj.label98 = gui.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.layout67);
    obj.label98:setVertTextAlign("center");
    obj.label98:setLeft(270);
    obj.label98:setTop(0);
    obj.label98:setWidth(30);
    obj.label98:setHeight(25);
    obj.label98:setField("cd18");
    obj.label98:setName("label98");
    obj.label98:setFontColor("white");
    obj.label98:setTextTrimming("none");
    obj.label98:setWordWrap(false);
    obj.label98:setAutoSize(true);

    obj.dataLink59 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink59:setParent(obj.layout67);
    obj.dataLink59:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink59:setName("dataLink59");

    obj.layout68 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.layout57);
    obj.layout68:setLeft(0);
    obj.layout68:setTop(325);
    obj.layout68:setWidth(350);
    obj.layout68:setHeight(25);
    obj.layout68:setName("layout68");

    obj.label99 = gui.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.layout68);
    obj.label99:setVertTextAlign("center");
    obj.label99:setLeft(10);
    obj.label99:setTop(3);
    obj.label99:setWidth(25);
    obj.label99:setHeight(22);
    obj.label99:setText("19");
    obj.label99:setName("label99");
    obj.label99:setFontColor("white");
    obj.label99:setTextTrimming("none");
    obj.label99:setWordWrap(false);
    obj.label99:setAutoSize(true);

    obj.edit117 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit117:setParent(obj.layout68);
    obj.edit117:setVertTextAlign("center");
    obj.edit117:setLeft(45);
    obj.edit117:setTop(0);
    obj.edit117:setWidth(30);
    obj.edit117:setHeight(25);
    obj.edit117:setField("total19");
    obj.edit117:setType("number");
    obj.edit117:setName("edit117");

    obj.edit118 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit118:setParent(obj.layout68);
    obj.edit118:setVertTextAlign("center");
    obj.edit118:setLeft(85);
    obj.edit118:setTop(0);
    obj.edit118:setWidth(30);
    obj.edit118:setHeight(25);
    obj.edit118:setField("base19");
    obj.edit118:setType("number");
    obj.edit118:setName("edit118");

    obj.label100 = gui.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.layout68);
    obj.label100:setVertTextAlign("center");
    obj.label100:setLeft(140);
    obj.label100:setTop(0);
    obj.label100:setWidth(30);
    obj.label100:setHeight(25);
    obj.label100:setField("bonus19");
    obj.label100:setName("label100");
    obj.label100:setFontColor("white");
    obj.label100:setTextTrimming("none");
    obj.label100:setWordWrap(false);
    obj.label100:setAutoSize(true);

    obj.dataLink60 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink60:setParent(obj.layout68);
    obj.dataLink60:setFields({'base19', 'bonus19'});
    obj.dataLink60:setName("dataLink60");

    obj.dataLink61 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink61:setParent(obj.layout68);
    obj.dataLink61:setFields({'atributoBonus', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink61:setName("dataLink61");

    obj.edit119 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit119:setParent(obj.layout68);
    obj.edit119:setVertTextAlign("center");
    obj.edit119:setLeft(210);
    obj.edit119:setTop(0);
    obj.edit119:setWidth(30);
    obj.edit119:setHeight(25);
    obj.edit119:setField("conhecidas19");
    obj.edit119:setType("number");
    obj.edit119:setName("edit119");

    obj.label101 = gui.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.layout68);
    obj.label101:setVertTextAlign("center");
    obj.label101:setLeft(270);
    obj.label101:setTop(0);
    obj.label101:setWidth(30);
    obj.label101:setHeight(25);
    obj.label101:setField("cd19");
    obj.label101:setName("label101");
    obj.label101:setFontColor("white");
    obj.label101:setTextTrimming("none");
    obj.label101:setWordWrap(false);
    obj.label101:setAutoSize(true);

    obj.dataLink62 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink62:setParent(obj.layout68);
    obj.dataLink62:setFields({'atributoCD', 'for1', 'for3', 'for5', 'des1', 'des3', 'des5', 'des2', 'des4', 'des6', 'con1', 'con3', 'con5', 'int1', 'int3', 'int5', 'sab1', 'sab3', 'sab5', 'car1', 'car3', 'car5'});
    obj.dataLink62:setName("dataLink62");

    obj.layout69 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.layoutMagiasAprimoradas);
    obj.layout69:setLeft(50);
    obj.layout69:setTop(360);
    obj.layout69:setWidth(280);
    obj.layout69:setHeight(180);
    obj.layout69:setName("layout69");

    obj.label102 = gui.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.layout69);
    obj.label102:setVertTextAlign("center");
    obj.label102:setLeft(0);
    obj.label102:setTop(0);
    obj.label102:setWidth(100);
    obj.label102:setHeight(20);
    obj.label102:setText("Magias Nível 16");
    obj.label102:setName("label102");
    obj.label102:setFontColor("white");
    obj.label102:setTextTrimming("none");
    obj.label102:setWordWrap(false);
    obj.label102:setAutoSize(true);

    obj.textEditor31 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor31:setParent(obj.layout69);
    obj.textEditor31:setTop(20);
    obj.textEditor31:setWidth(280);
    obj.textEditor31:setHeight(160);
    obj.textEditor31:setFontSize(12);
    obj.textEditor31:setField("circulo16");
    obj.textEditor31:setName("textEditor31");

    obj.layout70 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.layoutMagiasAprimoradas);
    obj.layout70:setLeft(340);
    obj.layout70:setTop(0);
    obj.layout70:setWidth(280);
    obj.layout70:setHeight(180);
    obj.layout70:setName("layout70");

    obj.label103 = gui.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.layout70);
    obj.label103:setVertTextAlign("center");
    obj.label103:setLeft(0);
    obj.label103:setTop(0);
    obj.label103:setWidth(100);
    obj.label103:setHeight(20);
    obj.label103:setText("Magias Nível 10");
    obj.label103:setName("label103");
    obj.label103:setFontColor("white");
    obj.label103:setTextTrimming("none");
    obj.label103:setWordWrap(false);
    obj.label103:setAutoSize(true);

    obj.textEditor32 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor32:setParent(obj.layout70);
    obj.textEditor32:setTop(20);
    obj.textEditor32:setWidth(280);
    obj.textEditor32:setHeight(160);
    obj.textEditor32:setFontSize(12);
    obj.textEditor32:setField("circulo10");
    obj.textEditor32:setName("textEditor32");

    obj.layout71 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.layoutMagiasAprimoradas);
    obj.layout71:setLeft(340);
    obj.layout71:setTop(180);
    obj.layout71:setWidth(280);
    obj.layout71:setHeight(180);
    obj.layout71:setName("layout71");

    obj.label104 = gui.fromHandle(_obj_newObject("label"));
    obj.label104:setParent(obj.layout71);
    obj.label104:setVertTextAlign("center");
    obj.label104:setLeft(0);
    obj.label104:setTop(0);
    obj.label104:setWidth(100);
    obj.label104:setHeight(20);
    obj.label104:setText("Magias Nível 13");
    obj.label104:setName("label104");
    obj.label104:setFontColor("white");
    obj.label104:setTextTrimming("none");
    obj.label104:setWordWrap(false);
    obj.label104:setAutoSize(true);

    obj.textEditor33 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor33:setParent(obj.layout71);
    obj.textEditor33:setTop(20);
    obj.textEditor33:setWidth(280);
    obj.textEditor33:setHeight(160);
    obj.textEditor33:setFontSize(12);
    obj.textEditor33:setField("circulo13");
    obj.textEditor33:setName("textEditor33");

    obj.layout72 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.layoutMagiasAprimoradas);
    obj.layout72:setLeft(340);
    obj.layout72:setTop(360);
    obj.layout72:setWidth(280);
    obj.layout72:setHeight(180);
    obj.layout72:setName("layout72");

    obj.label105 = gui.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.layout72);
    obj.label105:setVertTextAlign("center");
    obj.label105:setLeft(0);
    obj.label105:setTop(0);
    obj.label105:setWidth(100);
    obj.label105:setHeight(20);
    obj.label105:setText("Magias Nível 17");
    obj.label105:setName("label105");
    obj.label105:setFontColor("white");
    obj.label105:setTextTrimming("none");
    obj.label105:setWordWrap(false);
    obj.label105:setAutoSize(true);

    obj.textEditor34 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor34:setParent(obj.layout72);
    obj.textEditor34:setTop(20);
    obj.textEditor34:setWidth(280);
    obj.textEditor34:setHeight(160);
    obj.textEditor34:setFontSize(12);
    obj.textEditor34:setField("circulo17");
    obj.textEditor34:setName("textEditor34");

    obj.layout73 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.layoutMagiasAprimoradas);
    obj.layout73:setLeft(630);
    obj.layout73:setTop(0);
    obj.layout73:setWidth(280);
    obj.layout73:setHeight(180);
    obj.layout73:setName("layout73");

    obj.label106 = gui.fromHandle(_obj_newObject("label"));
    obj.label106:setParent(obj.layout73);
    obj.label106:setVertTextAlign("center");
    obj.label106:setLeft(0);
    obj.label106:setTop(0);
    obj.label106:setWidth(100);
    obj.label106:setHeight(20);
    obj.label106:setText("Magias Nível 11");
    obj.label106:setName("label106");
    obj.label106:setFontColor("white");
    obj.label106:setTextTrimming("none");
    obj.label106:setWordWrap(false);
    obj.label106:setAutoSize(true);

    obj.textEditor35 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor35:setParent(obj.layout73);
    obj.textEditor35:setTop(20);
    obj.textEditor35:setWidth(280);
    obj.textEditor35:setHeight(160);
    obj.textEditor35:setFontSize(12);
    obj.textEditor35:setField("circulo11");
    obj.textEditor35:setName("textEditor35");

    obj.layout74 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.layoutMagiasAprimoradas);
    obj.layout74:setLeft(630);
    obj.layout74:setTop(180);
    obj.layout74:setWidth(280);
    obj.layout74:setHeight(180);
    obj.layout74:setName("layout74");

    obj.label107 = gui.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.layout74);
    obj.label107:setVertTextAlign("center");
    obj.label107:setLeft(0);
    obj.label107:setTop(0);
    obj.label107:setWidth(100);
    obj.label107:setHeight(20);
    obj.label107:setText("Magias Nível 14");
    obj.label107:setName("label107");
    obj.label107:setFontColor("white");
    obj.label107:setTextTrimming("none");
    obj.label107:setWordWrap(false);
    obj.label107:setAutoSize(true);

    obj.textEditor36 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor36:setParent(obj.layout74);
    obj.textEditor36:setTop(20);
    obj.textEditor36:setWidth(280);
    obj.textEditor36:setHeight(160);
    obj.textEditor36:setFontSize(12);
    obj.textEditor36:setField("circulo14");
    obj.textEditor36:setName("textEditor36");

    obj.layout75 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.layoutMagiasAprimoradas);
    obj.layout75:setLeft(630);
    obj.layout75:setTop(360);
    obj.layout75:setWidth(280);
    obj.layout75:setHeight(180);
    obj.layout75:setName("layout75");

    obj.label108 = gui.fromHandle(_obj_newObject("label"));
    obj.label108:setParent(obj.layout75);
    obj.label108:setVertTextAlign("center");
    obj.label108:setLeft(0);
    obj.label108:setTop(0);
    obj.label108:setWidth(100);
    obj.label108:setHeight(20);
    obj.label108:setText("Magias Nível 18");
    obj.label108:setName("label108");
    obj.label108:setFontColor("white");
    obj.label108:setTextTrimming("none");
    obj.label108:setWordWrap(false);
    obj.label108:setAutoSize(true);

    obj.textEditor37 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor37:setParent(obj.layout75);
    obj.textEditor37:setTop(20);
    obj.textEditor37:setWidth(280);
    obj.textEditor37:setHeight(160);
    obj.textEditor37:setFontSize(12);
    obj.textEditor37:setField("circulo18");
    obj.textEditor37:setName("textEditor37");

    obj.layout76 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.layoutMagiasAprimoradas);
    obj.layout76:setLeft(920);
    obj.layout76:setTop(0);
    obj.layout76:setWidth(280);
    obj.layout76:setHeight(180);
    obj.layout76:setName("layout76");

    obj.label109 = gui.fromHandle(_obj_newObject("label"));
    obj.label109:setParent(obj.layout76);
    obj.label109:setVertTextAlign("center");
    obj.label109:setLeft(0);
    obj.label109:setTop(0);
    obj.label109:setWidth(100);
    obj.label109:setHeight(20);
    obj.label109:setText("Magias Nível 12");
    obj.label109:setName("label109");
    obj.label109:setFontColor("white");
    obj.label109:setTextTrimming("none");
    obj.label109:setWordWrap(false);
    obj.label109:setAutoSize(true);

    obj.textEditor38 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor38:setParent(obj.layout76);
    obj.textEditor38:setTop(20);
    obj.textEditor38:setWidth(280);
    obj.textEditor38:setHeight(160);
    obj.textEditor38:setFontSize(12);
    obj.textEditor38:setField("circulo12");
    obj.textEditor38:setName("textEditor38");

    obj.layout77 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.layoutMagiasAprimoradas);
    obj.layout77:setLeft(920);
    obj.layout77:setTop(180);
    obj.layout77:setWidth(280);
    obj.layout77:setHeight(180);
    obj.layout77:setName("layout77");

    obj.label110 = gui.fromHandle(_obj_newObject("label"));
    obj.label110:setParent(obj.layout77);
    obj.label110:setVertTextAlign("center");
    obj.label110:setLeft(0);
    obj.label110:setTop(0);
    obj.label110:setWidth(100);
    obj.label110:setHeight(20);
    obj.label110:setText("Magias Nível 15");
    obj.label110:setName("label110");
    obj.label110:setFontColor("white");
    obj.label110:setTextTrimming("none");
    obj.label110:setWordWrap(false);
    obj.label110:setAutoSize(true);

    obj.textEditor39 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor39:setParent(obj.layout77);
    obj.textEditor39:setTop(20);
    obj.textEditor39:setWidth(280);
    obj.textEditor39:setHeight(160);
    obj.textEditor39:setFontSize(12);
    obj.textEditor39:setField("circulo15");
    obj.textEditor39:setName("textEditor39");

    obj.layout78 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.layoutMagiasAprimoradas);
    obj.layout78:setLeft(920);
    obj.layout78:setTop(360);
    obj.layout78:setWidth(280);
    obj.layout78:setHeight(180);
    obj.layout78:setName("layout78");

    obj.label111 = gui.fromHandle(_obj_newObject("label"));
    obj.label111:setParent(obj.layout78);
    obj.label111:setVertTextAlign("center");
    obj.label111:setLeft(0);
    obj.label111:setTop(0);
    obj.label111:setWidth(100);
    obj.label111:setHeight(20);
    obj.label111:setText("Magias Nível 19");
    obj.label111:setName("label111");
    obj.label111:setFontColor("white");
    obj.label111:setTextTrimming("none");
    obj.label111:setWordWrap(false);
    obj.label111:setAutoSize(true);

    obj.textEditor40 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor40:setParent(obj.layout78);
    obj.textEditor40:setTop(20);
    obj.textEditor40:setWidth(280);
    obj.textEditor40:setHeight(160);
    obj.textEditor40:setFontSize(12);
    obj.textEditor40:setField("circulo19");
    obj.textEditor40:setName("textEditor40");

    obj.comboBox6 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox6:setParent(obj.boxDetalhesDoItem);
    obj.comboBox6:setLeft(10);
    obj.comboBox6:setTop(50);
    obj.comboBox6:setWidth(110);
    obj.comboBox6:setHeight(25);
    obj.comboBox6:setItems({'Magias', 'Signos', 'Magia Epica', 'Magias Aprimoradas'});
    obj.comboBox6:setValues({'1', '2', '7', '8'});
    obj.comboBox6:setValue("1");
    obj.comboBox6:setField("tipoMagia");
    obj.comboBox6:setName("comboBox6");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (self)
            self.rclListaDosItens:append();
        end, obj);

    obj._e_event1 = obj.rclListaDosItens:addEventListener("onSelect",
        function (self)
            local node = self.rclListaDosItens.selectedNode;
            				self.boxDetalhesDoItem.node = node;
            				self.boxDetalhesDoItem.visible = (node ~= nil);
            				limpar();
        end, obj);

    obj._e_event2 = obj.rclListaDosItens:addEventListener("onEndEnumeration",
        function (self)
            if self.rclListaDosItens.selectedNode == nil and sheet ~= nil then
            					local nodes = ndb.getChildNodes(sheet.campoDosItens);               
            					if #nodes > 0 then
            						self.rclListaDosItens.selectedNode = nodes[1];
            					end;
            					limpar();
            				end;
        end, obj);

    obj._e_event3 = obj.button2:addEventListener("onClick",
        function (self)
            local rolagem = rrpg.interpretarRolagem("1d20 +" .. self.boxDetalhesDoItem.node.NC);
            					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
            					mesaDoPersonagem.activeChat:rolarDados(rolagem, "Teste de conjurador de " .. (sheet.nome or "PONHA UM NOME NO PERSONAGEM"));
        end, obj);

    obj._e_event4 = obj.dataLink1:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet~=nil then
            								local mod = (tonumber(self.boxDetalhesDoItem.node.conhecidas0) or 0) + 
            											(tonumber(self.boxDetalhesDoItem.node.conhecidas1) or 0) + 
            											(tonumber(self.boxDetalhesDoItem.node.conhecidas2) or 0)*2 + 
            											(tonumber(self.boxDetalhesDoItem.node.conhecidas3) or 0)*3 + 
            											(tonumber(self.boxDetalhesDoItem.node.conhecidas4) or 0)*4 + 
            											(tonumber(self.boxDetalhesDoItem.node.conhecidas5) or 0)*5 + 
            											(tonumber(self.boxDetalhesDoItem.node.conhecidas6) or 0)*6 + 
            											(tonumber(self.boxDetalhesDoItem.node.conhecidas7) or 0)*7 + 
            											(tonumber(self.boxDetalhesDoItem.node.conhecidas8) or 0)*8 + 
            											(tonumber(self.boxDetalhesDoItem.node.conhecidas9) or 0)*9;
            								self.boxDetalhesDoItem.node.grimorio = mod;
            							end;
        end, obj);

    obj._e_event5 = obj.dataLink2:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total0 = (tonumber(self.boxDetalhesDoItem.node.base0) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus0) or 0);
        end, obj);

    obj._e_event6 = obj.dataLink3:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 0;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus0 = resultado;
        end, obj);

    obj._e_event7 = obj.dataLink4:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 0;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd0 = mod;
        end, obj);

    obj._e_event8 = obj.dataLink5:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total1 = (tonumber(self.boxDetalhesDoItem.node.base1) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus1) or 0);
        end, obj);

    obj._e_event9 = obj.dataLink6:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 1;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus1 = resultado;
        end, obj);

    obj._e_event10 = obj.dataLink7:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 1;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd1 = mod;
        end, obj);

    obj._e_event11 = obj.dataLink8:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total2 = (tonumber(self.boxDetalhesDoItem.node.base2) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus2) or 0);
        end, obj);

    obj._e_event12 = obj.dataLink9:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 2;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus2 = resultado;
        end, obj);

    obj._e_event13 = obj.dataLink10:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 2;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd2 = mod;
        end, obj);

    obj._e_event14 = obj.dataLink11:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total3 = (tonumber(self.boxDetalhesDoItem.node.base3) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus3) or 0);
        end, obj);

    obj._e_event15 = obj.dataLink12:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 3;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus3 = resultado;
        end, obj);

    obj._e_event16 = obj.dataLink13:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 3;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd3 = mod;
        end, obj);

    obj._e_event17 = obj.dataLink14:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total4 = (tonumber(self.boxDetalhesDoItem.node.base4) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus4) or 0);
        end, obj);

    obj._e_event18 = obj.dataLink15:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 4;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus4 = resultado;
        end, obj);

    obj._e_event19 = obj.dataLink16:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 4;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd4 = mod;
        end, obj);

    obj._e_event20 = obj.dataLink17:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total5 = (tonumber(self.boxDetalhesDoItem.node.base5) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus5) or 0);
        end, obj);

    obj._e_event21 = obj.dataLink18:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 5;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus5 = resultado;
        end, obj);

    obj._e_event22 = obj.dataLink19:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 5;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd5 = mod;
        end, obj);

    obj._e_event23 = obj.dataLink20:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total6 = (tonumber(self.boxDetalhesDoItem.node.base6) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus6) or 0);
        end, obj);

    obj._e_event24 = obj.dataLink21:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 6;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus6 = resultado;
        end, obj);

    obj._e_event25 = obj.dataLink22:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 6;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd6 = mod;
        end, obj);

    obj._e_event26 = obj.dataLink23:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total7 = (tonumber(self.boxDetalhesDoItem.node.base7) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus7) or 0);
        end, obj);

    obj._e_event27 = obj.dataLink24:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 7;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus7 = resultado;
        end, obj);

    obj._e_event28 = obj.dataLink25:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 7;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd7 = mod;
        end, obj);

    obj._e_event29 = obj.dataLink26:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total8 = (tonumber(self.boxDetalhesDoItem.node.base8) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus8) or 0);
        end, obj);

    obj._e_event30 = obj.dataLink27:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 8;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus8 = resultado;
        end, obj);

    obj._e_event31 = obj.dataLink28:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 8;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd8 = mod;
        end, obj);

    obj._e_event32 = obj.dataLink29:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total9 = (tonumber(self.boxDetalhesDoItem.node.base9) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus9) or 0);
        end, obj);

    obj._e_event33 = obj.dataLink30:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 9;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus9 = resultado;
        end, obj);

    obj._e_event34 = obj.dataLink31:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 9;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd9 = mod;
        end, obj);

    obj._e_event35 = obj.dataLink32:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						
            						self.boxDetalhesDoItem.node.cdSignos = (10+mod+1) .. "  " .. (10+mod+3) .. "  " .. (10+mod+5) .. "  " .. (10+mod+7) .. "  " .. (10+mod+9);
        end, obj);

    obj._e_event36 = obj.dataLink33:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total10 = (tonumber(self.boxDetalhesDoItem.node.base10) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus10) or 0);
        end, obj);

    obj._e_event37 = obj.dataLink34:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 10;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus10 = resultado;
        end, obj);

    obj._e_event38 = obj.dataLink35:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 10;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd10 = mod;
        end, obj);

    obj._e_event39 = obj.dataLink36:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total11 = (tonumber(self.boxDetalhesDoItem.node.base11) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus11) or 0);
        end, obj);

    obj._e_event40 = obj.dataLink37:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 11;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus11 = resultado;
        end, obj);

    obj._e_event41 = obj.dataLink38:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 11;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd11 = mod;
        end, obj);

    obj._e_event42 = obj.dataLink39:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total12 = (tonumber(self.boxDetalhesDoItem.node.base12) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus12) or 0);
        end, obj);

    obj._e_event43 = obj.dataLink40:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 12;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus12 = resultado;
        end, obj);

    obj._e_event44 = obj.dataLink41:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 12;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd12 = mod;
        end, obj);

    obj._e_event45 = obj.dataLink42:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total13 = (tonumber(self.boxDetalhesDoItem.node.base13) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus13) or 0);
        end, obj);

    obj._e_event46 = obj.dataLink43:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 13;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus13 = resultado;
        end, obj);

    obj._e_event47 = obj.dataLink44:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 13;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd13 = mod;
        end, obj);

    obj._e_event48 = obj.dataLink45:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total14 = (tonumber(self.boxDetalhesDoItem.node.base14) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus14) or 0);
        end, obj);

    obj._e_event49 = obj.dataLink46:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 14;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus14 = resultado;
        end, obj);

    obj._e_event50 = obj.dataLink47:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 14;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd14 = mod;
        end, obj);

    obj._e_event51 = obj.dataLink48:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total15 = (tonumber(self.boxDetalhesDoItem.node.base15) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus15) or 0);
        end, obj);

    obj._e_event52 = obj.dataLink49:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 15;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus15 = resultado;
        end, obj);

    obj._e_event53 = obj.dataLink50:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 15;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd15 = mod;
        end, obj);

    obj._e_event54 = obj.dataLink51:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total16 = (tonumber(self.boxDetalhesDoItem.node.base16) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus16) or 0);
        end, obj);

    obj._e_event55 = obj.dataLink52:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 16;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus16 = resultado;
        end, obj);

    obj._e_event56 = obj.dataLink53:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 16;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd16 = mod;
        end, obj);

    obj._e_event57 = obj.dataLink54:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total17 = (tonumber(self.boxDetalhesDoItem.node.base17) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus17) or 0);
        end, obj);

    obj._e_event58 = obj.dataLink55:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 17;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus17 = resultado;
        end, obj);

    obj._e_event59 = obj.dataLink56:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 17;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd17 = mod;
        end, obj);

    obj._e_event60 = obj.dataLink57:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total18 = (tonumber(self.boxDetalhesDoItem.node.base18) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus18) or 0);
        end, obj);

    obj._e_event61 = obj.dataLink58:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 18;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus18 = resultado;
        end, obj);

    obj._e_event62 = obj.dataLink59:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 18;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd18 = mod;
        end, obj);

    obj._e_event63 = obj.dataLink60:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.boxDetalhesDoItem.node.total19 = (tonumber(self.boxDetalhesDoItem.node.base19) or 0) + (tonumber(self.boxDetalhesDoItem.node.bonus19) or 0);
        end, obj);

    obj._e_event64 = obj.dataLink61:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoBonus;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 19;
            						
            						if nivel==0 then
            							resultado = 0;
            						else 
            							if (nivel>mod) then
            								result = 0;
            							else
            								resultado = mod + 4 - nivel;
            								resultado = math.floor(resultado/4);
            							end;
            						end;
            						
            						self.boxDetalhesDoItem.node.bonus19 = resultado;
        end, obj);

    obj._e_event65 = obj.dataLink62:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local resultado = 0;
            						local mod = 0;
            						local ctrl = self.boxDetalhesDoItem.node.atributoCD;
            						
            						if ctrl=='1' then
            							mod = getFOR();
            						elseif ctrl=='2' then
            							mod = getDES();
            						elseif ctrl=='3' then
            							mod = getCON();
            						elseif ctrl=='4' then
            							mod = getINT();
            						elseif ctrl=='5' then
            							mod = getSAB();
            						elseif ctrl=='6' then
            							mod = getCAR();
            						end;
            						local nivel = 19;
            						
            						mod = 10 + mod + nivel;
            
            						self.boxDetalhesDoItem.node.cd19 = mod;
        end, obj);

    obj._e_event66 = obj.comboBox6:addEventListener("onChange",
        function (self)
            limpar();
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event66);
        __o_rrpgObjs.removeEventListenerById(self._e_event65);
        __o_rrpgObjs.removeEventListenerById(self._e_event64);
        __o_rrpgObjs.removeEventListenerById(self._e_event63);
        __o_rrpgObjs.removeEventListenerById(self._e_event62);
        __o_rrpgObjs.removeEventListenerById(self._e_event61);
        __o_rrpgObjs.removeEventListenerById(self._e_event60);
        __o_rrpgObjs.removeEventListenerById(self._e_event59);
        __o_rrpgObjs.removeEventListenerById(self._e_event58);
        __o_rrpgObjs.removeEventListenerById(self._e_event57);
        __o_rrpgObjs.removeEventListenerById(self._e_event56);
        __o_rrpgObjs.removeEventListenerById(self._e_event55);
        __o_rrpgObjs.removeEventListenerById(self._e_event54);
        __o_rrpgObjs.removeEventListenerById(self._e_event53);
        __o_rrpgObjs.removeEventListenerById(self._e_event52);
        __o_rrpgObjs.removeEventListenerById(self._e_event51);
        __o_rrpgObjs.removeEventListenerById(self._e_event50);
        __o_rrpgObjs.removeEventListenerById(self._e_event49);
        __o_rrpgObjs.removeEventListenerById(self._e_event48);
        __o_rrpgObjs.removeEventListenerById(self._e_event47);
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
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

        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.edit64 ~= nil then self.edit64:destroy(); self.edit64 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.edit41 ~= nil then self.edit41:destroy(); self.edit41 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.dataLink33 ~= nil then self.dataLink33:destroy(); self.dataLink33 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.dataLink18 ~= nil then self.dataLink18:destroy(); self.dataLink18 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.edit76 ~= nil then self.edit76:destroy(); self.edit76 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.edit82 ~= nil then self.edit82:destroy(); self.edit82 = nil; end;
        if self.textEditor38 ~= nil then self.textEditor38:destroy(); self.textEditor38 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.dataLink44 ~= nil then self.dataLink44:destroy(); self.dataLink44 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.textEditor27 ~= nil then self.textEditor27:destroy(); self.textEditor27 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.textEditor15 ~= nil then self.textEditor15:destroy(); self.textEditor15 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.edit69 ~= nil then self.edit69:destroy(); self.edit69 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.edit115 ~= nil then self.edit115:destroy(); self.edit115 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.edit116 ~= nil then self.edit116:destroy(); self.edit116 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.edit77 ~= nil then self.edit77:destroy(); self.edit77 = nil; end;
        if self.edit52 ~= nil then self.edit52:destroy(); self.edit52 = nil; end;
        if self.layoutMagias ~= nil then self.layoutMagias:destroy(); self.layoutMagias = nil; end;
        if self.textEditor4 ~= nil then self.textEditor4:destroy(); self.textEditor4 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.edit58 ~= nil then self.edit58:destroy(); self.edit58 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.label109 ~= nil then self.label109:destroy(); self.label109 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.edit66 ~= nil then self.edit66:destroy(); self.edit66 = nil; end;
        if self.dataLink20 ~= nil then self.dataLink20:destroy(); self.dataLink20 = nil; end;
        if self.textEditor36 ~= nil then self.textEditor36:destroy(); self.textEditor36 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.label111 ~= nil then self.label111:destroy(); self.label111 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.edit99 ~= nil then self.edit99:destroy(); self.edit99 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.edit67 ~= nil then self.edit67:destroy(); self.edit67 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.dataLink34 ~= nil then self.dataLink34:destroy(); self.dataLink34 = nil; end;
        if self.dataLink32 ~= nil then self.dataLink32:destroy(); self.dataLink32 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.edit83 ~= nil then self.edit83:destroy(); self.edit83 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.edit62 ~= nil then self.edit62:destroy(); self.edit62 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.edit74 ~= nil then self.edit74:destroy(); self.edit74 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.edit60 ~= nil then self.edit60:destroy(); self.edit60 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.dataLink40 ~= nil then self.dataLink40:destroy(); self.dataLink40 = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.textEditor9 ~= nil then self.textEditor9:destroy(); self.textEditor9 = nil; end;
        if self.dataLink55 ~= nil then self.dataLink55:destroy(); self.dataLink55 = nil; end;
        if self.dataLink47 ~= nil then self.dataLink47:destroy(); self.dataLink47 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.edit92 ~= nil then self.edit92:destroy(); self.edit92 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.comboBox6 ~= nil then self.comboBox6:destroy(); self.comboBox6 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.edit54 ~= nil then self.edit54:destroy(); self.edit54 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.textEditor40 ~= nil then self.textEditor40:destroy(); self.textEditor40 = nil; end;
        if self.edit100 ~= nil then self.edit100:destroy(); self.edit100 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit61 ~= nil then self.edit61:destroy(); self.edit61 = nil; end;
        if self.edit84 ~= nil then self.edit84:destroy(); self.edit84 = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit59 ~= nil then self.edit59:destroy(); self.edit59 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.textEditor16 ~= nil then self.textEditor16:destroy(); self.textEditor16 = nil; end;
        if self.textEditor22 ~= nil then self.textEditor22:destroy(); self.textEditor22 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.textEditor11 ~= nil then self.textEditor11:destroy(); self.textEditor11 = nil; end;
        if self.textEditor30 ~= nil then self.textEditor30:destroy(); self.textEditor30 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.edit103 ~= nil then self.edit103:destroy(); self.edit103 = nil; end;
        if self.dataLink45 ~= nil then self.dataLink45:destroy(); self.dataLink45 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.dataLink43 ~= nil then self.dataLink43:destroy(); self.dataLink43 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.edit45 ~= nil then self.edit45:destroy(); self.edit45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.edit96 ~= nil then self.edit96:destroy(); self.edit96 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.edit109 ~= nil then self.edit109:destroy(); self.edit109 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.edit93 ~= nil then self.edit93:destroy(); self.edit93 = nil; end;
        if self.dataLink54 ~= nil then self.dataLink54:destroy(); self.dataLink54 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.dataLink24 ~= nil then self.dataLink24:destroy(); self.dataLink24 = nil; end;
        if self.dataLink35 ~= nil then self.dataLink35:destroy(); self.dataLink35 = nil; end;
        if self.edit81 ~= nil then self.edit81:destroy(); self.edit81 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.dataLink22 ~= nil then self.dataLink22:destroy(); self.dataLink22 = nil; end;
        if self.dataLink61 ~= nil then self.dataLink61:destroy(); self.dataLink61 = nil; end;
        if self.edit37 ~= nil then self.edit37:destroy(); self.edit37 = nil; end;
        if self.layoutSignos ~= nil then self.layoutSignos:destroy(); self.layoutSignos = nil; end;
        if self.textEditor10 ~= nil then self.textEditor10:destroy(); self.textEditor10 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.dataLink27 ~= nil then self.dataLink27:destroy(); self.dataLink27 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.dataLink30 ~= nil then self.dataLink30:destroy(); self.dataLink30 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.edit87 ~= nil then self.edit87:destroy(); self.edit87 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.edit113 ~= nil then self.edit113:destroy(); self.edit113 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.label108 ~= nil then self.label108:destroy(); self.label108 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.dataLink57 ~= nil then self.dataLink57:destroy(); self.dataLink57 = nil; end;
        if self.edit42 ~= nil then self.edit42:destroy(); self.edit42 = nil; end;
        if self.edit118 ~= nil then self.edit118:destroy(); self.edit118 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.dataLink38 ~= nil then self.dataLink38:destroy(); self.dataLink38 = nil; end;
        if self.edit102 ~= nil then self.edit102:destroy(); self.edit102 = nil; end;
        if self.textEditor25 ~= nil then self.textEditor25:destroy(); self.textEditor25 = nil; end;
        if self.edit117 ~= nil then self.edit117:destroy(); self.edit117 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.dataLink12 ~= nil then self.dataLink12:destroy(); self.dataLink12 = nil; end;
        if self.label110 ~= nil then self.label110:destroy(); self.label110 = nil; end;
        if self.edit73 ~= nil then self.edit73:destroy(); self.edit73 = nil; end;
        if self.edit98 ~= nil then self.edit98:destroy(); self.edit98 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.dataLink62 ~= nil then self.dataLink62:destroy(); self.dataLink62 = nil; end;
        if self.dataLink28 ~= nil then self.dataLink28:destroy(); self.dataLink28 = nil; end;
        if self.dataLink42 ~= nil then self.dataLink42:destroy(); self.dataLink42 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.textEditor32 ~= nil then self.textEditor32:destroy(); self.textEditor32 = nil; end;
        if self.edit111 ~= nil then self.edit111:destroy(); self.edit111 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.edit71 ~= nil then self.edit71:destroy(); self.edit71 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.edit85 ~= nil then self.edit85:destroy(); self.edit85 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.dataLink21 ~= nil then self.dataLink21:destroy(); self.dataLink21 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.edit47 ~= nil then self.edit47:destroy(); self.edit47 = nil; end;
        if self.dataLink23 ~= nil then self.dataLink23:destroy(); self.dataLink23 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.dataLink53 ~= nil then self.dataLink53:destroy(); self.dataLink53 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edit112 ~= nil then self.edit112:destroy(); self.edit112 = nil; end;
        if self.edit114 ~= nil then self.edit114:destroy(); self.edit114 = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit68 ~= nil then self.edit68:destroy(); self.edit68 = nil; end;
        if self.edit72 ~= nil then self.edit72:destroy(); self.edit72 = nil; end;
        if self.textEditor5 ~= nil then self.textEditor5:destroy(); self.textEditor5 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.textEditor7 ~= nil then self.textEditor7:destroy(); self.textEditor7 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit106 ~= nil then self.edit106:destroy(); self.edit106 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit79 ~= nil then self.edit79:destroy(); self.edit79 = nil; end;
        if self.textEditor35 ~= nil then self.textEditor35:destroy(); self.textEditor35 = nil; end;
        if self.textEditor17 ~= nil then self.textEditor17:destroy(); self.textEditor17 = nil; end;
        if self.dataLink16 ~= nil then self.dataLink16:destroy(); self.dataLink16 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.layoutMagiasEpicas ~= nil then self.layoutMagiasEpicas:destroy(); self.layoutMagiasEpicas = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.edit101 ~= nil then self.edit101:destroy(); self.edit101 = nil; end;
        if self.textEditor29 ~= nil then self.textEditor29:destroy(); self.textEditor29 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.dataLink49 ~= nil then self.dataLink49:destroy(); self.dataLink49 = nil; end;
        if self.edit40 ~= nil then self.edit40:destroy(); self.edit40 = nil; end;
        if self.textEditor26 ~= nil then self.textEditor26:destroy(); self.textEditor26 = nil; end;
        if self.textEditor6 ~= nil then self.textEditor6:destroy(); self.textEditor6 = nil; end;
        if self.edit110 ~= nil then self.edit110:destroy(); self.edit110 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.textEditor12 ~= nil then self.textEditor12:destroy(); self.textEditor12 = nil; end;
        if self.edit86 ~= nil then self.edit86:destroy(); self.edit86 = nil; end;
        if self.edit38 ~= nil then self.edit38:destroy(); self.edit38 = nil; end;
        if self.dataLink15 ~= nil then self.dataLink15:destroy(); self.dataLink15 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.edit105 ~= nil then self.edit105:destroy(); self.edit105 = nil; end;
        if self.dataLink37 ~= nil then self.dataLink37:destroy(); self.dataLink37 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.textEditor31 ~= nil then self.textEditor31:destroy(); self.textEditor31 = nil; end;
        if self.dataLink29 ~= nil then self.dataLink29:destroy(); self.dataLink29 = nil; end;
        if self.textEditor20 ~= nil then self.textEditor20:destroy(); self.textEditor20 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.textEditor21 ~= nil then self.textEditor21:destroy(); self.textEditor21 = nil; end;
        if self.textEditor23 ~= nil then self.textEditor23:destroy(); self.textEditor23 = nil; end;
        if self.textEditor33 ~= nil then self.textEditor33:destroy(); self.textEditor33 = nil; end;
        if self.textEditor39 ~= nil then self.textEditor39:destroy(); self.textEditor39 = nil; end;
        if self.edit90 ~= nil then self.edit90:destroy(); self.edit90 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.textEditor8 ~= nil then self.textEditor8:destroy(); self.textEditor8 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.dataLink56 ~= nil then self.dataLink56:destroy(); self.dataLink56 = nil; end;
        if self.edit49 ~= nil then self.edit49:destroy(); self.edit49 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.boxDetalhesDoItem ~= nil then self.boxDetalhesDoItem:destroy(); self.boxDetalhesDoItem = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.textEditor34 ~= nil then self.textEditor34:destroy(); self.textEditor34 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.dataLink58 ~= nil then self.dataLink58:destroy(); self.dataLink58 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.dataLink25 ~= nil then self.dataLink25:destroy(); self.dataLink25 = nil; end;
        if self.edit94 ~= nil then self.edit94:destroy(); self.edit94 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.dataLink31 ~= nil then self.dataLink31:destroy(); self.dataLink31 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.edit46 ~= nil then self.edit46:destroy(); self.edit46 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.textEditor13 ~= nil then self.textEditor13:destroy(); self.textEditor13 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.dataLink39 ~= nil then self.dataLink39:destroy(); self.dataLink39 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.edit104 ~= nil then self.edit104:destroy(); self.edit104 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.edit108 ~= nil then self.edit108:destroy(); self.edit108 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit80 ~= nil then self.edit80:destroy(); self.edit80 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.edit95 ~= nil then self.edit95:destroy(); self.edit95 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.comboBox4 ~= nil then self.comboBox4:destroy(); self.comboBox4 = nil; end;
        if self.dataLink13 ~= nil then self.dataLink13:destroy(); self.dataLink13 = nil; end;
        if self.textEditor19 ~= nil then self.textEditor19:destroy(); self.textEditor19 = nil; end;
        if self.edit97 ~= nil then self.edit97:destroy(); self.edit97 = nil; end;
        if self.dataLink59 ~= nil then self.dataLink59:destroy(); self.dataLink59 = nil; end;
        if self.edit57 ~= nil then self.edit57:destroy(); self.edit57 = nil; end;
        if self.textEditor37 ~= nil then self.textEditor37:destroy(); self.textEditor37 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.edit63 ~= nil then self.edit63:destroy(); self.edit63 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.edit50 ~= nil then self.edit50:destroy(); self.edit50 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.rclListaDosItens ~= nil then self.rclListaDosItens:destroy(); self.rclListaDosItens = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.edit44 ~= nil then self.edit44:destroy(); self.edit44 = nil; end;
        if self.edit88 ~= nil then self.edit88:destroy(); self.edit88 = nil; end;
        if self.layoutMagiasAprimoradas ~= nil then self.layoutMagiasAprimoradas:destroy(); self.layoutMagiasAprimoradas = nil; end;
        if self.edit89 ~= nil then self.edit89:destroy(); self.edit89 = nil; end;
        if self.dataLink14 ~= nil then self.dataLink14:destroy(); self.dataLink14 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.textEditor24 ~= nil then self.textEditor24:destroy(); self.textEditor24 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.dataLink41 ~= nil then self.dataLink41:destroy(); self.dataLink41 = nil; end;
        if self.dataLink19 ~= nil then self.dataLink19:destroy(); self.dataLink19 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.dataLink36 ~= nil then self.dataLink36:destroy(); self.dataLink36 = nil; end;
        if self.dataLink60 ~= nil then self.dataLink60:destroy(); self.dataLink60 = nil; end;
        if self.edit53 ~= nil then self.edit53:destroy(); self.edit53 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.dataLink17 ~= nil then self.dataLink17:destroy(); self.dataLink17 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.edit107 ~= nil then self.edit107:destroy(); self.edit107 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.edit56 ~= nil then self.edit56:destroy(); self.edit56 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.edit55 ~= nil then self.edit55:destroy(); self.edit55 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.edit43 ~= nil then self.edit43:destroy(); self.edit43 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.edit75 ~= nil then self.edit75:destroy(); self.edit75 = nil; end;
        if self.edit65 ~= nil then self.edit65:destroy(); self.edit65 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.edit39 ~= nil then self.edit39:destroy(); self.edit39 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.dataLink52 ~= nil then self.dataLink52:destroy(); self.dataLink52 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.dataLink26 ~= nil then self.dataLink26:destroy(); self.dataLink26 = nil; end;
        if self.edit51 ~= nil then self.edit51:destroy(); self.edit51 = nil; end;
        if self.edit119 ~= nil then self.edit119:destroy(); self.edit119 = nil; end;
        if self.edit48 ~= nil then self.edit48:destroy(); self.edit48 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.dataLink48 ~= nil then self.dataLink48:destroy(); self.dataLink48 = nil; end;
        if self.textEditor14 ~= nil then self.textEditor14:destroy(); self.textEditor14 = nil; end;
        if self.edit78 ~= nil then self.edit78:destroy(); self.edit78 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.edit91 ~= nil then self.edit91:destroy(); self.edit91 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.edit70 ~= nil then self.edit70:destroy(); self.edit70 = nil; end;
        if self.textEditor28 ~= nil then self.textEditor28:destroy(); self.textEditor28 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.dataLink51 ~= nil then self.dataLink51:destroy(); self.dataLink51 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.dataLink11 ~= nil then self.dataLink11:destroy(); self.dataLink11 = nil; end;
        if self.dataLink46 ~= nil then self.dataLink46:destroy(); self.dataLink46 = nil; end;
        if self.textEditor18 ~= nil then self.textEditor18:destroy(); self.textEditor18 = nil; end;
        if self.dataLink50 ~= nil then self.dataLink50:destroy(); self.dataLink50 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmFichaRPGmeister5M_svg = {
    newEditor = newfrmFichaRPGmeister5M_svg, 
    new = newfrmFichaRPGmeister5M_svg, 
    name = "frmFichaRPGmeister5M_svg", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmFichaRPGmeister5M_svg = _frmFichaRPGmeister5M_svg;
rrpg.registrarForm(_frmFichaRPGmeister5M_svg);

return _frmFichaRPGmeister5M_svg;
