require("rrpg.lua");
require("vhd.lua");
require("utils.lua");

nicksSaved = {};

-- Implementação dos comandos
rrpg.messaging.listen("HandleChatCommand", 
	function (message)
		if message.comando == "savenick" then
			local nick;
			local login = rrpg.getCurrentUser().login;

			for i=1, #message.mesa.jogadores, 1 do
				if message.mesa.jogadores[i].login == login then
					nick = message.mesa.jogadores[i].nick;
				end;
			end;

			if nick ~= nil then
				nicksSaved[message.mesa.nome] = nick;
				message.mesa.chat:escrever("Nick <" .. nick .. "> salvo.");
			end;

			message.response = {handled = true};
		end
	end);

-- Escuta das mensagens de chat padrão
rrpg.messaging.listen("MesaJoined", 
	function (message)
		if message.eu and nicksSaved[message.mesa.nome]~=nil then

			local nick;
			local login = rrpg.getCurrentUser().login;

			for i=1, #message.mesa.jogadores, 1 do
				if message.mesa.jogadores[i].login == login then
					nick = message.mesa.jogadores[i].nick;
				end;
			end;

			if nicksSaved[message.mesa.nome] ~= nick then
				message.mesa.chat:enviarMensagem("/nick " .. nicksSaved[message.mesa.nome]);
			end;
		end
	end);

rrpg.messaging.listen("ListChatCommands",
        function(message)
                message.response = {{comando="/savenick", descricao="Salva o nick para essa mesa. "}};
        end);