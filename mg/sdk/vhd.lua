vhd = {}

function vhd.expandFileName(shortFileName)
	return __vhd__expandFileName(shortFileName);
end

function vhd.addSearchPath(directory)
	__vhd_addSearchPath(directory);
end

function vhd.removeSearchPath(directory)
	__vhd_removeSearchPath(directory);
end

function vhd.fileExists(fileName)
	return __vhd_fileExists(fileName);
end

local rrpgUtils = nil;

function vhd.openFile(fileName, mode)
	if rrpgUtils == nil then
		rrpgUtils = require("rrpgUtil.lua");
	end;

	if type(mode) ~= "string" then
		mode = "r";
	end;
		
	local expandedFileName = vhd.expandFileName(fileName);
	local streamHandle, msgError = _vhd_openFile(expandedFileName, mode);
	
	if streamHandle ~= nil then
		return rrpgUtils.streamFromHandle(streamHandle);
	else
		return nil, msgError;
	end;
end;