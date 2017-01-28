require("rrpg.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");

function newfrmBibliotecaRPGmeister()
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
    obj:setName("frmBibliotecaRPGmeister");
    obj:setFormType("sheetTemplate");
    obj:setDataType("Ambesek.Gerenciador.RPGmeister");
    obj:setTitle("Gerenciador de Campanha");
    obj:setAlign("client");
    obj:setTheme("dark");

    obj.tabControl1 = gui.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Introdução");
    obj.tab1:setName("tab1");

    obj.frmGerenciador01 = gui.fromHandle(_obj_newObject("form"));
    obj.frmGerenciador01:setParent(obj.tab1);
    obj.frmGerenciador01:setName("frmGerenciador01");
    obj.frmGerenciador01:setAlign("client");
    obj.frmGerenciador01:setTheme("dark");
    obj.frmGerenciador01:setMargins({top=1});

    obj.scrollBox1 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.frmGerenciador01);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setLeft(0);
    obj.rectangle1:setTop(0);
    obj.rectangle1:setWidth(550);
    obj.rectangle1:setHeight(615);
    obj.rectangle1:setColor("Black");
    obj.rectangle1:setName("rectangle1");

    obj.label1 = gui.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.rectangle1);
    obj.label1:setLeft(5);
    obj.label1:setTop(5);
    obj.label1:setWidth(550);
    obj.label1:setHeight(25);
    obj.label1:setText("SESSÕES");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setName("label1");

    obj.label2 = gui.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.rectangle1);
    obj.label2:setLeft(5);
    obj.label2:setTop(30);
    obj.label2:setWidth(30);
    obj.label2:setHeight(25);
    obj.label2:setText("Nº");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setName("label2");

    obj.label3 = gui.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.rectangle1);
    obj.label3:setLeft(35);
    obj.label3:setTop(30);
    obj.label3:setWidth(205);
    obj.label3:setHeight(25);
    obj.label3:setText("XP");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setName("label3");

    obj.label4 = gui.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.rectangle1);
    obj.label4:setLeft(240);
    obj.label4:setTop(30);
    obj.label4:setWidth(90);
    obj.label4:setHeight(25);
    obj.label4:setText("PO");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setName("label4");

    obj.label5 = gui.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.rectangle1);
    obj.label5:setLeft(330);
    obj.label5:setTop(30);
    obj.label5:setWidth(80);
    obj.label5:setHeight(25);
    obj.label5:setText("Data");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setName("label5");

    obj.label6 = gui.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.rectangle1);
    obj.label6:setLeft(460);
    obj.label6:setTop(30);
    obj.label6:setWidth(40);
    obj.label6:setHeight(25);
    obj.label6:setText("Log");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setName("label6");

    obj.button1 = gui.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle1);
    obj.button1:setLeft(495);
    obj.button1:setTop(5);
    obj.button1:setWidth(25);
    obj.button1:setHeight(25);
    obj.button1:setText("O");
    obj.button1:setName("button1");

    obj.button2 = gui.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.rectangle1);
    obj.button2:setLeft(520);
    obj.button2:setTop(5);
    obj.button2:setWidth(25);
    obj.button2:setHeight(25);
    obj.button2:setText("+");
    obj.button2:setName("button2");

    obj.scrollBox2 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.rectangle1);
    obj.scrollBox2:setLeft(0);
    obj.scrollBox2:setTop(55);
    obj.scrollBox2:setWidth(550);
    obj.scrollBox2:setHeight(555);
    obj.scrollBox2:setName("scrollBox2");

    obj.rclSessoes = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclSessoes:setParent(obj.scrollBox2);
    obj.rclSessoes:setLeft(0);
    obj.rclSessoes:setTop(0);
    obj.rclSessoes:setWidth(530);
    obj.rclSessoes:setHeight(555);
    obj.rclSessoes:setItemHeight(35);
    obj.rclSessoes:setAutoHeight(true);
    obj.rclSessoes:setMinQt(1);
    obj.rclSessoes:setName("rclSessoes");
    obj.rclSessoes:setField("sessoes");
    obj.rclSessoes:setTemplateForm("frmGerenciador01_Sessao");

    obj.rectangle2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.scrollBox1);
    obj.rectangle2:setLeft(555);
    obj.rectangle2:setTop(0);
    obj.rectangle2:setWidth(400);
    obj.rectangle2:setHeight(110);
    obj.rectangle2:setColor("Black");
    obj.rectangle2:setName("rectangle2");

    obj.label7 = gui.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.rectangle2);
    obj.label7:setLeft(5);
    obj.label7:setTop(5);
    obj.label7:setWidth(30);
    obj.label7:setHeight(25);
    obj.label7:setText("Dia");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setName("label7");

    obj.label8 = gui.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.rectangle2);
    obj.label8:setLeft(35);
    obj.label8:setTop(5);
    obj.label8:setWidth(70);
    obj.label8:setHeight(25);
    obj.label8:setText("Mês");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setName("label8");

    obj.label9 = gui.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.rectangle2);
    obj.label9:setLeft(105);
    obj.label9:setTop(5);
    obj.label9:setWidth(40);
    obj.label9:setHeight(25);
    obj.label9:setText("Ano");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setName("label9");

    obj.label10 = gui.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.rectangle2);
    obj.label10:setLeft(145);
    obj.label10:setTop(5);
    obj.label10:setWidth(100);
    obj.label10:setHeight(25);
    obj.label10:setText("Era");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setName("label10");

    obj.label11 = gui.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.rectangle2);
    obj.label11:setLeft(245);
    obj.label11:setTop(5);
    obj.label11:setWidth(150);
    obj.label11:setHeight(25);
    obj.label11:setText("Estação");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setName("label11");

    obj.edit1 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle2);
    obj.edit1:setLeft(5);
    obj.edit1:setTop(30);
    obj.edit1:setWidth(30);
    obj.edit1:setHeight(25);
    obj.edit1:setField("dia");
    obj.edit1:setName("edit1");

    obj.edit2 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.rectangle2);
    obj.edit2:setLeft(35);
    obj.edit2:setTop(30);
    obj.edit2:setWidth(70);
    obj.edit2:setHeight(25);
    obj.edit2:setField("mes");
    obj.edit2:setName("edit2");

    obj.edit3 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.rectangle2);
    obj.edit3:setLeft(105);
    obj.edit3:setTop(30);
    obj.edit3:setWidth(40);
    obj.edit3:setHeight(25);
    obj.edit3:setField("ano");
    obj.edit3:setName("edit3");

    obj.edit4 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.rectangle2);
    obj.edit4:setLeft(145);
    obj.edit4:setTop(30);
    obj.edit4:setWidth(100);
    obj.edit4:setHeight(25);
    obj.edit4:setField("era");
    obj.edit4:setName("edit4");

    obj.edit5 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.rectangle2);
    obj.edit5:setLeft(245);
    obj.edit5:setTop(30);
    obj.edit5:setWidth(150);
    obj.edit5:setHeight(25);
    obj.edit5:setField("estacao");
    obj.edit5:setName("edit5");

    obj.label12 = gui.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.rectangle2);
    obj.label12:setLeft(5);
    obj.label12:setTop(55);
    obj.label12:setWidth(65);
    obj.label12:setHeight(25);
    obj.label12:setText("Clima");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setName("label12");

    obj.label13 = gui.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.rectangle2);
    obj.label13:setLeft(70);
    obj.label13:setTop(55);
    obj.label13:setWidth(65);
    obj.label13:setHeight(25);
    obj.label13:setText("Temperatura");
    obj.label13:setHorzTextAlign("center");
    obj.label13:setFontSize(11);
    obj.label13:setName("label13");

    obj.label14 = gui.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.rectangle2);
    obj.label14:setLeft(135);
    obj.label14:setTop(55);
    obj.label14:setWidth(135);
    obj.label14:setHeight(25);
    obj.label14:setText("Luas");
    obj.label14:setHorzTextAlign("center");
    obj.label14:setName("label14");

    obj.label15 = gui.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.rectangle2);
    obj.label15:setLeft(270);
    obj.label15:setTop(55);
    obj.label15:setWidth(135);
    obj.label15:setHeight(25);
    obj.label15:setText("Outros");
    obj.label15:setHorzTextAlign("center");
    obj.label15:setName("label15");

    obj.edit6 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.rectangle2);
    obj.edit6:setLeft(5);
    obj.edit6:setTop(80);
    obj.edit6:setWidth(65);
    obj.edit6:setHeight(25);
    obj.edit6:setField("clima");
    obj.edit6:setName("edit6");

    obj.edit7 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.rectangle2);
    obj.edit7:setLeft(70);
    obj.edit7:setTop(80);
    obj.edit7:setWidth(65);
    obj.edit7:setHeight(25);
    obj.edit7:setField("temperatura");
    obj.edit7:setName("edit7");

    obj.edit8 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.rectangle2);
    obj.edit8:setLeft(135);
    obj.edit8:setTop(80);
    obj.edit8:setWidth(130);
    obj.edit8:setHeight(25);
    obj.edit8:setField("luas");
    obj.edit8:setName("edit8");

    obj.edit9 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.rectangle2);
    obj.edit9:setLeft(265);
    obj.edit9:setTop(80);
    obj.edit9:setWidth(130);
    obj.edit9:setHeight(25);
    obj.edit9:setField("outros");
    obj.edit9:setName("edit9");

    obj.rectangle3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.scrollBox1);
    obj.rectangle3:setLeft(555);
    obj.rectangle3:setTop(115);
    obj.rectangle3:setWidth(680);
    obj.rectangle3:setHeight(500);
    obj.rectangle3:setColor("Black");
    obj.rectangle3:setName("rectangle3");

    obj.label16 = gui.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.rectangle3);
    obj.label16:setLeft(5);
    obj.label16:setTop(5);
    obj.label16:setWidth(550);
    obj.label16:setHeight(25);
    obj.label16:setText("JOGADORES");
    obj.label16:setHorzTextAlign("center");
    obj.label16:setName("label16");

    obj.label17 = gui.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.rectangle3);
    obj.label17:setLeft(5);
    obj.label17:setTop(30);
    obj.label17:setWidth(100);
    obj.label17:setHeight(25);
    obj.label17:setText("Jogador");
    obj.label17:setHorzTextAlign("center");
    obj.label17:setName("label17");

    obj.label18 = gui.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.rectangle3);
    obj.label18:setLeft(105);
    obj.label18:setTop(30);
    obj.label18:setWidth(100);
    obj.label18:setHeight(25);
    obj.label18:setText("Personagem");
    obj.label18:setHorzTextAlign("center");
    obj.label18:setName("label18");

    obj.label19 = gui.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.rectangle3);
    obj.label19:setLeft(205);
    obj.label19:setTop(30);
    obj.label19:setWidth(75);
    obj.label19:setHeight(25);
    obj.label19:setText("XP Inicial");
    obj.label19:setHorzTextAlign("center");
    obj.label19:setName("label19");

    obj.label20 = gui.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.rectangle3);
    obj.label20:setLeft(280);
    obj.label20:setTop(30);
    obj.label20:setWidth(75);
    obj.label20:setHeight(25);
    obj.label20:setText("XP Gasta");
    obj.label20:setHorzTextAlign("center");
    obj.label20:setName("label20");

    obj.label21 = gui.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.rectangle3);
    obj.label21:setLeft(355);
    obj.label21:setTop(30);
    obj.label21:setWidth(75);
    obj.label21:setHeight(25);
    obj.label21:setText("XP Total");
    obj.label21:setHorzTextAlign("center");
    obj.label21:setName("label21");

    obj.label22 = gui.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.rectangle3);
    obj.label22:setLeft(430);
    obj.label22:setTop(30);
    obj.label22:setWidth(25);
    obj.label22:setHeight(25);
    obj.label22:setText("NEP");
    obj.label22:setHorzTextAlign("center");
    obj.label22:setName("label22");

    obj.label23 = gui.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.rectangle3);
    obj.label23:setLeft(455);
    obj.label23:setTop(30);
    obj.label23:setWidth(75);
    obj.label23:setHeight(25);
    obj.label23:setText("PO Inicial");
    obj.label23:setHorzTextAlign("center");
    obj.label23:setName("label23");

    obj.label24 = gui.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.rectangle3);
    obj.label24:setLeft(530);
    obj.label24:setTop(30);
    obj.label24:setWidth(75);
    obj.label24:setHeight(25);
    obj.label24:setText("PO Total");
    obj.label24:setHorzTextAlign("center");
    obj.label24:setName("label24");

    obj.label25 = gui.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.rectangle3);
    obj.label25:setLeft(605);
    obj.label25:setTop(30);
    obj.label25:setWidth(25);
    obj.label25:setHeight(25);
    obj.label25:setText("Nº");
    obj.label25:setHorzTextAlign("center");
    obj.label25:setName("label25");

    obj.button3 = gui.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.rectangle3);
    obj.button3:setLeft(625);
    obj.button3:setTop(5);
    obj.button3:setWidth(25);
    obj.button3:setHeight(25);
    obj.button3:setText("O");
    obj.button3:setName("button3");

    obj.button4 = gui.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.rectangle3);
    obj.button4:setLeft(650);
    obj.button4:setTop(5);
    obj.button4:setWidth(25);
    obj.button4:setHeight(25);
    obj.button4:setText("+");
    obj.button4:setName("button4");

    obj.scrollBox3 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.rectangle3);
    obj.scrollBox3:setLeft(0);
    obj.scrollBox3:setTop(55);
    obj.scrollBox3:setWidth(680);
    obj.scrollBox3:setHeight(440);
    obj.scrollBox3:setName("scrollBox3");

    obj.rclJogadores = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclJogadores:setParent(obj.scrollBox3);
    obj.rclJogadores:setLeft(0);
    obj.rclJogadores:setTop(0);
    obj.rclJogadores:setWidth(660);
    obj.rclJogadores:setHeight(440);
    obj.rclJogadores:setItemHeight(35);
    obj.rclJogadores:setAutoHeight(true);
    obj.rclJogadores:setMinQt(1);
    obj.rclJogadores:setName("rclJogadores");
    obj.rclJogadores:setField("jogadores");
    obj.rclJogadores:setTemplateForm("frmGerenciador01_Jogadores");

    obj.tab2 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("NPCs");
    obj.tab2:setName("tab2");

    obj.Listade_NPC_Dock = gui.fromHandle(_obj_newObject("form"));
    obj.Listade_NPC_Dock:setParent(obj.tab2);
    obj.Listade_NPC_Dock:setName("Listade_NPC_Dock");
    obj.Listade_NPC_Dock:setFormType("tablesDock");
    obj.Listade_NPC_Dock:setDataType("Lista.de.NPC");
    obj.Listade_NPC_Dock:setTitle("Lista de NPCs");
    obj.Listade_NPC_Dock:setAlign("client");
    obj.Listade_NPC_Dock:setTheme("dark");

    obj.dataLink1 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.Listade_NPC_Dock);
    obj.dataLink1:setField("CorIndex");
    obj.dataLink1:setDefaultValue("0");
    obj.dataLink1:setName("dataLink1");


		function getOrganizacao()
			return self.dcsMain.scopeNode.TipoOrganizar;
		end;
		
		function MudarNomeDaAba(nome)
			sheet.opcaoEscolhida = nome;
		end;

		function self:autoCalcular()
			local nodes = ndb.getChildNodes(sheet.opcoesFalsas);
			self.dropDownFalso:show(bottomCenter, self.comboBoxFalsa);
			self.dropDownFalso.top = self.dropDownFalso.top + self.comboBoxFalsa.height;
			
			self.dropDownFalso.height = 8 + (24 * #nodes)			 
		end;
		
		function autoFechar()
			self.dropDownFalso:close();
		end;
		
		function safeNodeDeletion(node)
			nodes = ndb.getChildNodes(sheet.opcoesFalsas);
			setTimeout(function()
				if node == self.dcsMain.scopeNode then
					self.opcoesFalsas.selectedNode = nodes[1];
				end;
			end, 10)
			ndb.deleteNode(node);
			self:autoCalcular();
			self.dropDownFalso:close();
		end;
		
		function GetBarrinhaNome(id)
			if sheet ~= nil then
				if id == 1 then
					return (sheet.NomeBarrinha1 or "Barrinha 1");
				elseif id == 2 then
					return (sheet.NomeBarrinha2 or "Barrinha 2");
				elseif id == 3 then
					return (sheet.NomeBarrinha3 or "Barrinha 3");
				elseif id == 4 then
					return (sheet.NomeBarrinha4 or "Barrinha 4");
				end;
			end;
		end;
		
		function GetBarrinhaVisivel(blockoverlay, id)
			if sheet ~= nil then
				if not blockoverlay then
					if id == 1 then
						return (sheet.VisibBarrinha1 == "a");
					elseif id == 2 then
						return (sheet.VisibBarrinha2 == "a");
					elseif id == 3 then
						return (sheet.VisibBarrinha3 == "a");
					elseif id == 4 then
						return (sheet.VisibBarrinha4 == "a");
					end;
				else
					return DonoMestre();
				end;
			end;
		end;
		
		function GetBarrinhaNumeros(id)
			if sheet ~= nil then
				if id == 1 then
					return (sheet.NumerosBarrinha1 == "x");
				elseif id == 2 then
					return (sheet.NumerosBarrinha2 == "x");
				elseif id == 3 then
					return (sheet.NumerosBarrinha3 == "x");
				elseif id == 4 then
					return (sheet.NumerosBarrinha4 == "x");
				end;
			end;
		end;
		
		function GetEnviarChat()
			if sheet ~= nil then
				return sheet.EnviarNoChat;
			end;
		end;
	


    obj.layout1 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.Listade_NPC_Dock);
    obj.layout1:setAlign("client");
    obj.layout1:setVisible(false);
    obj.layout1:setName("layout1");

    obj.Config = gui.fromHandle(_obj_newObject("popupForm"));
    obj.Config:setParent(obj.layout1);
    obj.Config:setTitle("Configuração de Barrinhas");
    obj.Config:setName("Config");
    obj.Config:setWidth(406);
    obj.Config:setHeight(190);

    obj.label26 = gui.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.Config);
    obj.label26:setAlign("top");
    obj.label26:setHeight(18);
    obj.label26:setHorzTextAlign("center");
    obj.label26:setText("Configurações de Barrinhas");
    lfm_setPropAsString(obj.label26, "fontStyle",  "bold");
    obj.label26:setFontColor("white");
    obj.label26:setName("label26");

    obj.dcsTituloEAbas = gui.fromHandle(_obj_newObject("dataScopeBox"));
    obj.dcsTituloEAbas:setParent(obj.Config);
    obj.dcsTituloEAbas:setName("dcsTituloEAbas");
    obj.dcsTituloEAbas:setAlign("top");
    obj.dcsTituloEAbas:setHeight(18);
    obj.dcsTituloEAbas:setMargins({top=4});

    obj.label27 = gui.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.dcsTituloEAbas);
    obj.label27:setLeft(5);
    obj.label27:setFontSize(12);
    obj.label27:setAutoSize(true);
    obj.label27:setText("Título da Aba:");
    obj.label27:setName("label27");

    obj.edit10 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.dcsTituloEAbas);
    obj.edit10:setLeft(85);
    obj.edit10:setHeight(18);
    obj.edit10:setFontColor("white");
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setFontSize(12);
    obj.edit10:setWidth(108);
    obj.edit10:setField("NomeDaOpcao");
    obj.edit10:setName("edit10");

    obj.label28 = gui.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.dcsTituloEAbas);
    obj.label28:setLeft(210);
    obj.label28:setFontSize(12);
    obj.label28:setAutoSize(true);
    obj.label28:setText("Organização:");
    obj.label28:setMargins({left=12});
    obj.label28:setName("label28");

    obj.comboBox1 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.dcsTituloEAbas);
    obj.comboBox1:setLeft(292);
    obj.comboBox1:setHeight(18);
    obj.comboBox1:setFontColor("white");
    obj.comboBox1:setFontSize(12);
    obj.comboBox1:setWidth(108);
    obj.comboBox1:setField("TipoOrganizar");
    obj.comboBox1:setItems({'Alfabética', 'Alinhamento'});
    obj.comboBox1:setValues({'Alfa', 'Alin'});
    obj.comboBox1:setName("comboBox1");

    obj.layout2 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.Config);
    obj.layout2:setAlign("top");
    obj.layout2:setHeight(18);
    obj.layout2:setMargins({top=4});
    obj.layout2:setName("layout2");

    obj.layout3 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout2);
    obj.layout3:setAlign("left");
    obj.layout3:setWidth(64);
    obj.layout3:setName("layout3");

    obj.label29 = gui.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout2);
    obj.label29:setAlign("left");
    obj.label29:setFontSize(12);
    obj.label29:setWidth(108);
    obj.label29:setText("Nome da Barrinha");
    obj.label29:setMargins({left=4});
    obj.label29:setName("label29");

    obj.label30 = gui.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout2);
    obj.label30:setAlign("left");
    obj.label30:setFontSize(12);
    obj.label30:setWidth(26);
    obj.label30:setHorzTextAlign("center");
    obj.label30:setText("Cor");
    obj.label30:setMargins({left=4});
    obj.label30:setName("label30");

    obj.label31 = gui.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout2);
    obj.label31:setAlign("left");
    obj.label31:setFontSize(12);
    obj.label31:setWidth(82);
    obj.label31:setText("Visibilidade");
    obj.label31:setMargins({left=4});
    obj.label31:setName("label31");

    obj.label32 = gui.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout2);
    obj.label32:setAlign("left");
    obj.label32:setFontSize(12);
    obj.label32:setWidth(108);
    obj.label32:setText("Tipo de Números");
    obj.label32:setMargins({left=4});
    obj.label32:setName("label32");

    obj.layout4 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.Config);
    obj.layout4:setAlign("top");
    obj.layout4:setHeight(18);
    obj.layout4:setMargins({top=4});
    obj.layout4:setName("layout4");

    obj.label33 = gui.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout4);
    obj.label33:setAlign("left");
    obj.label33:setFontSize(12);
    obj.label33:setText("Barrinha 1:");
    obj.label33:setHorzTextAlign("trailing");
    obj.label33:setWidth(64);
    obj.label33:setName("label33");

    obj.edit11 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout4);
    obj.edit11:setAlign("left");
    obj.edit11:setFontSize(12);
    obj.edit11:setWidth(108);
    obj.edit11:setVertTextAlign("trailing");
    obj.edit11:setField("NomeBarrinha1");
    obj.edit11:setText("Barrinha 1");
    obj.edit11:setMargins({left=4});
    obj.edit11:setName("edit11");

    obj.layout5 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.layout4);
    obj.layout5:setAlign("left");
    obj.layout5:setWidth(26);
    obj.layout5:setMargins({left=4});
    obj.layout5:setName("layout5");

    obj.rectangle4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout5);
    obj.rectangle4:setAlign("client");
    obj.rectangle4:setColor("white");
    obj.rectangle4:setHitTest(true);
    obj.rectangle4:setMargins({left=4, right=4});
    obj.rectangle4:setName("rectangle4");

    obj.rectangle5 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.rectangle4);
    obj.rectangle5:setColor("black");
    obj.rectangle5:setAlign("client");
    obj.rectangle5:setMargins({left=1, right=1, top=1, bottom=1});
    obj.rectangle5:setHitTest(true);
    obj.rectangle5:setName("rectangle5");

    obj.CorBarrinha1 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.CorBarrinha1:setParent(obj.rectangle5);
    obj.CorBarrinha1:setName("CorBarrinha1");
    obj.CorBarrinha1:setColor("#808080");
    obj.CorBarrinha1:setAlign("client");
    obj.CorBarrinha1:setMargins({left=1, right=1, top=1, bottom=1});
    obj.CorBarrinha1:setHitTest(true);

    obj.comboBox2 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox2:setParent(obj.layout4);
    obj.comboBox2:setAlign("left");
    obj.comboBox2:setFontSize(12);
    obj.comboBox2:setWidth(82);
    obj.comboBox2:setText("Visibilidade");
    obj.comboBox2:setFontColor("white");
    obj.comboBox2:setVertTextAlign("trailing");
    obj.comboBox2:setItems({'Pública', 'Privada', 'Nenhuma'});
    obj.comboBox2:setValues({'a', 'b', 'c'});
    obj.comboBox2:setValue("a");
    obj.comboBox2:setField("VisibBarrinha1");
    obj.comboBox2:setMargins({left=4});
    obj.comboBox2:setName("comboBox2");

    obj.comboBox3 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox3:setParent(obj.layout4);
    obj.comboBox3:setAlign("left");
    obj.comboBox3:setFontSize(12);
    obj.comboBox3:setWidth(104);
    obj.comboBox3:setText("Tipo de Números");
    obj.comboBox3:setVertTextAlign("trailing");
    obj.comboBox3:setFontColor("white");
    obj.comboBox3:setField("NumerosBarrinha1");
    obj.comboBox3:setItems({'Valores Fixos', 'Porcentagens'});
    obj.comboBox3:setValues({'x', 'y'});
    obj.comboBox3:setValue("x");
    obj.comboBox3:setMargins({left=4});
    obj.comboBox3:setName("comboBox3");

    obj.dataLink2 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj.layout4);
    obj.dataLink2:setField("CorBarrinha1");
    obj.dataLink2:setDefaultValue("#808080");
    obj.dataLink2:setName("dataLink2");

    obj.layout6 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.Config);
    obj.layout6:setAlign("top");
    obj.layout6:setHeight(18);
    obj.layout6:setMargins({top=4});
    obj.layout6:setName("layout6");

    obj.label34 = gui.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout6);
    obj.label34:setAlign("left");
    obj.label34:setFontSize(12);
    obj.label34:setText("Barrinha 1:");
    obj.label34:setHorzTextAlign("trailing");
    obj.label34:setWidth(64);
    obj.label34:setName("label34");

    obj.edit12 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout6);
    obj.edit12:setAlign("left");
    obj.edit12:setFontSize(12);
    obj.edit12:setWidth(108);
    obj.edit12:setVertTextAlign("trailing");
    obj.edit12:setField("NomeBarrinha2");
    obj.edit12:setText("Barrinha 2");
    obj.edit12:setMargins({left=4});
    obj.edit12:setName("edit12");

    obj.layout7 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout6);
    obj.layout7:setAlign("left");
    obj.layout7:setWidth(26);
    obj.layout7:setMargins({left=4});
    obj.layout7:setName("layout7");

    obj.rectangle6 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout7);
    obj.rectangle6:setAlign("client");
    obj.rectangle6:setColor("white");
    obj.rectangle6:setHitTest(true);
    obj.rectangle6:setMargins({left=4, right=4});
    obj.rectangle6:setName("rectangle6");

    obj.rectangle7 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.rectangle6);
    obj.rectangle7:setColor("black");
    obj.rectangle7:setAlign("client");
    obj.rectangle7:setMargins({left=1, right=1, top=1, bottom=1});
    obj.rectangle7:setHitTest(true);
    obj.rectangle7:setName("rectangle7");

    obj.CorBarrinha2 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.CorBarrinha2:setParent(obj.rectangle7);
    obj.CorBarrinha2:setName("CorBarrinha2");
    obj.CorBarrinha2:setColor("#808080");
    obj.CorBarrinha2:setAlign("client");
    obj.CorBarrinha2:setMargins({left=1, right=1, top=1, bottom=1});
    obj.CorBarrinha2:setHitTest(true);

    obj.comboBox4 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox4:setParent(obj.layout6);
    obj.comboBox4:setAlign("left");
    obj.comboBox4:setFontSize(12);
    obj.comboBox4:setWidth(82);
    obj.comboBox4:setText("Visibilidade");
    obj.comboBox4:setFontColor("white");
    obj.comboBox4:setVertTextAlign("trailing");
    obj.comboBox4:setItems({'Pública', 'Privada', 'Nenhuma'});
    obj.comboBox4:setValues({'a', 'b', 'c'});
    obj.comboBox4:setValue("a");
    obj.comboBox4:setField("VisibBarrinha2");
    obj.comboBox4:setMargins({left=4});
    obj.comboBox4:setName("comboBox4");

    obj.comboBox5 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox5:setParent(obj.layout6);
    obj.comboBox5:setAlign("left");
    obj.comboBox5:setFontSize(12);
    obj.comboBox5:setWidth(104);
    obj.comboBox5:setText("Tipo de Números");
    obj.comboBox5:setVertTextAlign("trailing");
    obj.comboBox5:setFontColor("white");
    obj.comboBox5:setField("NumerosBarrinha2");
    obj.comboBox5:setItems({'Valores Fixos', 'Porcentagens'});
    obj.comboBox5:setValues({'x', 'y'});
    obj.comboBox5:setValue("x");
    obj.comboBox5:setMargins({left=4});
    obj.comboBox5:setName("comboBox5");

    obj.dataLink3 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj.layout6);
    obj.dataLink3:setField("CorBarrinha2");
    obj.dataLink3:setDefaultValue("#808080");
    obj.dataLink3:setName("dataLink3");

    obj.layout8 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.Config);
    obj.layout8:setAlign("top");
    obj.layout8:setHeight(18);
    obj.layout8:setMargins({top=4});
    obj.layout8:setName("layout8");

    obj.label35 = gui.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout8);
    obj.label35:setAlign("left");
    obj.label35:setFontSize(12);
    obj.label35:setText("Barrinha 1:");
    obj.label35:setHorzTextAlign("trailing");
    obj.label35:setWidth(64);
    obj.label35:setName("label35");

    obj.edit13 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout8);
    obj.edit13:setAlign("left");
    obj.edit13:setFontSize(12);
    obj.edit13:setWidth(108);
    obj.edit13:setVertTextAlign("trailing");
    obj.edit13:setField("NomeBarrinha3");
    obj.edit13:setText("Barrinha 3");
    obj.edit13:setMargins({left=4});
    obj.edit13:setName("edit13");

    obj.layout9 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.layout8);
    obj.layout9:setAlign("left");
    obj.layout9:setWidth(26);
    obj.layout9:setMargins({left=4});
    obj.layout9:setName("layout9");

    obj.rectangle8 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout9);
    obj.rectangle8:setAlign("client");
    obj.rectangle8:setColor("white");
    obj.rectangle8:setHitTest(true);
    obj.rectangle8:setMargins({left=4, right=4});
    obj.rectangle8:setName("rectangle8");

    obj.rectangle9 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.rectangle8);
    obj.rectangle9:setColor("black");
    obj.rectangle9:setAlign("client");
    obj.rectangle9:setMargins({left=1, right=1, top=1, bottom=1});
    obj.rectangle9:setHitTest(true);
    obj.rectangle9:setName("rectangle9");

    obj.CorBarrinha3 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.CorBarrinha3:setParent(obj.rectangle9);
    obj.CorBarrinha3:setName("CorBarrinha3");
    obj.CorBarrinha3:setColor("#808080");
    obj.CorBarrinha3:setAlign("client");
    obj.CorBarrinha3:setMargins({left=1, right=1, top=1, bottom=1});
    obj.CorBarrinha3:setHitTest(true);

    obj.comboBox6 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox6:setParent(obj.layout8);
    obj.comboBox6:setAlign("left");
    obj.comboBox6:setFontSize(12);
    obj.comboBox6:setWidth(82);
    obj.comboBox6:setText("Visibilidade");
    obj.comboBox6:setFontColor("white");
    obj.comboBox6:setVertTextAlign("trailing");
    obj.comboBox6:setItems({'Pública', 'Privada', 'Nenhuma'});
    obj.comboBox6:setValues({'a', 'b', 'c'});
    obj.comboBox6:setValue("a");
    obj.comboBox6:setField("VisibBarrinha3");
    obj.comboBox6:setMargins({left=4});
    obj.comboBox6:setName("comboBox6");

    obj.comboBox7 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox7:setParent(obj.layout8);
    obj.comboBox7:setAlign("left");
    obj.comboBox7:setFontSize(12);
    obj.comboBox7:setWidth(104);
    obj.comboBox7:setText("Tipo de Números");
    obj.comboBox7:setVertTextAlign("trailing");
    obj.comboBox7:setFontColor("white");
    obj.comboBox7:setField("NumerosBarrinha3");
    obj.comboBox7:setItems({'Valores Fixos', 'Porcentagens'});
    obj.comboBox7:setValues({'x', 'y'});
    obj.comboBox7:setValue("x");
    obj.comboBox7:setMargins({left=4});
    obj.comboBox7:setName("comboBox7");

    obj.dataLink4 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj.layout8);
    obj.dataLink4:setField("CorBarrinha3");
    obj.dataLink4:setDefaultValue("#808080");
    obj.dataLink4:setName("dataLink4");

    obj.layout10 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.Config);
    obj.layout10:setAlign("top");
    obj.layout10:setHeight(18);
    obj.layout10:setMargins({top=4});
    obj.layout10:setName("layout10");

    obj.label36 = gui.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout10);
    obj.label36:setAlign("left");
    obj.label36:setFontSize(12);
    obj.label36:setText("Barrinha 1:");
    obj.label36:setHorzTextAlign("trailing");
    obj.label36:setWidth(64);
    obj.label36:setName("label36");

    obj.edit14 = gui.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout10);
    obj.edit14:setAlign("left");
    obj.edit14:setFontSize(12);
    obj.edit14:setWidth(108);
    obj.edit14:setVertTextAlign("trailing");
    obj.edit14:setField("NomeBarrinha4");
    obj.edit14:setText("Barrinha 4");
    obj.edit14:setMargins({left=4});
    obj.edit14:setName("edit14");

    obj.layout11 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout10);
    obj.layout11:setAlign("left");
    obj.layout11:setWidth(26);
    obj.layout11:setMargins({left=4});
    obj.layout11:setName("layout11");

    obj.rectangle10 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout11);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("white");
    obj.rectangle10:setHitTest(true);
    obj.rectangle10:setMargins({left=4, right=4});
    obj.rectangle10:setName("rectangle10");

    obj.rectangle11 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.rectangle10);
    obj.rectangle11:setColor("black");
    obj.rectangle11:setAlign("client");
    obj.rectangle11:setMargins({left=1, right=1, top=1, bottom=1});
    obj.rectangle11:setHitTest(true);
    obj.rectangle11:setName("rectangle11");

    obj.CorBarrinha4 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.CorBarrinha4:setParent(obj.rectangle11);
    obj.CorBarrinha4:setName("CorBarrinha4");
    obj.CorBarrinha4:setColor("#808080");
    obj.CorBarrinha4:setAlign("client");
    obj.CorBarrinha4:setMargins({left=1, right=1, top=1, bottom=1});
    obj.CorBarrinha4:setHitTest(true);

    obj.comboBox8 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox8:setParent(obj.layout10);
    obj.comboBox8:setAlign("left");
    obj.comboBox8:setFontSize(12);
    obj.comboBox8:setWidth(82);
    obj.comboBox8:setText("Visibilidade");
    obj.comboBox8:setFontColor("white");
    obj.comboBox8:setVertTextAlign("trailing");
    obj.comboBox8:setItems({'Pública', 'Privada', 'Nenhuma'});
    obj.comboBox8:setValues({'a', 'b', 'c'});
    obj.comboBox8:setValue("a");
    obj.comboBox8:setField("VisibBarrinha4");
    obj.comboBox8:setMargins({left=4});
    obj.comboBox8:setName("comboBox8");

    obj.comboBox9 = gui.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox9:setParent(obj.layout10);
    obj.comboBox9:setAlign("left");
    obj.comboBox9:setFontSize(12);
    obj.comboBox9:setWidth(104);
    obj.comboBox9:setText("Tipo de Números");
    obj.comboBox9:setVertTextAlign("trailing");
    obj.comboBox9:setFontColor("white");
    obj.comboBox9:setField("NumerosBarrinha4");
    obj.comboBox9:setItems({'Valores Fixos', 'Porcentagens'});
    obj.comboBox9:setValues({'x', 'y'});
    obj.comboBox9:setValue("x");
    obj.comboBox9:setMargins({left=4});
    obj.comboBox9:setName("comboBox9");

    obj.dataLink5 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj.layout10);
    obj.dataLink5:setField("CorBarrinha4");
    obj.dataLink5:setDefaultValue("#808080");
    obj.dataLink5:setName("dataLink5");

    obj.layout12 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.Config);
    obj.layout12:setAlign("top");
    obj.layout12:setHeight(24);
    obj.layout12:setMargins({top=8});
    obj.layout12:setName("layout12");

    obj.checkBox1 = gui.fromHandle(_obj_newObject("checkBox"));
    obj.checkBox1:setParent(obj.layout12);
    obj.checkBox1:setMargins({left=4});
    obj.checkBox1:setAlign("left");
    obj.checkBox1:setField("EnviarNoChat");
    obj.checkBox1:setWidth(180);
    obj.checkBox1:setFontSize(12);
    obj.checkBox1:setText("Enviar alterações ao chat");
    obj.checkBox1:setName("checkBox1");

    obj.dataLink6 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj.layout12);
    obj.dataLink6:setField("EnviarNoChat");
    obj.dataLink6:setDefaultValue("false");
    obj.dataLink6:setName("dataLink6");

    obj.button5 = gui.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.layout12);
    obj.button5:setAlign("right");
    obj.button5:setWidth(80);
    obj.button5:setText("OK!");
    obj.button5:setMargins({right=8});
    obj.button5:setName("button5");

    obj.SelectCor = gui.fromHandle(_obj_newObject("popup"));
    obj.SelectCor:setParent(obj.Config);
    obj.SelectCor:setName("SelectCor");
    obj.SelectCor:setWidth(192);
    obj.SelectCor:setHeight(100);

    obj.layout13 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.SelectCor);
    obj.layout13:setAlign("top");
    obj.layout13:setHeight(24);
    obj.layout13:setName("layout13");

    obj.label37 = gui.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout13);
    obj.label37:setAlign("client");
    obj.label37:setText("Selecione a Cor:");
    obj.label37:setHorzTextAlign("center");
    lfm_setPropAsString(obj.label37, "fontStyle",  "bold");
    obj.label37:setName("label37");

    obj.Nha = gui.fromHandle(_obj_newObject("layout"));
    obj.Nha:setParent(obj.SelectCor);
    obj.Nha:setName("Nha");
    obj.Nha:setAlign("client");
    obj.Nha:setMargins({left=10, right=10});
    obj.Nha:setHitTest(true);

    obj.Selected = gui.fromHandle(_obj_newObject("layout"));
    obj.Selected:setParent(obj.Nha);
    obj.Selected:setAlign("none");
    obj.Selected:setName("Selected");
    obj.Selected:setWidth(20);
    obj.Selected:setHeight(20);

    obj.rectangle12 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.Selected);
    obj.rectangle12:setAlign("client");
    obj.rectangle12:setColor("white");
    obj.rectangle12:setName("rectangle12");

    obj.rectangle13 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.rectangle12);
    obj.rectangle13:setColor("black");
    obj.rectangle13:setAlign("client");
    obj.rectangle13:setMargins({left=1, right=1, top=1, bottom=1});
    obj.rectangle13:setName("rectangle13");

    obj.Flow = gui.fromHandle(_obj_newObject("flowLayout"));
    obj.Flow:setParent(obj.Nha);
    obj.Flow:setName("Flow");
    obj.Flow:setAlign("client");
    obj.Flow:setOrientation("horizontal");
    obj.Flow:setMaxControlsPerLine(8);
    obj.Flow:setHitTest(true);
    obj.Flow:setCanFocus(true);

    obj.layout14 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.Flow);
    obj.layout14:setAlign("left");
    obj.layout14:setWidth(20);
    obj.layout14:setHeight(20);
    obj.layout14:setHitTest(true);
    obj.layout14:setName("layout14");

    obj.rectangle14 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout14);
    obj.rectangle14:setAlign("client");
    obj.rectangle14:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle14:setHitTest(true);
    obj.rectangle14:setColor("#acacac");
    obj.rectangle14:setName("rectangle14");

    obj.layout15 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.Flow);
    obj.layout15:setAlign("left");
    obj.layout15:setWidth(20);
    obj.layout15:setHeight(20);
    obj.layout15:setHitTest(true);
    obj.layout15:setName("layout15");

    obj.rectangle15 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout15);
    obj.rectangle15:setAlign("client");
    obj.rectangle15:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle15:setHitTest(true);
    obj.rectangle15:setColor("#5959ff");
    obj.rectangle15:setName("rectangle15");

    obj.layout16 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.Flow);
    obj.layout16:setAlign("left");
    obj.layout16:setWidth(20);
    obj.layout16:setHeight(20);
    obj.layout16:setHitTest(true);
    obj.layout16:setName("layout16");

    obj.rectangle16 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout16);
    obj.rectangle16:setAlign("client");
    obj.rectangle16:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle16:setHitTest(true);
    obj.rectangle16:setColor("#59ff59");
    obj.rectangle16:setName("rectangle16");

    obj.layout17 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.Flow);
    obj.layout17:setAlign("left");
    obj.layout17:setWidth(20);
    obj.layout17:setHeight(20);
    obj.layout17:setHitTest(true);
    obj.layout17:setName("layout17");

    obj.rectangle17 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout17);
    obj.rectangle17:setAlign("client");
    obj.rectangle17:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle17:setHitTest(true);
    obj.rectangle17:setColor("#ff5959");
    obj.rectangle17:setName("rectangle17");

    obj.layout18 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.Flow);
    obj.layout18:setAlign("left");
    obj.layout18:setWidth(20);
    obj.layout18:setHeight(20);
    obj.layout18:setHitTest(true);
    obj.layout18:setName("layout18");

    obj.rectangle18 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.layout18);
    obj.rectangle18:setAlign("client");
    obj.rectangle18:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle18:setHitTest(true);
    obj.rectangle18:setColor("#ff59ff");
    obj.rectangle18:setName("rectangle18");

    obj.layout19 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.Flow);
    obj.layout19:setAlign("left");
    obj.layout19:setWidth(20);
    obj.layout19:setHeight(20);
    obj.layout19:setHitTest(true);
    obj.layout19:setName("layout19");

    obj.rectangle19 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.layout19);
    obj.rectangle19:setAlign("client");
    obj.rectangle19:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle19:setHitTest(true);
    obj.rectangle19:setColor("#ffac59");
    obj.rectangle19:setName("rectangle19");

    obj.layout20 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.Flow);
    obj.layout20:setAlign("left");
    obj.layout20:setWidth(20);
    obj.layout20:setHeight(20);
    obj.layout20:setHitTest(true);
    obj.layout20:setName("layout20");

    obj.rectangle20 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.layout20);
    obj.rectangle20:setAlign("client");
    obj.rectangle20:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle20:setHitTest(true);
    obj.rectangle20:setColor("#ffff59");
    obj.rectangle20:setName("rectangle20");

    obj.layout21 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.Flow);
    obj.layout21:setAlign("left");
    obj.layout21:setWidth(20);
    obj.layout21:setHeight(20);
    obj.layout21:setHitTest(true);
    obj.layout21:setName("layout21");

    obj.rectangle21 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.layout21);
    obj.rectangle21:setAlign("client");
    obj.rectangle21:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle21:setHitTest(true);
    obj.rectangle21:setColor("#59ffff");
    obj.rectangle21:setName("rectangle21");

    obj.layout22 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.Flow);
    obj.layout22:setAlign("left");
    obj.layout22:setWidth(20);
    obj.layout22:setHeight(20);
    obj.layout22:setHitTest(true);
    obj.layout22:setName("layout22");

    obj.rectangle22 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.layout22);
    obj.rectangle22:setAlign("client");
    obj.rectangle22:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle22:setHitTest(true);
    obj.rectangle22:setColor("#ffd159");
    obj.rectangle22:setName("rectangle22");

    obj.layout23 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.Flow);
    obj.layout23:setAlign("left");
    obj.layout23:setWidth(20);
    obj.layout23:setHeight(20);
    obj.layout23:setHitTest(true);
    obj.layout23:setName("layout23");

    obj.rectangle23 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.layout23);
    obj.rectangle23:setAlign("client");
    obj.rectangle23:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle23:setHitTest(true);
    obj.rectangle23:setColor("#5990ff");
    obj.rectangle23:setName("rectangle23");

    obj.layout24 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.Flow);
    obj.layout24:setAlign("left");
    obj.layout24:setWidth(20);
    obj.layout24:setHeight(20);
    obj.layout24:setHitTest(true);
    obj.layout24:setName("layout24");

    obj.rectangle24 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.layout24);
    obj.rectangle24:setAlign("client");
    obj.rectangle24:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle24:setHitTest(true);
    obj.rectangle24:setColor("#f4c264");
    obj.rectangle24:setName("rectangle24");

    obj.layout25 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.Flow);
    obj.layout25:setAlign("left");
    obj.layout25:setWidth(20);
    obj.layout25:setHeight(20);
    obj.layout25:setHitTest(true);
    obj.layout25:setName("layout25");

    obj.rectangle25 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.layout25);
    obj.rectangle25:setAlign("client");
    obj.rectangle25:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle25:setHitTest(true);
    obj.rectangle25:setColor("#de7a7a");
    obj.rectangle25:setName("rectangle25");

    obj.layout26 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.Flow);
    obj.layout26:setAlign("left");
    obj.layout26:setWidth(20);
    obj.layout26:setHeight(20);
    obj.layout26:setHitTest(true);
    obj.layout26:setName("layout26");

    obj.rectangle26 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.layout26);
    obj.rectangle26:setAlign("client");
    obj.rectangle26:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle26:setHitTest(true);
    obj.rectangle26:setColor("#cb83d6");
    obj.rectangle26:setName("rectangle26");

    obj.layout27 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.Flow);
    obj.layout27:setAlign("left");
    obj.layout27:setWidth(20);
    obj.layout27:setHeight(20);
    obj.layout27:setHitTest(true);
    obj.layout27:setName("layout27");

    obj.rectangle27 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.layout27);
    obj.rectangle27:setAlign("client");
    obj.rectangle27:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle27:setHitTest(true);
    obj.rectangle27:setColor("#f3658a");
    obj.rectangle27:setName("rectangle27");

    obj.layout28 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.Flow);
    obj.layout28:setAlign("left");
    obj.layout28:setWidth(20);
    obj.layout28:setHeight(20);
    obj.layout28:setHitTest(true);
    obj.layout28:setName("layout28");

    obj.rectangle28 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.layout28);
    obj.rectangle28:setAlign("client");
    obj.rectangle28:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle28:setHitTest(true);
    obj.rectangle28:setColor("#8cecb3");
    obj.rectangle28:setName("rectangle28");

    obj.layout29 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.Flow);
    obj.layout29:setAlign("left");
    obj.layout29:setWidth(20);
    obj.layout29:setHeight(20);
    obj.layout29:setHitTest(true);
    obj.layout29:setName("layout29");

    obj.rectangle29 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.layout29);
    obj.rectangle29:setAlign("client");
    obj.rectangle29:setMargins({left=2, right=2, top=2, bottom=2});
    obj.rectangle29:setHitTest(true);
    obj.rectangle29:setColor("#ed846b");
    obj.rectangle29:setName("rectangle29");

    obj.layout30 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.SelectCor);
    obj.layout30:setAlign("bottom");
    obj.layout30:setHeight(24);
    obj.layout30:setName("layout30");

    obj.button6 = gui.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.layout30);
    obj.button6:setAlign("right");
    obj.button6:setText("OK!");
    obj.button6:setMargins({right=4});
    obj.button6:setName("button6");

    obj.rectangle30 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.Listade_NPC_Dock);
    obj.rectangle30:setColor("#0f0f0f");
    obj.rectangle30:setAlign("client");
    obj.rectangle30:setPadding({top=4, left=4});
    obj.rectangle30:setName("rectangle30");

    obj.layout31 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle30);
    obj.layout31:setAlign("top");
    obj.layout31:setHeight(24);
    obj.layout31:setName("layout31");

    obj.NovaAbadeNPCs = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.NovaAbadeNPCs:setParent(obj.layout31);
    obj.NovaAbadeNPCs:setMargins({left=4});
    obj.NovaAbadeNPCs:setAlign("left");
    obj.NovaAbadeNPCs:setWidth(24);
    obj.NovaAbadeNPCs:setName("NovaAbadeNPCs");
    obj.NovaAbadeNPCs:setImageChecked("/GerenciadorDeCampanha/images/addlista.png");
    obj.NovaAbadeNPCs:setImageUnchecked("/GerenciadorDeCampanha/images/addlista.png");

    obj.comboBoxFalsa = gui.fromHandle(_obj_newObject("dataScopeBox"));
    obj.comboBoxFalsa:setParent(obj.layout31);
    obj.comboBoxFalsa:setAlign("left");
    obj.comboBoxFalsa:setMargins({left=8});
    obj.comboBoxFalsa:setName("comboBoxFalsa");
    obj.comboBoxFalsa:setWidth(128);
    obj.comboBoxFalsa:setHeight(20);
    obj.comboBoxFalsa:setHitTest(true);

    obj.rectangle31 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.comboBoxFalsa);
    obj.rectangle31:setAlign("client");
    obj.rectangle31:setColor("#333333");
    obj.rectangle31:setXradius(2);
    obj.rectangle31:setYradius(2);
    obj.rectangle31:setHitTest(true);
    obj.rectangle31:setName("rectangle31");

    obj.label38 = gui.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.rectangle31);
    obj.label38:setFontColor("white");
    obj.label38:setAlign("client");
    obj.label38:setMargins({left=8});
    obj.label38:setVertTextAlign("center");
    obj.label38:setText("Opções");
    obj.label38:setField("NomeDaOpcao");
    obj.label38:setHitTest(true);
    obj.label38:setName("label38");

    obj.path1 = gui.fromHandle(_obj_newObject("path"));
    obj.path1:setParent(obj.rectangle31);
    obj.path1:setAlign("right");
    obj.path1:setWidth(16);
    obj.path1:setMargins({right=6, left=6, top=8, bottom=8});
    obj.path1:setColor("orange");
    obj.path1:setPathData("M 100 100 L 300 100 L 200 300 z");
    obj.path1:setName("path1");

    obj.dcsMain = gui.fromHandle(_obj_newObject("dataScopeBox"));
    obj.dcsMain:setParent(obj.rectangle30);
    obj.dcsMain:setAlign("client");
    obj.dcsMain:setName("dcsMain");

    obj.ListaDeNPCs = gui.fromHandle(_obj_newObject("form"));
    obj.ListaDeNPCs:setParent(obj.dcsMain);
    obj.ListaDeNPCs:setName("ListaDeNPCs");
    obj.ListaDeNPCs:setAlign("client");
    obj.ListaDeNPCs:setTheme("dark");


		function InvocarOPopupForm(node)
			self.recordNode.scopeNode = node;
			self.dropDownFalso2.scopeNode = sheet;
			self.dropDownFalso2:show();
		end;
	
		function FecharOPopupForm()
			self.dropDownFalso2:close();
		end;
	
		function autoCalcular()
			jogz2 = {}
			mesaDaFicha = rrpg.getMesaDe(sheet);
				for i = 1, #mesaDaFicha.jogadores, 1 do
					jogz2[i] = mesaDaFicha.jogadores[i].login;
				end;
			self.dropDownFalso2.height = (24 * (#jogz2 + 1))		 
			self.opcoesFalsas2:sort();
		end;
		
		function chamarListaDeJogadores()
			if sheet ~= nil then
				self.opcoesFalsas2:sort();
				local nodes = ndb.getChildNodes(sheet.opcoesFalsas2)
				mesaDaFicha = rrpg.getMesaDe(sheet);
				jogz = {}
				jogz[1] = "Nenhum"
				jogz2 = {}
				for i = 1, #nodes, 1 do
					jogz[i+1] = (nodes[i].NomeDaOpcao or "");
				end;
				for i = 1, #mesaDaFicha.jogadores, 1 do
					jogz2[i] = mesaDaFicha.jogadores[i].login;
				end;
				if jogz2 ~= jogz then
					if #nodes >= 2 then
						for i = #nodes, 1, -1 do
						setTimeout( function()
							ndb.deleteNode(nodes[i])
						end,2)
						end;
					end;
					local node = nil;
						node = self.opcoesFalsas2:append();
					setTimeout( function()
					for i = 1, #jogz2, 1 do
						node = self.opcoesFalsas2:append();
					end;
					end,10)
				else
				end;
				setTimeout( function()
					local nodes2 = ndb.getChildNodes(sheet.opcoesFalsas2)
					for i = 1, #nodes2, 1 do
						if i == 1 then
							nodes2[i].NomeDaOpcao = "Nenhum"
							nodes2[1].CodigoInterno = 1;
						else
							nodes2[i].NomeDaOpcao = jogz2[i-1]
							nodes2[i].CodigoInterno = 2;
							nodes2[i].CodigoInterno = 2;
						end
					end;
					autoCalcular();
				end, 20)
			end
		end;
	


    obj.recordNode = gui.fromHandle(_obj_newObject("dataScopeBox"));
    obj.recordNode:setParent(obj.ListaDeNPCs);
    obj.recordNode:setName("recordNode");
    obj.recordNode:setVisible(false);

    obj.layout32 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.ListaDeNPCs);
    obj.layout32:setVisible(false);
    obj.layout32:setName("layout32");

    obj.dropDownFalso2 = gui.fromHandle(_obj_newObject("popupForm"));
    obj.dropDownFalso2:setParent(obj.layout32);
    obj.dropDownFalso2:setName("dropDownFalso2");
    obj.dropDownFalso2:setTitle("Jogador?");
    obj.dropDownFalso2:setWidth(128);
    obj.dropDownFalso2:setHeight(128);

    obj.scrollBox4 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.dropDownFalso2);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.opcoesFalsas2 = gui.fromHandle(_obj_newObject("recordList"));
    obj.opcoesFalsas2:setParent(obj.scrollBox4);
    obj.opcoesFalsas2:setMargins({left=8});
    obj.opcoesFalsas2:setVisible(true);
    obj.opcoesFalsas2:setAlign("top");
    obj.opcoesFalsas2:setTemplateForm("OpcaoDaComboboxFalsa2");
    obj.opcoesFalsas2:setField("opcoesFalsas2");
    obj.opcoesFalsas2:setName("opcoesFalsas2");
    obj.opcoesFalsas2:setLayout("verticalTiles");
    obj.opcoesFalsas2:setAutoHeight(true);
    obj.opcoesFalsas2:setSelectable(true);
    obj.opcoesFalsas2:setMinQt(0);

    obj.rectangle32 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle32:setParent(obj.ListaDeNPCs);
    obj.rectangle32:setColor("#0f0f0f");
    obj.rectangle32:setAlign("client");
    obj.rectangle32:setName("rectangle32");

    obj.layout33 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle32);
    obj.layout33:setAlign("top");
    obj.layout33:setHeight(24);
    obj.layout33:setMargins({top=4, left=2});
    obj.layout33:setName("layout33");

    obj.Configurar = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.Configurar:setParent(obj.layout33);
    obj.Configurar:setMargins({left=4});
    obj.Configurar:setAlign("left");
    obj.Configurar:setWidth(24);
    obj.Configurar:setHint("Configurações da Lista");
    obj.Configurar:setName("Configurar");
    obj.Configurar:setImageChecked("/GerenciadorDeCampanha/images/config.png");
    obj.Configurar:setImageUnchecked("/GerenciadorDeCampanha/images/config.png");

    obj.NovoNPC = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.NovoNPC:setParent(obj.layout33);
    obj.NovoNPC:setMargins({left=4});
    obj.NovoNPC:setAlign("left");
    obj.NovoNPC:setWidth(24);
    obj.NovoNPC:setHint("Adicionar novo NPC");
    obj.NovoNPC:setName("NovoNPC");
    obj.NovoNPC:setImageChecked("/GerenciadorDeCampanha/images/addnpc.png");
    obj.NovoNPC:setImageUnchecked("/GerenciadorDeCampanha/images/addnpc.png");

    obj.Organizar = gui.fromHandle(_obj_newObject("imageCheckBox"));
    obj.Organizar:setParent(obj.layout33);
    obj.Organizar:setMargins({left=4});
    obj.Organizar:setAlign("left");
    obj.Organizar:setWidth(24);
    obj.Organizar:setHint("Ordenar Lista de NPCs");
    obj.Organizar:setName("Organizar");
    obj.Organizar:setImageChecked("/GerenciadorDeCampanha/images/organize.png");
    obj.Organizar:setImageUnchecked("/GerenciadorDeCampanha/images/organize.png");

    obj.MainClient = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.MainClient:setParent(obj.rectangle32);
    obj.MainClient:setName("MainClient");
    obj.MainClient:setAlign("client");
    obj.MainClient:setMargins({top=2});

    obj.rclListaDeNPC = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDeNPC:setParent(obj.MainClient);
    obj.rclListaDeNPC:setName("rclListaDeNPC");
    obj.rclListaDeNPC:setLayout("verticalTiles");
    obj.rclListaDeNPC:setField("campoDosNPC");
    obj.rclListaDeNPC:setTemplateForm("CaixaFichaNPC");
    obj.rclListaDeNPC:setAlign("none");
    obj.rclListaDeNPC:setAutoHeight(true);
    obj.rclListaDeNPC:setSelectable(true);
    obj.rclListaDeNPC:setMinQt(0);

    obj.layout34 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle32);
    obj.layout34:setAlign("bottom");
    obj.layout34:setHeight(32);
    obj.layout34:setName("layout34");

    obj.label39 = gui.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout34);
    obj.label39:setAlign("right");
    lfm_setPropAsString(obj.label39, "fontStyle",  "italic");
    obj.label39:setFontSize(12);
    obj.label39:setOpacity(0.8);
    obj.label39:setAutoSize(true);
    obj.label39:setText("Criado por Mia\nEditado por Ambesek");
    obj.label39:setName("label39");


			function DEC_HEX(IN)
				local B,K,OUT,I,D = 16,"0123456789ABCDEF","",0
				while IN > 0 do
					I=I+1
					D = (IN % B) + 1
					IN = math.floor(IN/B)
					
					OUT = string.sub(K,D,D) .. OUT
				end
				return OUT
			end;
		
			function DonoMestre(node, foioscript)
				if sheet ~= nil then
					node = (node or sheet);
					foioscript = (foioscript or false)
					local personagem = rrpg.getPersonagemDe(sheet);                                
					
					if (personagem ~= nil) then
						local mesa = personagem.mesa;

						if ndb.testPermission(node, "writePermissions") then               
						return true;
						else
							return false;
					   end;
					else
						
						return ndb.testPermission(node, "writePermissions");
					end; 
				end;
			end;

			function EnviarMudanca(barrinhaid, blockoverlay, nomepers, nome, valor, valormax, pc, pcmax)
				if sheet ~= nil then
					if not blockoverlay then
						publico = GetBarrinhaVisivel(blockoverlay, barrinhaid);
					else
						publico = false
					end;
					porcentagem = not (GetBarrinhaNumeros(barrinhaid));
					nome = tostring(nome or GetBarrinhaNome(barrinhaid));
					
					local text = "[§K2]" .. tostring(nome) .. "[§K3] de [§K2]" .. tostring(nomepers) .. "[§K3]: ";
					
					if tonumber(valor) >= 0 then
						valor = "+" .. tostring(valor);
					end;
					if tonumber(valormax) >= 0 then
						valormax = "+" .. tostring(valormax);
					end;
					if tonumber(pc) >= 0 then
						pc = "+" .. tostring(pc);
					end;
					if tonumber(pcmax) >= 0 then
						pcmax = "+" .. tostring(pcmax);
					end;
					
					if publico then
						if not porcentagem then
							if tonumber(valormax) == 0 then
								text = text .. valor;
							else
								text = text .. valor .. "/" .. valormax;
							end;
						else
							if tonumber(valormax) == 0 then
								text = text .. pc .. "%";
							else
								text = text .. pc .. "%" .. "/" .. pcmax .. "%";
							end;
						end;
					else
						if tonumber(valor) >= 0 then
							valor = "+??";
						else 
							valor = "-??"
						end;
						if tonumber(valormax) >= 0 then
							valormax = "+??";
						else 
							valormax = "-??"
						end;
						
						if not porcentagem then
							if tonumber(valormax) == 0 then
								text = text .. valor;
							else
								text = text .. valor .. "/" .. valormax;
							end;
						else
							if tonumber(valormax) == 0 then
								text = text .. valor .. "%";
							else
								text = text .. valor .. "%" .. "/" .. valormax .. "%";
							end;
						end;
					end;
					
					local mesaDoPersonagem = rrpg.getMesaDe(sheet);
					if mesaDoPersonagem ~= nil then
						mesaDoPersonagem.activeChat:enviarMensagem(text);
					end;
				end;
			end;
			
			function RequestReload(mode)
				if sheet ~= nil then
					if mode == "begin" then
						self.rclListaDeNPC:beginUpdate();
						self.rclListaDeNPC.visible = false;
					elseif mode == "end" then
						self.rclListaDeNPC.visible = true;
						self.rclListaDeNPC:endUpdate();
					end;
				end;
			end;
		


    obj.dropDownFalso = gui.fromHandle(_obj_newObject("popup"));
    obj.dropDownFalso:setParent(obj.Listade_NPC_Dock);
    obj.dropDownFalso:setName("dropDownFalso");
    obj.dropDownFalso:setWidth(128);
    obj.dropDownFalso:setHeight(128);
    obj.dropDownFalso:setBackOpacity(0);
    obj.dropDownFalso:setNodeObject({sheet});
    obj.dropDownFalso:setHitTest(true);

    obj.scrollBox5 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.dropDownFalso);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setName("scrollBox5");

    obj.opcoesFalsas = gui.fromHandle(_obj_newObject("recordList"));
    obj.opcoesFalsas:setParent(obj.scrollBox5);
    obj.opcoesFalsas:setVisible(true);
    obj.opcoesFalsas:setAlign("client");
    obj.opcoesFalsas:setTemplateForm("OpcaoDaComboboxFalsa");
    obj.opcoesFalsas:setField("opcoesFalsas");
    obj.opcoesFalsas:setName("opcoesFalsas");
    obj.opcoesFalsas:setLayout("verticalTiles");
    obj.opcoesFalsas:setAutoHeight(true);
    obj.opcoesFalsas:setSelectable(true);
    obj.opcoesFalsas:setMinQt(1);

    obj.dataLink7 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj.Listade_NPC_Dock);
    obj.dataLink7:setField("opcaoEscolhida");
    obj.dataLink7:setDefaultValue("Opções");
    obj.dataLink7:setName("dataLink7");

    obj.dataLink8 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj.Listade_NPC_Dock);
    obj.dataLink8:setFields({'VisibBarrinha1', 'VisibBarrinha2', 'VisibBarrinha3', 'VisibBarrinha4'});
    obj.dataLink8:setDefaultValues({'a', 'a', 'a', 'a'});
    obj.dataLink8:setName("dataLink8");

    obj.dataLink9 = gui.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj.Listade_NPC_Dock);
    obj.dataLink9:setFields({'NumerosBarrinha1', 'NumerosBarrinha2', 'NumerosBarrinha3', 'NumerosBarrinha4'});
    obj.dataLink9:setDefaultValues({'x', 'x', 'x', 'x'});
    obj.dataLink9:setName("dataLink9");

    obj.tab3 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("NPCs Old");
    obj.tab3:setName("tab3");

    obj.frmGerenciador02 = gui.fromHandle(_obj_newObject("form"));
    obj.frmGerenciador02:setParent(obj.tab3);
    obj.frmGerenciador02:setName("frmGerenciador02");
    obj.frmGerenciador02:setAlign("client");
    obj.frmGerenciador02:setTheme("dark");
    obj.frmGerenciador02:setMargins({top=1});

    obj.scrollBox6 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.frmGerenciador02);
    obj.scrollBox6:setAlign("client");
    obj.scrollBox6:setName("scrollBox6");

    obj.rectangle33 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle33:setParent(obj.scrollBox6);
    obj.rectangle33:setLeft(0);
    obj.rectangle33:setTop(0);
    obj.rectangle33:setWidth(1320);
    obj.rectangle33:setHeight(20);
    obj.rectangle33:setColor("Black");
    obj.rectangle33:setName("rectangle33");

    obj.button7 = gui.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.rectangle33);
    obj.button7:setLeft(40);
    obj.button7:setTop(0);
    obj.button7:setWidth(20);
    obj.button7:setHeight(20);
    obj.button7:setText("N");
    obj.button7:setName("button7");

    obj.label40 = gui.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.rectangle33);
    obj.label40:setLeft(0);
    obj.label40:setTop(0);
    obj.label40:setWidth(1320);
    obj.label40:setHeight(20);
    obj.label40:setText("LISTA DE NPCs CONHECIDOS");
    obj.label40:setHorzTextAlign("center");
    obj.label40:setName("label40");

    obj.rclListaNPCs = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclListaNPCs:setParent(obj.rectangle33);
    obj.rclListaNPCs:setName("rclListaNPCs");
    obj.rclListaNPCs:setField("listaNPCs");
    obj.rclListaNPCs:setTemplateForm("frmGerenciador02_SELECT");
    obj.rclListaNPCs:setLeft(0);
    obj.rclListaNPCs:setTop(20);
    obj.rclListaNPCs:setWidth(1320);
    obj.rclListaNPCs:setHeight(45);
    obj.rclListaNPCs:setSelectable(true);
    obj.rclListaNPCs:setLayout("horizontal");
    obj.rclListaNPCs:setMinQt(1);

    obj.boxNPCs = gui.fromHandle(_obj_newObject("dataScopeBox"));
    obj.boxNPCs:setParent(obj.scrollBox6);
    obj.boxNPCs:setName("boxNPCs");
    obj.boxNPCs:setVisible(false);
    obj.boxNPCs:setLeft(0);
    obj.boxNPCs:setTop(0);
    obj.boxNPCs:setWidth(1320);
    obj.boxNPCs:setHeight(615);

    obj.button8 = gui.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.boxNPCs);
    obj.button8:setLeft(0);
    obj.button8:setTop(0);
    obj.button8:setWidth(20);
    obj.button8:setHeight(20);
    obj.button8:setText("+");
    obj.button8:setName("button8");

    obj.button9 = gui.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.boxNPCs);
    obj.button9:setLeft(20);
    obj.button9:setTop(0);
    obj.button9:setWidth(20);
    obj.button9:setHeight(20);
    obj.button9:setText("O");
    obj.button9:setName("button9");

    obj.rclNPCs = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclNPCs:setParent(obj.boxNPCs);
    obj.rclNPCs:setLeft(0);
    obj.rclNPCs:setTop(65);
    obj.rclNPCs:setWidth(1320);
    obj.rclNPCs:setHeight(550);
    obj.rclNPCs:setLayout("horizontalTiles");
    obj.rclNPCs:setMinQt(1);
    obj.rclNPCs:setName("rclNPCs");
    obj.rclNPCs:setField("npcs");
    obj.rclNPCs:setTemplateForm("frmGerenciador02_NPC");

    obj.tab4 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Aventuras");
    obj.tab4:setName("tab4");

    obj.frmGerenciador03 = gui.fromHandle(_obj_newObject("form"));
    obj.frmGerenciador03:setParent(obj.tab4);
    obj.frmGerenciador03:setName("frmGerenciador03");
    obj.frmGerenciador03:setAlign("client");
    obj.frmGerenciador03:setTheme("dark");
    obj.frmGerenciador03:setMargins({top=1});

    obj.scrollBox7 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox7:setParent(obj.frmGerenciador03);
    obj.scrollBox7:setAlign("client");
    obj.scrollBox7:setName("scrollBox7");

    obj.rectangle34 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle34:setParent(obj.scrollBox7);
    obj.rectangle34:setLeft(0);
    obj.rectangle34:setTop(0);
    obj.rectangle34:setWidth(830);
    obj.rectangle34:setHeight(20);
    obj.rectangle34:setColor("Black");
    obj.rectangle34:setName("rectangle34");

    obj.label41 = gui.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.rectangle34);
    obj.label41:setLeft(0);
    obj.label41:setTop(0);
    obj.label41:setWidth(830);
    obj.label41:setHeight(20);
    obj.label41:setText("LISTA DE AVENTURAS");
    obj.label41:setHorzTextAlign("center");
    obj.label41:setName("label41");

    obj.button10 = gui.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle34);
    obj.button10:setLeft(0);
    obj.button10:setTop(0);
    obj.button10:setWidth(20);
    obj.button10:setHeight(20);
    obj.button10:setText("+");
    obj.button10:setName("button10");

    obj.button11 = gui.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.rectangle34);
    obj.button11:setLeft(20);
    obj.button11:setTop(0);
    obj.button11:setWidth(20);
    obj.button11:setHeight(20);
    obj.button11:setText("O");
    obj.button11:setName("button11");

    obj.scrollBox8 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox8:setParent(obj.scrollBox7);
    obj.scrollBox8:setLeft(0);
    obj.scrollBox8:setTop(20);
    obj.scrollBox8:setWidth(830);
    obj.scrollBox8:setHeight(590);
    obj.scrollBox8:setName("scrollBox8");

    obj.rclAventuras = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclAventuras:setParent(obj.scrollBox8);
    obj.rclAventuras:setLeft(0);
    obj.rclAventuras:setTop(0);
    obj.rclAventuras:setWidth(810);
    obj.rclAventuras:setHeight(600);
    obj.rclAventuras:setItemHeight(200);
    obj.rclAventuras:setAutoHeight(true);
    obj.rclAventuras:setMinQt(1);
    obj.rclAventuras:setName("rclAventuras");
    obj.rclAventuras:setField("aventuras");
    obj.rclAventuras:setTemplateForm("frmGerenciador03_AVENTURA");

    obj.tab5 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Ata");
    obj.tab5:setName("tab5");

    obj.frmGerenciador04 = gui.fromHandle(_obj_newObject("form"));
    obj.frmGerenciador04:setParent(obj.tab5);
    obj.frmGerenciador04:setName("frmGerenciador04");
    obj.frmGerenciador04:setAlign("client");
    obj.frmGerenciador04:setTheme("dark");
    obj.frmGerenciador04:setMargins({top=1});

    obj.scrollBox9 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox9:setParent(obj.frmGerenciador04);
    obj.scrollBox9:setAlign("client");
    obj.scrollBox9:setName("scrollBox9");

    obj.rectangle35 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle35:setParent(obj.scrollBox9);
    obj.rectangle35:setLeft(0);
    obj.rectangle35:setTop(0);
    obj.rectangle35:setWidth(1260);
    obj.rectangle35:setHeight(20);
    obj.rectangle35:setColor("Black");
    obj.rectangle35:setName("rectangle35");

    obj.label42 = gui.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.rectangle35);
    obj.label42:setLeft(0);
    obj.label42:setTop(0);
    obj.label42:setWidth(1260);
    obj.label42:setHeight(20);
    obj.label42:setText("ATA DE PRESENÇA");
    obj.label42:setHorzTextAlign("center");
    obj.label42:setName("label42");

    obj.button12 = gui.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.rectangle35);
    obj.button12:setLeft(0);
    obj.button12:setTop(0);
    obj.button12:setWidth(20);
    obj.button12:setHeight(20);
    obj.button12:setText("+");
    obj.button12:setName("button12");

    obj.button13 = gui.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.rectangle35);
    obj.button13:setLeft(20);
    obj.button13:setTop(0);
    obj.button13:setWidth(20);
    obj.button13:setHeight(20);
    obj.button13:setText("O");
    obj.button13:setName("button13");

    obj.scrollBox10 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox10:setParent(obj.scrollBox9);
    obj.scrollBox10:setLeft(0);
    obj.scrollBox10:setTop(20);
    obj.scrollBox10:setWidth(1260);
    obj.scrollBox10:setHeight(590);
    obj.scrollBox10:setName("scrollBox10");

    obj.rclPresenca = gui.fromHandle(_obj_newObject("recordList"));
    obj.rclPresenca:setParent(obj.scrollBox10);
    obj.rclPresenca:setLeft(0);
    obj.rclPresenca:setTop(0);
    obj.rclPresenca:setWidth(1240);
    obj.rclPresenca:setHeight(600);
    obj.rclPresenca:setItemHeight(200);
    obj.rclPresenca:setAutoHeight(true);
    obj.rclPresenca:setMinQt(1);
    obj.rclPresenca:setLayout("horizontalTiles");
    obj.rclPresenca:setName("rclPresenca");
    obj.rclPresenca:setField("presenca");
    obj.rclPresenca:setTemplateForm("frmGerenciador04_PRESENCA");

    obj.tab6 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab6:setParent(obj.tabControl1);
    obj.tab6:setTitle("Anotaçoes");
    obj.tab6:setName("tab6");

    obj.frmFichaRPGmeister10_svg = gui.fromHandle(_obj_newObject("form"));
    obj.frmFichaRPGmeister10_svg:setParent(obj.tab6);
    obj.frmFichaRPGmeister10_svg:setName("frmFichaRPGmeister10_svg");
    obj.frmFichaRPGmeister10_svg:setAlign("client");
    obj.frmFichaRPGmeister10_svg:setTheme("dark");
    obj.frmFichaRPGmeister10_svg:setMargins({top=1});

    obj.scrollBox11 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox11:setParent(obj.frmFichaRPGmeister10_svg);
    obj.scrollBox11:setAlign("client");
    obj.scrollBox11:setName("scrollBox11");

    obj.rectangle36 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle36:setParent(obj.scrollBox11);
    obj.rectangle36:setLeft(0);
    obj.rectangle36:setTop(0);
    obj.rectangle36:setWidth(1210);
    obj.rectangle36:setHeight(20);
    obj.rectangle36:setColor("Black");
    obj.rectangle36:setName("rectangle36");

    obj.label43 = gui.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.rectangle36);
    obj.label43:setLeft(0);
    obj.label43:setTop(0);
    obj.label43:setWidth(1210);
    obj.label43:setHeight(20);
    obj.label43:setText("PAGINA EXCLUSIVA DO MESTRE");
    obj.label43:setHorzTextAlign("center");
    obj.label43:setName("label43");

    obj.button14 = gui.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.rectangle36);
    obj.button14:setLeft(0);
    obj.button14:setTop(0);
    obj.button14:setWidth(50);
    obj.button14:setHeight(20);
    obj.button14:setText("Exibir");
    obj.button14:setName("button14");

    obj.a1 = gui.fromHandle(_obj_newObject("layout"));
    obj.a1:setParent(obj.scrollBox11);
    obj.a1:setLeft(0);
    obj.a1:setTop(0);
    obj.a1:setWidth(400);
    obj.a1:setHeight(605);
    obj.a1:setName("a1");
    obj.a1:setVisible(false);

    obj.rectangle37 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle37:setParent(obj.a1);
    obj.rectangle37:setAlign("client");
    obj.rectangle37:setColor("black");
    obj.rectangle37:setName("rectangle37");

    obj.label44 = gui.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.a1);
    obj.label44:setLeft(0);
    obj.label44:setTop(0);
    obj.label44:setWidth(400);
    obj.label44:setHeight(20);
    obj.label44:setText("ANOTAÇÕES");
    obj.label44:setHorzTextAlign("center");
    obj.label44:setName("label44");

    obj.textEditor1 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor1:setParent(obj.a1);
    obj.textEditor1:setLeft(10);
    obj.textEditor1:setTop(25);
    obj.textEditor1:setWidth(380);
    obj.textEditor1:setHeight(575);
    obj.textEditor1:setField("anotacoes1");
    obj.textEditor1:setName("textEditor1");

    obj.a2 = gui.fromHandle(_obj_newObject("layout"));
    obj.a2:setParent(obj.scrollBox11);
    obj.a2:setLeft(405);
    obj.a2:setTop(0);
    obj.a2:setWidth(400);
    obj.a2:setHeight(605);
    obj.a2:setName("a2");
    obj.a2:setVisible(false);

    obj.rectangle38 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle38:setParent(obj.a2);
    obj.rectangle38:setAlign("client");
    obj.rectangle38:setColor("black");
    obj.rectangle38:setName("rectangle38");

    obj.label45 = gui.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.a2);
    obj.label45:setLeft(0);
    obj.label45:setTop(0);
    obj.label45:setWidth(400);
    obj.label45:setHeight(20);
    obj.label45:setText("ANOTAÇÕES");
    obj.label45:setHorzTextAlign("center");
    obj.label45:setName("label45");

    obj.textEditor2 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor2:setParent(obj.a2);
    obj.textEditor2:setLeft(10);
    obj.textEditor2:setTop(25);
    obj.textEditor2:setWidth(380);
    obj.textEditor2:setHeight(575);
    obj.textEditor2:setField("anotacoes2");
    obj.textEditor2:setName("textEditor2");

    obj.a3 = gui.fromHandle(_obj_newObject("layout"));
    obj.a3:setParent(obj.scrollBox11);
    obj.a3:setLeft(810);
    obj.a3:setTop(0);
    obj.a3:setWidth(400);
    obj.a3:setHeight(605);
    obj.a3:setName("a3");
    obj.a3:setVisible(false);

    obj.rectangle39 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle39:setParent(obj.a3);
    obj.rectangle39:setAlign("client");
    obj.rectangle39:setColor("black");
    obj.rectangle39:setName("rectangle39");

    obj.label46 = gui.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.a3);
    obj.label46:setLeft(0);
    obj.label46:setTop(0);
    obj.label46:setWidth(400);
    obj.label46:setHeight(20);
    obj.label46:setText("ANOTAÇÕES");
    obj.label46:setHorzTextAlign("center");
    obj.label46:setName("label46");

    obj.textEditor3 = gui.fromHandle(_obj_newObject("textEditor"));
    obj.textEditor3:setParent(obj.a3);
    obj.textEditor3:setLeft(10);
    obj.textEditor3:setTop(25);
    obj.textEditor3:setWidth(380);
    obj.textEditor3:setHeight(575);
    obj.textEditor3:setField("anotacoes3");
    obj.textEditor3:setName("textEditor3");


				local function secret()
					local jogadores = rrpg.getMesaDe(sheet).jogadores;
					local current = nil;
					
					for i = 1, #jogadores, 1 do
						if jogadores[i].login==rrpg.getCurrentUser().login then
							current = jogadores[i];
						end;
					end; 
					
					
					if current~=nil and current.isMestre then
						self.a1.visible = true;
						self.a2.visible = true;
						self.a3.visible = true;
					else
						self.a1.visible = false;
						self.a2.visible = false;
						self.a3.visible = false;
					end;
				end;
			


    obj.tab7 = gui.fromHandle(_obj_newObject("tab"));
    obj.tab7:setParent(obj.tabControl1);
    obj.tab7:setTitle("Creditos");
    obj.tab7:setName("tab7");

    obj.frmFichaRPGmeister11_svg = gui.fromHandle(_obj_newObject("form"));
    obj.frmFichaRPGmeister11_svg:setParent(obj.tab7);
    obj.frmFichaRPGmeister11_svg:setName("frmFichaRPGmeister11_svg");
    obj.frmFichaRPGmeister11_svg:setAlign("client");
    obj.frmFichaRPGmeister11_svg:setTheme("dark");
    obj.frmFichaRPGmeister11_svg:setMargins({top=1});

    obj.scrollBox12 = gui.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox12:setParent(obj.frmFichaRPGmeister11_svg);
    obj.scrollBox12:setAlign("client");
    obj.scrollBox12:setName("scrollBox12");

    obj.image1 = gui.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj.scrollBox12);
    obj.image1:setLeft(0);
    obj.image1:setTop(0);
    obj.image1:setWidth(600);
    obj.image1:setHeight(600);
    obj.image1:setSRC("/GerenciadorDeCampanha/images/RPGmeister.jpg");
    obj.image1:setStyle("stretch");
    obj.image1:setOptimize(true);
    obj.image1:setName("image1");

    obj.layout35 = gui.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.scrollBox12);
    obj.layout35:setLeft(620);
    obj.layout35:setTop(10);
    obj.layout35:setWidth(200);
    obj.layout35:setHeight(150);
    obj.layout35:setName("layout35");

    obj.rectangle40 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle40:setParent(obj.layout35);
    obj.rectangle40:setLeft(0);
    obj.rectangle40:setTop(0);
    obj.rectangle40:setWidth(200);
    obj.rectangle40:setHeight(150);
    obj.rectangle40:setColor("black");
    obj.rectangle40:setXradius(15);
    obj.rectangle40:setYradius(15);
    obj.rectangle40:setCornerType("round");
    obj.rectangle40:setName("rectangle40");

    obj.label47 = gui.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout35);
    obj.label47:setLeft(0);
    obj.label47:setTop(10);
    obj.label47:setWidth(200);
    obj.label47:setHeight(20);
    obj.label47:setText("Programador: Vinny (Ambesek)");
    obj.label47:setHorzTextAlign("center");
    obj.label47:setName("label47");

    obj.label48 = gui.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout35);
    obj.label48:setLeft(0);
    obj.label48:setTop(35);
    obj.label48:setWidth(200);
    obj.label48:setHeight(20);
    obj.label48:setText("Lista de NPCs: Mia");
    obj.label48:setHorzTextAlign("center");
    obj.label48:setName("label48");

    obj.label49 = gui.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout35);
    obj.label49:setLeft(0);
    obj.label49:setTop(60);
    obj.label49:setWidth(200);
    obj.label49:setHeight(20);
    obj.label49:setText("Arte: Nefer (Nefertyne)");
    obj.label49:setHorzTextAlign("center");
    obj.label49:setName("label49");

    obj.label50 = gui.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout35);
    obj.label50:setLeft(0);
    obj.label50:setTop(95);
    obj.label50:setWidth(200);
    obj.label50:setHeight(20);
    obj.label50:setText("Ficha feita para a mesa: ");
    obj.label50:setHorzTextAlign("center");
    obj.label50:setName("label50");

    obj.label51 = gui.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout35);
    obj.label51:setLeft(0);
    obj.label51:setTop(120);
    obj.label51:setWidth(200);
    obj.label51:setHeight(20);
    obj.label51:setText("RPGmeister");
    obj.label51:setHorzTextAlign("center");
    obj.label51:setName("label51");

    obj.label52 = gui.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.scrollBox12);
    obj.label52:setLeft(630);
    obj.label52:setTop(400);
    obj.label52:setWidth(90);
    obj.label52:setHeight(20);
    obj.label52:setText("SUA VERSÃO:");
    obj.label52:setName("label52");

    obj.rectangle41 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle41:setParent(obj.scrollBox12);
    obj.rectangle41:setLeft(724);
    obj.rectangle41:setTop(399);
    obj.rectangle41:setWidth(102);
    obj.rectangle41:setHeight(22);
    obj.rectangle41:setColor("white");
    obj.rectangle41:setStrokeColor("black");
    obj.rectangle41:setStrokeSize(1);
    obj.rectangle41:setName("rectangle41");

    obj.image2 = gui.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj.scrollBox12);
    obj.image2:setLeft(725);
    obj.image2:setTop(400);
    obj.image2:setWidth(100);
    obj.image2:setHeight(20);
    obj.image2:setStyle("autoFit");
    obj.image2:setSRC("https://dl.dropboxusercontent.com/u/31086811/Plugins/Gerenciador%20de%20Campanha%20releases/versao03.png");
    obj.image2:setName("image2");

    obj.label53 = gui.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.scrollBox12);
    obj.label53:setLeft(620);
    obj.label53:setTop(430);
    obj.label53:setWidth(100);
    obj.label53:setHeight(20);
    obj.label53:setText("VERSÃO ATUAL:");
    obj.label53:setName("label53");

    obj.rectangle42 = gui.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle42:setParent(obj.scrollBox12);
    obj.rectangle42:setLeft(724);
    obj.rectangle42:setTop(429);
    obj.rectangle42:setWidth(102);
    obj.rectangle42:setHeight(22);
    obj.rectangle42:setColor("white");
    obj.rectangle42:setStrokeColor("black");
    obj.rectangle42:setStrokeSize(1);
    obj.rectangle42:setName("rectangle42");

    obj.image3 = gui.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj.scrollBox12);
    obj.image3:setLeft(725);
    obj.image3:setTop(430);
    obj.image3:setWidth(100);
    obj.image3:setHeight(20);
    obj.image3:setStyle("autoFit");
    obj.image3:setSRC("https://dl.dropboxusercontent.com/u/31086811/Plugins/Gerenciador%20de%20Campanha%20releases/release.png");
    obj.image3:setName("image3");

    obj.button15 = gui.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.scrollBox12);
    obj.button15:setLeft(620);
    obj.button15:setTop(475);
    obj.button15:setWidth(100);
    obj.button15:setText("Change Log");
    obj.button15:setName("button15");

    obj.button16 = gui.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.scrollBox12);
    obj.button16:setLeft(730);
    obj.button16:setTop(475);
    obj.button16:setWidth(100);
    obj.button16:setText("Atualizar");
    obj.button16:setName("button16");

    obj.button17 = gui.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.scrollBox12);
    obj.button17:setLeft(840);
    obj.button17:setTop(475);
    obj.button17:setWidth(100);
    obj.button17:setText("Tutorial");
    obj.button17:setName("button17");

    obj.label54 = gui.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.scrollBox12);
    obj.label54:setLeft(620);
    obj.label54:setTop(525);
    obj.label54:setWidth(120);
    obj.label54:setHeight(20);
    obj.label54:setText("CONHEÇA A MESA:");
    obj.label54:setName("label54");

    obj.button18 = gui.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.scrollBox12);
    obj.button18:setLeft(740);
    obj.button18:setTop(525);
    obj.button18:setWidth(100);
    obj.button18:setText("RPGmeister");
    obj.button18:setName("button18");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (self)
            self.rclSessoes:sort();
        end, obj);

    obj._e_event1 = obj.button2:addEventListener("onClick",
        function (self)
            self.rclSessoes:append();
        end, obj);

    obj._e_event2 = obj.rclSessoes:addEventListener("onCompare",
        function (self, nodeA, nodeB)
            local mod1 = nodeA.numero;
            						local mod2 = nodeB.numero;
            						if mod1==nil then
            							mod1 = "zzzz";
            						end;
            						if mod2==nil then
            							mod2 = "zzzz";
            						end;
            						return utils.compareStringPtBr(mod1, mod2);
        end, obj);

    obj._e_event3 = obj.button3:addEventListener("onClick",
        function (self)
            self.rclJogadores:sort();
        end, obj);

    obj._e_event4 = obj.button4:addEventListener("onClick",
        function (self)
            self.rclJogadores:append();
        end, obj);

    obj._e_event5 = obj.rclJogadores:addEventListener("onCompare",
        function (self, nodeA, nodeB)
            local mod1 = nodeA.xp;
            						local mod2 = nodeB.xp;
            						if mod1==nil then
            							mod1 = "0";
            						end;
            						if mod2==nil then
            							mod2 = "0";
            						end;
            						return (utils.compareStringPtBr(mod1, mod2) * -1);
        end, obj);

    obj._e_event6 = obj.dataLink1:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.Selected.left = 20 * (tonumber(sheet.CorIndex or 0) % 8);
            			self.Selected.top = 20 * math.floor(tonumber(sheet.CorIndex or 0) / 8);
        end, obj);

    obj._e_event7 = obj.rectangle4:addEventListener("onClick",
        function (self)
            sheet.IndexBarrinha = 1;
            					sheet.CorIndex = sheet.IndexBarrinha1;
            					sheet.ColorString = sheet.CorBarrinha1;
            					self.SelectCor:show();
        end, obj);

    obj._e_event8 = obj.rectangle5:addEventListener("onClick",
        function (self)
            sheet.IndexBarrinha = 1;
            							sheet.CorIndex = sheet.IndexBarrinha1;
            							sheet.ColorString = sheet.CorBarrinha1;
            							self.SelectCor:show();
        end, obj);

    obj._e_event9 = obj.CorBarrinha1:addEventListener("onClick",
        function (self)
            sheet.IndexBarrinha = 1;
            								sheet.CorIndex = sheet.IndexBarrinha1;
            								sheet.ColorString = sheet.CorBarrinha1;
            								self.SelectCor:show();
        end, obj);

    obj._e_event10 = obj.dataLink2:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.CorBarrinha1.color = sheet.CorBarrinha1;
            				local nodes2 = ndb.getChildNodes(sheet.campoDosNPC);
            				for j = 1, #nodes2, 1 do
            				nodes2[j].CorBarrinha1 = sheet.CorBarrinha1;
            				end;
        end, obj);

    obj._e_event11 = obj.rectangle6:addEventListener("onClick",
        function (self)
            sheet.IndexBarrinha = 2;
            					sheet.CorIndex = sheet.IndexBarrinha2;
            					sheet.ColorString = sheet.CorBarrinha2;
            					self.SelectCor:show();
        end, obj);

    obj._e_event12 = obj.rectangle7:addEventListener("onClick",
        function (self)
            sheet.IndexBarrinha = 2;
            							sheet.CorIndex = sheet.IndexBarrinha2;
            							sheet.ColorString = sheet.CorBarrinha2;
            							self.SelectCor:show();
        end, obj);

    obj._e_event13 = obj.CorBarrinha2:addEventListener("onClick",
        function (self)
            sheet.IndexBarrinha = 2;
            								sheet.CorIndex = sheet.IndexBarrinha2;
            								sheet.ColorString = sheet.CorBarrinha2;
            								self.SelectCor:show();
        end, obj);

    obj._e_event14 = obj.dataLink3:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.CorBarrinha2.color = sheet.CorBarrinha2;
            				local nodes2 = ndb.getChildNodes(sheet.campoDosNPC);
            				for j = 1, #nodes2, 1 do
            				nodes2[j].CorBarrinha2 = sheet.CorBarrinha2;
            				end;
        end, obj);

    obj._e_event15 = obj.rectangle8:addEventListener("onClick",
        function (self)
            sheet.IndexBarrinha = 3;
            					sheet.CorIndex = sheet.IndexBarrinha3;
            					sheet.ColorString = sheet.CorBarrinha3;
            					self.SelectCor:show();
        end, obj);

    obj._e_event16 = obj.rectangle9:addEventListener("onClick",
        function (self)
            sheet.IndexBarrinha = 3;
            							sheet.CorIndex = sheet.IndexBarrinha3;
            							sheet.ColorString = sheet.CorBarrinha3;
            							self.SelectCor:show();
        end, obj);

    obj._e_event17 = obj.CorBarrinha3:addEventListener("onClick",
        function (self)
            sheet.IndexBarrinha = 3;
            								sheet.CorIndex = sheet.IndexBarrinha3;
            								sheet.ColorString = sheet.CorBarrinha3;
            								self.SelectCor:show();
        end, obj);

    obj._e_event18 = obj.dataLink4:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.CorBarrinha3.color = sheet.CorBarrinha3;
            				local nodes2 = ndb.getChildNodes(sheet.campoDosNPC);
            				for j = 1, #nodes2, 1 do
            				nodes2[j].CorBarrinha3 = sheet.CorBarrinha3;
            				end;
        end, obj);

    obj._e_event19 = obj.rectangle10:addEventListener("onClick",
        function (self)
            sheet.IndexBarrinha = 4;
            					sheet.CorIndex = sheet.IndexBarrinha4;
            					sheet.ColorString = sheet.CorBarrinha4;
            					self.SelectCor:show();
        end, obj);

    obj._e_event20 = obj.rectangle11:addEventListener("onClick",
        function (self)
            sheet.IndexBarrinha = 4;
            							sheet.CorIndex = sheet.IndexBarrinha4;
            							sheet.ColorString = sheet.CorBarrinha4;
            							self.SelectCor:show();
        end, obj);

    obj._e_event21 = obj.CorBarrinha4:addEventListener("onClick",
        function (self)
            sheet.IndexBarrinha = 4;
            								sheet.CorIndex = sheet.IndexBarrinha4;
            								sheet.ColorString = sheet.CorBarrinha4;
            								self.SelectCor:show();
        end, obj);

    obj._e_event22 = obj.dataLink5:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            self.CorBarrinha4.color = sheet.CorBarrinha4;
            				local nodes2 = ndb.getChildNodes(sheet.campoDosNPC);
            				for j = 1, #nodes2, 1 do
            				nodes2[j].CorBarrinha4 = sheet.CorBarrinha4;
            				end;
        end, obj);

    obj._e_event23 = obj.button5:addEventListener("onClick",
        function (self)
            self.Config:close();
        end, obj);

    obj._e_event24 = obj.layout14:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "0";
            				sheet.ColorString = "#acacac";
        end, obj);

    obj._e_event25 = obj.rectangle14:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "0";
            					sheet.ColorString = "#acacac";
        end, obj);

    obj._e_event26 = obj.layout15:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "1";
            				sheet.ColorString = "#5959ff";
        end, obj);

    obj._e_event27 = obj.rectangle15:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "1";
            					sheet.ColorString = "#5959ff";
        end, obj);

    obj._e_event28 = obj.layout16:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "2";
            				sheet.ColorString = "#59ff59";
        end, obj);

    obj._e_event29 = obj.rectangle16:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "2";
            					sheet.ColorString = "#59ff59";
        end, obj);

    obj._e_event30 = obj.layout17:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "3";
            				sheet.ColorString = "#ff5959";
        end, obj);

    obj._e_event31 = obj.rectangle17:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "3";
            					sheet.ColorString = "#ff5959";
        end, obj);

    obj._e_event32 = obj.layout18:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "4";
            				sheet.ColorString = "#ff59ff";
        end, obj);

    obj._e_event33 = obj.rectangle18:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "4";
            					sheet.ColorString = "#ff59ff";
        end, obj);

    obj._e_event34 = obj.layout19:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "5";
            				sheet.ColorString = "#ffac59";
        end, obj);

    obj._e_event35 = obj.rectangle19:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "5";
            					sheet.ColorString = "#ffac59";
        end, obj);

    obj._e_event36 = obj.layout20:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "6";
            				sheet.ColorString = "#ffff59";
        end, obj);

    obj._e_event37 = obj.rectangle20:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "6";
            					sheet.ColorString = "#ffff59";
        end, obj);

    obj._e_event38 = obj.layout21:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "7";
            				sheet.ColorString = "#59ffff";
        end, obj);

    obj._e_event39 = obj.rectangle21:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "7";
            					sheet.ColorString = "#59ffff";
        end, obj);

    obj._e_event40 = obj.layout22:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "8";
            				sheet.ColorString = "#ffd159";
        end, obj);

    obj._e_event41 = obj.rectangle22:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "8";
            					sheet.ColorString = "#ffd159";
        end, obj);

    obj._e_event42 = obj.layout23:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "9";
            				sheet.ColorString = "#5990ff";
        end, obj);

    obj._e_event43 = obj.rectangle23:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "9";
            					sheet.ColorString = "#5990ff";
        end, obj);

    obj._e_event44 = obj.layout24:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "10";
            				sheet.ColorString = "#f4c264";
        end, obj);

    obj._e_event45 = obj.rectangle24:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "10";
            					sheet.ColorString = "#f4c264";
        end, obj);

    obj._e_event46 = obj.layout25:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "11";
            				sheet.ColorString = "#de7a7a";
        end, obj);

    obj._e_event47 = obj.rectangle25:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "11";
            					sheet.ColorString = "#de7a7a";
        end, obj);

    obj._e_event48 = obj.layout26:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "12";
            				sheet.ColorString = "#cb83d6";
        end, obj);

    obj._e_event49 = obj.rectangle26:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "12";
            					sheet.ColorString = "#cb83d6";
        end, obj);

    obj._e_event50 = obj.layout27:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "13";
            				sheet.ColorString = "#f3658a";
        end, obj);

    obj._e_event51 = obj.rectangle27:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "13";
            					sheet.ColorString = "#f3658a";
        end, obj);

    obj._e_event52 = obj.layout28:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "14";
            				sheet.ColorString = "#8cecb3";
        end, obj);

    obj._e_event53 = obj.rectangle28:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "14";
            					sheet.ColorString = "#8cecb3";
        end, obj);

    obj._e_event54 = obj.layout29:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "15";
            				sheet.ColorString = "#ed846b";
        end, obj);

    obj._e_event55 = obj.rectangle29:addEventListener("onClick",
        function (self)
            sheet.CorIndex = "15";
            					sheet.ColorString = "#ed846b";
        end, obj);

    obj._e_event56 = obj.button6:addEventListener("onClick",
        function (self)
            if sheet.IndexBarrinha == 1 then
            								sheet.IndexBarrinha1 = sheet.CorIndex;
            								sheet.CorBarrinha1 = sheet.ColorString;
            							elseif sheet.IndexBarrinha == 2 then
            								sheet.IndexBarrinha2 = sheet.CorIndex;
            								sheet.CorBarrinha2 = sheet.ColorString;
            							elseif sheet.IndexBarrinha == 3 then
            								sheet.IndexBarrinha3 = sheet.CorIndex;
            								sheet.CorBarrinha3 = sheet.ColorString;
            							elseif sheet.IndexBarrinha == 4 then
            								sheet.IndexBarrinha4 = sheet.CorIndex;
            								sheet.CorBarrinha4 = sheet.ColorString;
            							end;
            							self.SelectCor:close();
        end, obj);

    obj._e_event57 = obj.NovaAbadeNPCs:addEventListener("onClick",
        function (self)
            if DonoMestre() then			
            						node = self.opcoesFalsas:append();
            					else
            						dialogs.alert("Apenas o dono da ficha e o mestre da mesa podem realizar esta ação.");
            					end;
        end, obj);

    obj._e_event58 = obj.rectangle31:addEventListener("onClick",
        function (self)
            self.dropDownFalso.scopeNode = sheet;
            						 self:autoCalcular();
        end, obj);

    obj._e_event59 = obj.label38:addEventListener("onClick",
        function (self)
            self.dropDownFalso.scopeNode = sheet;
            						 self:autoCalcular();
        end, obj);

    obj._e_event60 = obj.path1:addEventListener("onClick",
        function (self)
            self.dropDownFalso.scopeNode = sheet;
            							 self:autoCalcular();
        end, obj);

    obj._e_event61 = obj.ListaDeNPCs:addEventListener("onShow",
        function (self)
            if self.opcoesFalsas2.selectedNode == nil and sheet ~= nil then
            			chamarListaDeJogadores();
            			autoCalcular();
                        local nodes = ndb.getChildNodes(sheet.opcoesFalsas2);               
                        if #nodes > 0 then
                            self.opcoesFalsas2.selectedNode = nodes[1];
                        end;
                    end;
        end, obj);

    obj._e_event62 = obj.opcoesFalsas2:addEventListener("onSelect",
        function (self)
            local node = self.opcoesFalsas2.selectedNode;
            						 setTimeout(function()
            							if node ~= nil then
            								self.recordNode.scopeNode.opcaoEscolhida2 = node.NomeDaOpcao;
            							end;
            						 end,10);
        end, obj);

    obj._e_event63 = obj.opcoesFalsas2:addEventListener("onCompare",
        function (self, nodeA, nodeB)
            if (nodeA.CodigoInterno == nil) then
            							if (nodeA.NomeDaOpcao == "Nenhum") then
            								nodeA.CodigoInterno = 1;
            							else
            								nodeA.CodigoInterno = 2;
            							end;
            						end;
            						if (nodeB.CodigoInterno == nil) then
            							if (nodeB.NomeDaOpcao == "Nenhum") then
            								nodeB.CodigoInterno = 1;
            							else
            								nodeB.CodigoInterno = 2;
            							end;
            						end;
            					 
            						if nodeB.CodigoInterno > nodeA.CodigoInterno then
            							return -1;
            						elseif not (nodeB.CodigoInterno >= nodeA.CodigoInterno) then
            							return 1;
            						else
            							return 1 * utils.compareStringPtBr(nodeA.NomeDaOpcao, nodeB.NomeDaOpcao);
            						end;
        end, obj);

    obj._e_event64 = obj.rectangle32:addEventListener("onResize",
        function (self)
            if self.width >= 270 then
            				self.rclListaDeNPC.width = self.width;
            			else
            				self.rclListaDeNPC.width = 270;
            			end;
        end, obj);

    obj._e_event65 = obj.Configurar:addEventListener("onClick",
        function (self)
            if DonoMestre() then
            						self.Config.scopeNode = sheet;
            						self.Config:show();
            					else
            						dialogs.alert("Apenas o dono da ficha e o mestre da mesa podem realizar esta ação.");
            					end;
        end, obj);

    obj._e_event66 = obj.NovoNPC:addEventListener("onClick",
        function (self)
            if DonoMestre() then			
            						node = self.rclListaDeNPC:append();
            					else
            						dialogs.alert("Apenas o dono da ficha e o mestre da mesa podem realizar esta ação.");
            					end;
        end, obj);

    obj._e_event67 = obj.Organizar:addEventListener("onClick",
        function (self)
            if DonoMestre() then			
            						self.rclListaDeNPC:sort();
            					else
            						dialogs.alert("Apenas o dono da ficha e o mestre da mesa podem realizar esta ação.");
            					end;
        end, obj);

    obj._e_event68 = obj.rclListaDeNPC:addEventListener("onBeginEnumeration",
        function (self)
        end, obj);

    obj._e_event69 = obj.rclListaDeNPC:addEventListener("onItemAdded",
        function (self, node, form)
            node.CorBarrinha1 = (sheet.CorBarrinha1 or "#808080");
            					node.CorBarrinha2 = (sheet.CorBarrinha2 or "#808080");
            					node.CorBarrinha3 = (sheet.CorBarrinha3 or "#808080");
            					node.CorBarrinha4 = (sheet.CorBarrinha4 or "#808080");
            					form.Barrinha1.color = sheet.CorBarrinha1;
            					form.Barrinha2.color = sheet.CorBarrinha2;
            					form.Barrinha3.color = sheet.CorBarrinha3;
            					form.Barrinha4.color = sheet.CorBarrinha4;
        end, obj);

    obj._e_event70 = obj.rclListaDeNPC:addEventListener("onCompare",
        function (self, nodeA, nodeB)
            org = getOrganizacao();
            					if nodeA.hideNPC and not nodeB.hideNPC then
            						return 1;
            					elseif not nodeA.hideNPC and nodeB.hideNPC then
            						return -1;
            					end;
            					if org == "Alfa" then
            						return utils.compareStringPtBr(nodeA.NomeGrande, nodeB.NomeGrande);
            					else
            						if ((nodeB.alinhamentoNPC or "Padrão") > (nodeA.alinhamentoNPC or "Padrão")) then
            							return -1;
            						elseif (nodeA.alinhamentoNPC or "Padrão") == (nodeB.alinhamentoNPC or "Padrão") then
            							return utils.compareStringPtBr(nodeA.NomePequeno, nodeB.NomePequeno);
            						else
            							return 1;
            						end;
            					end;
        end, obj);

    obj._e_event71 = obj.opcoesFalsas:addEventListener("onSelect",
        function (self)
            local node = self.opcoesFalsas.selectedNode;
            					 setTimeout(function()
            						if node ~= nil then
            							 self.dcsMain.scopeNode = node;
            							 self.dcsTituloEAbas.scopeNode = node;
            							 self.comboBoxFalsa.scopeNode = node;
            						end;
            					 end,10);
            					 self.dropDownFalso:close();
        end, obj);

    obj._e_event72 = obj.opcoesFalsas:addEventListener("onBeginEnumeration",
        function (self)
            if sheet ~= nil then
            						local nodes = ndb.getChildNodes(sheet.opcoesFalsas);
            						if #nodes == 0 then
            							local node = self.opcoesFalsas:append();
            							node.NomeDaOpcao = "Principal";
            						end;
            					end;
        end, obj);

    obj._e_event73 = obj.opcoesFalsas:addEventListener("onEndEnumeration",
        function (self)
            local nodes = ndb.getChildNodes(sheet.opcoesFalsas);
            					if self.dcsMain.scopeNode == nil then
            						self.dcsMain.scopeNode = nodes[1];
            						self.dcsTituloEAbas.scopeNode = nodes[1];
            						self.comboBoxFalsa.scopeNode = nodes[1];
            					end;
        end, obj);

    obj._e_event74 = obj.dataLink7:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            if sheet ~= nil then
            				local nodes = ndb.getChildNodes(sheet.opcoesFalsas);
            				if #nodes == 0 then
            					local node = self.opcoesFalsas:append();
            				else
            					if self.dcsMain.scopeNode == nil then
            						self.dcsMain.scopeNode = nodes[1];
            						self.dcsTituloEAbas.scopeNode = nodes[1];
            						self.comboBoxFalsa.scopeNode = nodes[1];
            					end;			
            				end;
            			end;
        end, obj);

    obj._e_event75 = obj.dataLink8:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local nudes = ndb.getChildNodes(sheet.opcoesFalsas);               
            			for i = 1, #nudes, 1 do
            				local nodes = ndb.getChildNodes(nudes[i].campoDosNPC);       
            				self:beginUpdate();
            				for i = 1,#nodes, 1 do
            					if sheet.VisibBarrinha1 ~= "c" then
            						nodes[i].Barrinha1Invisivel = false;
            					else
            						nodes[i].Barrinha1Invisivel = true;
            					end;
            				
            					if sheet.VisibBarrinha2 ~= "c" then
            						nodes[i].Barrinha2Invisivel = false;
            					else
            						nodes[i].Barrinha2Invisivel = true;
            					end;
            					
            					if sheet.VisibBarrinha3 ~= "c" then
            						nodes[i].Barrinha3Invisivel = false;
            					else
            						nodes[i].Barrinha3Invisivel = true;
            					end;
            					
            					if sheet.VisibBarrinha4 ~= "c" then
            						nodes[i].Barrinha4Invisivel = false;
            					else
            						nodes[i].Barrinha4Invisivel = true;
            					end;
            				end;
            				self:endUpdate();
            			end;
        end, obj);

    obj._e_event76 = obj.dataLink9:addEventListener("onChange",
        function (self, field, oldValue, newValue)
            local nudes = ndb.getChildNodes(sheet.opcoesFalsas);               
            			for i = 1, #nudes, 1 do
            				local nodes = ndb.getChildNodes(nudes[i].campoDosNPC);    
            				self:beginUpdate();
            				for i = 1,#nodes, 1 do
            				setTimeout( function ()
            					local test = GetBarrinhaNumeros(1);
            					local d0 = (tonumber(nodes[i].Barrinha1ValorMax or 0) == 0)
            						if d0 then
            							d0 = 1
            						else
            							d0 = nodes[i].Barrinha1ValorMax
            						end;
            					if test then
            						nodes[i].InfoBarrinha1 = (nodes[i].Barrinha1Valor or 0) .. "/" .. (nodes[i].Barrinha1ValorMax  or 0);
            						nodes[i].InfoBarrinha1Oculto = "??/??";
            					else
            						nodes[i].InfoBarrinha1 = tostring(math.floor((100 * (nodes[i].Barrinha1Valor or 0)) / d0)) .. "%";
            						nodes[i].InfoBarrinha1Oculto = "??%";
            					end;
            					
            					local test = GetBarrinhaNumeros(2);
            					local d0 = (tonumber(nodes[i].Barrinha2ValorMax or 0) == 0)
            						if d0 then
            							d0 = 1
            						else
            							d0 = nodes[i].Barrinha2ValorMax
            						end;
            					if test then
            						nodes[i].InfoBarrinha2 = (nodes[i].Barrinha2Valor  or 0) .. "/" .. (nodes[i].Barrinha2ValorMax  or 0);
            						nodes[i].InfoBarrinha2Oculto = "??/??";
            					else
            						nodes[i].InfoBarrinha2 = tostring(math.floor((100 * (nodes[i].Barrinha2Valor  or 0)) / d0)) .. "%";
            						nodes[i].InfoBarrinha2Oculto = "??%";
            					end;
            					local test = GetBarrinhaNumeros(3);
            					local d0 = (tonumber(nodes[i].Barrinha3ValorMax or 0) == 0);
            						if d0 then
            							d0 = 1
            						else
            							d0 = nodes[i].Barrinha3ValorMax
            						end;
            					if test then
            						nodes[i].InfoBarrinha3 = (nodes[i].Barrinha3Valor or 0) .. "/" .. (nodes[i].Barrinha3ValorMax  or 0);
            						nodes[i].InfoBarrinha3Oculto = "??/??";
            					else
            						nodes[i].InfoBarrinha3 = tostring(math.floor((100 * (nodes[i].Barrinha3Valor or 0) ) / d0)) .. "%";
            						nodes[i].InfoBarrinha3Oculto = "??%";
            					end;
            					local test = GetBarrinhaNumeros(4);
            					local d0 = (tonumber(nodes[i].Barrinha4ValorMax or 0) == 0);
            						if d0 then
            							d0 = 1
            						else
            							d0 = nodes[i].Barrinha4ValorMax
            						end;
            					if test then
            						nodes[i].InfoBarrinha4 = (nodes[i].Barrinha4Valor or 0) .. "/" .. (nodes[i].Barrinha4ValorMax or 0);
            						nodes[i].InfoBarrinha4Oculto = "??/??";
            					else
            						nodes[i].InfoBarrinha4 = tostring(math.floor((100 * (nodes[i].Barrinha4Valor or 0)) / d0)) .. "%";
            						nodes[i].InfoBarrinha4Oculto = "??%";
            					end;
            					end, 100);
            				end;
            				self:endUpdate();
            			end;
        end, obj);

    obj._e_event77 = obj.button7:addEventListener("onClick",
        function (self)
            self.rclListaNPCs:append();
        end, obj);

    obj._e_event78 = obj.rclListaNPCs:addEventListener("onSelect",
        function (self)
            local node = self.rclListaNPCs.selectedNode;
            					self.boxNPCs.node = node;
            					self.boxNPCs.visible = (node ~= nil);
        end, obj);

    obj._e_event79 = obj.rclListaNPCs:addEventListener("onEndEnumeration",
        function (self)
            if self.rclListaNPCs.selectedNode == nil and sheet ~= nil then
            						local nodes = ndb.getChildNodes(sheet.listaNPCs);               
            						if #nodes > 0 then
            							self.rclListaNPCs.selectedNode = nodes[1];
            						end;
            					end;
        end, obj);

    obj._e_event80 = obj.button8:addEventListener("onClick",
        function (self)
            self.rclNPCs:append();
        end, obj);

    obj._e_event81 = obj.button9:addEventListener("onClick",
        function (self)
            self.rclNPCs:sort();
        end, obj);

    obj._e_event82 = obj.rclNPCs:addEventListener("onCompare",
        function (self, nodeA, nodeB)
            local mod1 = nodeA.relacao;
            						local mod2 = nodeB.relacao;
            						local modR = utils.compareStringPtBr(mod1, mod2);
            						if modR==0 then
            							mod1 = nodeA.nome;
            							mod2 = nodeB.nome;
            							modR = utils.compareStringPtBr(mod1, mod2);
            						end;
            						return modR;
        end, obj);

    obj._e_event83 = obj.button10:addEventListener("onClick",
        function (self)
            self.rclAventuras:append();
        end, obj);

    obj._e_event84 = obj.button11:addEventListener("onClick",
        function (self)
            self.rclAventuras:sort();
        end, obj);

    obj._e_event85 = obj.rclAventuras:addEventListener("onCompare",
        function (self, nodeA, nodeB)
            local mod1 = nodeA.estado;
            						local mod2 = nodeB.estado;
            						local modR = utils.compareStringPtBr(mod1, mod2);
            						if modR==0 then
            							mod1 = nodeA.numero;
            							mod2 = nodeB.numero;
            							modR = utils.compareStringPtBr(mod1, mod2);
            						end;
            						return modR;
        end, obj);

    obj._e_event86 = obj.button12:addEventListener("onClick",
        function (self)
            self.rclPresenca:append();
        end, obj);

    obj._e_event87 = obj.button13:addEventListener("onClick",
        function (self)
            self.rclPresenca:sort();
        end, obj);

    obj._e_event88 = obj.rclPresenca:addEventListener("onCompare",
        function (self, nodeA, nodeB)
            local mod1 = nodeA.nick;
            						local mod2 = nodeB.nick;
            						local modR = utils.compareStringPtBr(mod1, mod2);
            						return modR;
        end, obj);

    obj._e_event89 = obj.button14:addEventListener("onClick",
        function (self)
            secret();
        end, obj);

    obj._e_event90 = obj.button15:addEventListener("onClick",
        function (self)
            gui.openInBrowser('https://dl.dropboxusercontent.com/u/31086811/Plugins/Gerenciador%20de%20Campanha%20releases/Change%20Log.txt')
        end, obj);

    obj._e_event91 = obj.button16:addEventListener("onClick",
        function (self)
            gui.openInBrowser('https://dl.dropboxusercontent.com/u/31086811/Plugins/Gerenciador%20de%20Campanha%20releases/Gerenciador%20de%20Campanha.rpk')
        end, obj);

    obj._e_event92 = obj.button17:addEventListener("onClick",
        function (self)
            gui.openInBrowser('')
        end, obj);

    obj._e_event93 = obj.button18:addEventListener("onClick",
        function (self)
            gui.openInBrowser('http://firecast.rrpg.com.br:90/a?a=pagRWEMesaInfo.actInfoMesa&mesaid=64070');
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event93);
        __o_rrpgObjs.removeEventListenerById(self._e_event92);
        __o_rrpgObjs.removeEventListenerById(self._e_event91);
        __o_rrpgObjs.removeEventListenerById(self._e_event90);
        __o_rrpgObjs.removeEventListenerById(self._e_event89);
        __o_rrpgObjs.removeEventListenerById(self._e_event88);
        __o_rrpgObjs.removeEventListenerById(self._e_event87);
        __o_rrpgObjs.removeEventListenerById(self._e_event86);
        __o_rrpgObjs.removeEventListenerById(self._e_event85);
        __o_rrpgObjs.removeEventListenerById(self._e_event84);
        __o_rrpgObjs.removeEventListenerById(self._e_event83);
        __o_rrpgObjs.removeEventListenerById(self._e_event82);
        __o_rrpgObjs.removeEventListenerById(self._e_event81);
        __o_rrpgObjs.removeEventListenerById(self._e_event80);
        __o_rrpgObjs.removeEventListenerById(self._e_event79);
        __o_rrpgObjs.removeEventListenerById(self._e_event78);
        __o_rrpgObjs.removeEventListenerById(self._e_event77);
        __o_rrpgObjs.removeEventListenerById(self._e_event76);
        __o_rrpgObjs.removeEventListenerById(self._e_event75);
        __o_rrpgObjs.removeEventListenerById(self._e_event74);
        __o_rrpgObjs.removeEventListenerById(self._e_event73);
        __o_rrpgObjs.removeEventListenerById(self._e_event72);
        __o_rrpgObjs.removeEventListenerById(self._e_event71);
        __o_rrpgObjs.removeEventListenerById(self._e_event70);
        __o_rrpgObjs.removeEventListenerById(self._e_event69);
        __o_rrpgObjs.removeEventListenerById(self._e_event68);
        __o_rrpgObjs.removeEventListenerById(self._e_event67);
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
        if self.dcsMain ~= nil then self.dcsMain:destroy(); self.dcsMain = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.rclJogadores ~= nil then self.rclJogadores:destroy(); self.rclJogadores = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.Nha ~= nil then self.Nha:destroy(); self.Nha = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.path1 ~= nil then self.path1:destroy(); self.path1 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.comboBox3 ~= nil then self.comboBox3:destroy(); self.comboBox3 = nil; end;
        if self.frmFichaRPGmeister11_svg ~= nil then self.frmFichaRPGmeister11_svg:destroy(); self.frmFichaRPGmeister11_svg = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.Organizar ~= nil then self.Organizar:destroy(); self.Organizar = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.scrollBox9 ~= nil then self.scrollBox9:destroy(); self.scrollBox9 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.CorBarrinha4 ~= nil then self.CorBarrinha4:destroy(); self.CorBarrinha4 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.comboBox2 ~= nil then self.comboBox2:destroy(); self.comboBox2 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.a1 ~= nil then self.a1:destroy(); self.a1 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.frmGerenciador04 ~= nil then self.frmGerenciador04:destroy(); self.frmGerenciador04 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.CorBarrinha3 ~= nil then self.CorBarrinha3:destroy(); self.CorBarrinha3 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.comboBoxFalsa ~= nil then self.comboBoxFalsa:destroy(); self.comboBoxFalsa = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.tab7 ~= nil then self.tab7:destroy(); self.tab7 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.recordNode ~= nil then self.recordNode:destroy(); self.recordNode = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.textEditor1 ~= nil then self.textEditor1:destroy(); self.textEditor1 = nil; end;
        if self.SelectCor ~= nil then self.SelectCor:destroy(); self.SelectCor = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.boxNPCs ~= nil then self.boxNPCs:destroy(); self.boxNPCs = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.opcoesFalsas2 ~= nil then self.opcoesFalsas2:destroy(); self.opcoesFalsas2 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.Listade_NPC_Dock ~= nil then self.Listade_NPC_Dock:destroy(); self.Listade_NPC_Dock = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.NovaAbadeNPCs ~= nil then self.NovaAbadeNPCs:destroy(); self.NovaAbadeNPCs = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.CorBarrinha2 ~= nil then self.CorBarrinha2:destroy(); self.CorBarrinha2 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.frmFichaRPGmeister10_svg ~= nil then self.frmFichaRPGmeister10_svg:destroy(); self.frmFichaRPGmeister10_svg = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.a2 ~= nil then self.a2:destroy(); self.a2 = nil; end;
        if self.scrollBox8 ~= nil then self.scrollBox8:destroy(); self.scrollBox8 = nil; end;
        if self.scrollBox7 ~= nil then self.scrollBox7:destroy(); self.scrollBox7 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.scrollBox12 ~= nil then self.scrollBox12:destroy(); self.scrollBox12 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.scrollBox11 ~= nil then self.scrollBox11:destroy(); self.scrollBox11 = nil; end;
        if self.Configurar ~= nil then self.Configurar:destroy(); self.Configurar = nil; end;
        if self.textEditor3 ~= nil then self.textEditor3:destroy(); self.textEditor3 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.comboBox4 ~= nil then self.comboBox4:destroy(); self.comboBox4 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.comboBox6 ~= nil then self.comboBox6:destroy(); self.comboBox6 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.dropDownFalso ~= nil then self.dropDownFalso:destroy(); self.dropDownFalso = nil; end;
        if self.frmGerenciador03 ~= nil then self.frmGerenciador03:destroy(); self.frmGerenciador03 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.textEditor2 ~= nil then self.textEditor2:destroy(); self.textEditor2 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.rclListaDeNPC ~= nil then self.rclListaDeNPC:destroy(); self.rclListaDeNPC = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.dropDownFalso2 ~= nil then self.dropDownFalso2:destroy(); self.dropDownFalso2 = nil; end;
        if self.rclListaNPCs ~= nil then self.rclListaNPCs:destroy(); self.rclListaNPCs = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.Config ~= nil then self.Config:destroy(); self.Config = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.MainClient ~= nil then self.MainClient:destroy(); self.MainClient = nil; end;
        if self.a3 ~= nil then self.a3:destroy(); self.a3 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.comboBox7 ~= nil then self.comboBox7:destroy(); self.comboBox7 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.comboBox5 ~= nil then self.comboBox5:destroy(); self.comboBox5 = nil; end;
        if self.NovoNPC ~= nil then self.NovoNPC:destroy(); self.NovoNPC = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.rclPresenca ~= nil then self.rclPresenca:destroy(); self.rclPresenca = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.opcoesFalsas ~= nil then self.opcoesFalsas:destroy(); self.opcoesFalsas = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.comboBox9 ~= nil then self.comboBox9:destroy(); self.comboBox9 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.scrollBox10 ~= nil then self.scrollBox10:destroy(); self.scrollBox10 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.rclSessoes ~= nil then self.rclSessoes:destroy(); self.rclSessoes = nil; end;
        if self.comboBox8 ~= nil then self.comboBox8:destroy(); self.comboBox8 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.dcsTituloEAbas ~= nil then self.dcsTituloEAbas:destroy(); self.dcsTituloEAbas = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.Selected ~= nil then self.Selected:destroy(); self.Selected = nil; end;
        if self.CorBarrinha1 ~= nil then self.CorBarrinha1:destroy(); self.CorBarrinha1 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.Flow ~= nil then self.Flow:destroy(); self.Flow = nil; end;
        if self.rclAventuras ~= nil then self.rclAventuras:destroy(); self.rclAventuras = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.rclNPCs ~= nil then self.rclNPCs:destroy(); self.rclNPCs = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.frmGerenciador02 ~= nil then self.frmGerenciador02:destroy(); self.frmGerenciador02 = nil; end;
        if self.checkBox1 ~= nil then self.checkBox1:destroy(); self.checkBox1 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.frmGerenciador01 ~= nil then self.frmGerenciador01:destroy(); self.frmGerenciador01 = nil; end;
        if self.ListaDeNPCs ~= nil then self.ListaDeNPCs:destroy(); self.ListaDeNPCs = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

     __o_rrpgObjs.endObjectsLoading();

    return obj;
end;

local _frmBibliotecaRPGmeister = {
    newEditor = newfrmBibliotecaRPGmeister, 
    new = newfrmBibliotecaRPGmeister, 
    name = "frmBibliotecaRPGmeister", 
    dataType = "Ambesek.Gerenciador.RPGmeister", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Gerenciador de Campanha", 
    description=""};

frmBibliotecaRPGmeister = _frmBibliotecaRPGmeister;
rrpg.registrarForm(_frmBibliotecaRPGmeister);
rrpg.registrarDataType(_frmBibliotecaRPGmeister);

return _frmBibliotecaRPGmeister;
