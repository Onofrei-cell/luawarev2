function load(link)
    loadstring(game:HttpGet((link),true))()
end

if game.PlaceId == 286090429 then
    load("https://raw.githubusercontent.com/lua-ware/luawarev2/main/Scripts/Arsenal.lua")
else if game.PlaceId == 2248408710 then
    load("https://raw.githubusercontent.com/lua-ware/luawarev2/main/Scripts/Destruction.lua")
end
