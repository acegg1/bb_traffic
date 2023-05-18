Config = {}
local configFile = LoadResourceFile(GetCurrentResourceName(), "config/config.lua")
if configFile then
    assert(load(configFile))()
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        SetTrafficDensity(Config.TrafficDensity)
        SetPedDensity(Config.PedDensity)
    end
end)

function SetTrafficDensity(density)
    SetParkedVehicleDensityMultiplierThisFrame(density)
    SetVehicleDensityMultiplierThisFrame(density)
    SetRandomVehicleDensityMultiplierThisFrame(density)
end

function SetPedDensity(density)
    SetPedDensityMultiplierThisFrame(density)
    SetScenarioPedDensityMultiplierThisFrame(density)
end
