local thismod = minetest.get_current_modname()
local modpath = minetest.get_modpath(thismod)
nc_stuccol = {curing = {stages = {"sodden","moist","damp","dry","powdered"}},
patterns = {"gkey","beetle","bindy","crossy","corinth","hashy","icebox","vermi","bricky",
"hexy","brexy","barry","ridgey","lamby","doric","starry","targey"},
theseNodes = {}}
for k,v in ipairs(nc_stuccol.patterns)do
    nc_stuccol.theseNodes[k] = "nc_stucco:stucco" .. v
end
rawset(_G, thismod, nc_stuccol)


dofile(modpath .. "/nodes.lua")
dofile(modpath .. "/curing.lua")
dofile(modpath .. "/crafting.lua")
