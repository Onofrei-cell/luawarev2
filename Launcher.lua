print("Luaware V2 - "..game.Name)

function loadscript(url)
    loadstring(game:HttpGet((url),true))()
end

if game.GameId == 2551991523 then -- Broken Bones IV
    loadscript("https://raw.githubusercontent.com/lua-ware/luawarev2/main/Scripts/BrokenBones.lua")
elseif game.GameId == 2248408710 then -- Destruction Simulator
    loadscript("https://raw.githubusercontent.com/lua-ware/luawarev2/main/Scripts/Destruction.lua")
elseif game.GameId == 286090429 then -- Arsenal
    loadscript("https://raw.githubusercontent.com/lua-ware/luawarev2/main/Scripts/Arsenal.lua")
end
