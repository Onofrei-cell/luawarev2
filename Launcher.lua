-- Why are you looking at the launcher
_G.Luaware = true

function load(link)
    loadstring(game:HttpGet((link),true))()
end

if game.PlaceId == 286090429 then
    load("link")
end
