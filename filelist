local files = {
	"main",
	"otherfile",
}

for i, file in pairs(files) do
	print(tostring(i).."/"..tostring(#files).." ", file)
	if fs.exists(file) then
		fs.delete(file)
	end
	shell.run("openp/github", "get", "kakkuu", "cc-gui", "dev", file, file)
end
