Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
      -- 0.0 Removes All AI
      -- 0.5 Only Half Remains
      -- 1.0 Normal Density
        TrafficDensity(0.0) --Change this to your liking
        PedDensity(0.0) --Change this to your liking
    end
end)


function TrafficDensity(density)
    SetParkedVehicleDensityMultiplierThisFrame(density)
    SetVehicleDensityMultiplierThisFrame(density)
    SetRandomVehicleDensityMultiplierThisFrame(density)
end

function PedDensity()
    SetPedDensityMultiplierThisFrame(density)
    SetScenarioPedDensityMultiplierThisFrame(density)
end