require("rrpg.lua");
require("vhd.lua");
require("utils.lua");

afkStatus = {};
afkMessage = {};
afkBotClock = {};

-- Implementação dos comandos
rrpg.messaging.listen("HandleChatCommand", 
	function (message)
		if message.comando == "afk" then
			if afkStatus[message.mesa.nome] == false or afkStatus[message.mesa.nome] == nil then
				afkStatus[message.mesa.nome] = true;
				message.mesa.chat:escrever("AfkBot habilitado!");
			else
				afkStatus[message.mesa.nome] = false;
				message.mesa.chat:escrever("AfkBot desabilitado!");
			end	
			
			message.response = {handled = true};
		elseif message.comando == "msg" then
			afkMessage[message.mesa.nome] = message.parametro;
			message.mesa.chat:escrever("Sua mensagem: [" .. afkMessage[message.mesa.nome] .. "] foi salva.");

			message.response = {handled = true};
		end
	end);

-- Escuta das mensagens de chat padrão
rrpg.messaging.listen("ChatMessage", 
	function (message)
		if afkStatus[message.mesa.nome] == true then
			local time = os.clock();
			if afkBotClock[message.mesa.nome]~=nil and afkBotClock[message.mesa.nome]+300 > time then
				return;
			end;
			afkBotClock[message.mesa.nome] = time;

			local text = utils.removerFmtChat(message.texto, true);
			local login = rrpg.getCurrentUser().login;
			local nick;
			local mestre;

			for i=1, #message.mesa.jogadores, 1 do
				if message.mesa.jogadores[i].login == login then
					nick = utils.removerFmtChat(message.mesa.jogadores[i].nick, true);
					mestre = message.mesa.jogadores[i].isMestre;
				end;
			end;

			if not mestre then
				return;
			end;

			local info = "AfkBot: Está é uma mensagem automatica de " .. nick .. "(" .. login .. ") que está ocupado e não pode responder.";

			local isLogin = string.match(' '.. login ..' ', '%A'..text..'%A') ~= nil;
			local isNick = string.match(' '.. nick ..' ', '%A'..text..'%A') ~= nil;

			if isLogin or isNick then
				message.mesa.chat:enviarNarracao(info);
				message.mesa.chat:enviarNarracao(afkMessage[message.mesa.nome]);
			end;
		end
	end);