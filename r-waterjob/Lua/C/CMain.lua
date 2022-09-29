local QBCore = exports['qb-core']:GetCoreObject()
local anim = false
CreateThread(function()
    while true do
        local _s = 1000
        local player = PlayerPedId()
        local ppos = GetEntityCoords(player)
        for k, v in pairs(Config.Points.Recoger) do
            if #(ppos - v) < 3 then
                DrawMarker(2, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.2, 0, 0, 0, 350, 0, 0, 0, 12, 0, 0, 0)
                Help("G - Recoger", v)
                if IsControlJustReleased(0, 58) then
                    if QBCore.Functions.HasItem('botellavacia') then 
                         QBCore.Functions.Progressbar('name_here', 'Interactuando...', 5000, false, false, { -- Name | Label | Time | useWhileDead | canCancel
                             disableMovement = true,
                             disableCarMovement = true,
                             disableMouse = false,
                             disableCombat = true,
                         }, {
                            animDict = 'amb@prop_human_bum_bin@base',
                            anim = 'base',
                            flags = 16,
                         }, {}, {}, function()  
                            QBCore.Functions.Notify('Llenaste una botella de agua sucia.')
                            TriggerServerEvent('r-waterjob:delteitem:bottle')
                            TriggerServerEvent('r-waterjob:additem:bottle')
                         end)
                    else 
                        QBCore.Functions.Notify('No tienes botella Vacía.')
                    end 
                end
            end
        end
        Wait(1)
    end
end)
CreateThread(function()
    while true do
        local _s = 1000
        local player = PlayerPedId()
        local ppos = GetEntityCoords(player)
        for k, v in pairs(Config.Points.Iniciar) do
            for k, dest in pairs(Config.Destino) do
            _s = 1
            if #(ppos - v) < 3 then
                DrawMarker(2, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.2, 0, 0, 0, 350, 0, 0, 0, 12, 0, 0, 0)
                Help("G - Hablar con Paco", v)
                if IsControlJustReleased(0, 58) then
                          QBCore.Functions.Progressbar('name_here', 'Hablando con Paco...', 5000, false, false, { -- Name | Label | Time | useWhileDead | canCancel
                          disableMovement = true,
                          disableCarMovement = true,
                          disableMouse = false,
                          disableCombat = true,
                      }, {
                      }, {}, {}, function()  
                          SetNewWaypoint(dest.x, dest.y, dest.z)
                          QBCore.Functions.Notify('No tengo esa cantidad, te deje una ubicacion que tiene la cantidad que necesitas y mas.')
                      end) 
                    end
                end
            end
        Wait(_s)
     end
   end
end)
CreateThread(function()
    while true do
        local _s = 1000
        local player = PlayerPedId()
        local ppos = GetEntityCoords(player)
        for k, v in pairs(Config.Points.SpeakWithReyel) do
            for k, dest in pairs(Config.Destino) do
            _s = 1
            if #(ppos - v) < 3 then
                DrawMarker(2, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.25, 0.2, 0.2, 0, 0, 0, 350, 0, 0, 0, 12, 0, 0, 0)
                Help("G - Hablar con Reysel", v)
                if IsControlJustReleased(0, 58) then
                    if QBCore.Functions.HasItem('botellaconaguasucia', 15) then 
                        QBCore.Functions.Progressbar('name_here', 'Hablando con Reysel...', 5000, false, false, { -- Name | Label | Time | useWhileDead | canCancel
                            disableMovement = true,
                            disableCarMovement = true,
                            disableMouse = false,
                            disableCombat = true,
                        }, {
                        }, {}, {}, function()  
                            TriggerServerEvent('r-waterjob:delteitem:water')
                            TriggerServerEvent('r-waterjob:additem:water')
                        end)
                    else 
                        QBCore.Functions.Notify('No tienes nada que me interese. | Necesito minimo 15')
                  end
                end
            end
            Wait(_s)
        end
    end
  end
end)



function Help(msg, coords)
    AddTextEntry('ShowFloatingHelpNotification', msg)
    SetFloatingHelpTextWorldPosition(1, coords)
    SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
    BeginTextCommandDisplayHelp('ShowFloatingHelpNotification')
    EndTextCommandDisplayHelp(2, false, false, -1)
end
CreateThread(function()
    for k, blipscoords in pairs(Config.Points["blips"]) do
        local blip = AddBlipForCoord(blipscoords.coords.x, blipscoords.coords.y, blipscoords.coords.z)
        SetBlipSprite(blip, 285)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.8)
        SetBlipColour(blip, 37)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blipscoords.label)
        EndTextCommandSetBlipName(blip)
    end
end)