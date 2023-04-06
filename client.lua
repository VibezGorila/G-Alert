Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000) -- This check every 60 second you can change it to your time in miliseconds

        -- These notifications are repeating every 60 seconds if you are below 30% you can change it if you want.
        TriggerEvent('esx_status:getStatus', 'hunger', function(status)
            if status.val < 300000 then
                -- exports['okokNotify']:Alert("Jedlo", "Chod sa najest", 3000, 'warning') -- Delete (--) if you want to use okokNotify
                  exports["esx_notify"]:Notify("info", 3000, "Go Eat") -- You can change it to your message
            end
        end)

        TriggerEvent('esx_status:getStatus', 'thirst', function(status)
            if status.val < 300000 then
                -- exports['okokNotify']:Alert("Voda", "Chod sa napit", 3000, 'warning') -- Delete (--) if you want to use okokNotify
                  exports["esx_notify"]:Notify("info", 3000, "Go Drink") -- You can change it to your message
            end
        end)

        TriggerEvent('esx_status:getStatus', 'stress', function(status)
            if status.val > 100000 then
                -- exports['okokNotify']:Alert("Stress", "Si moc v strese daj sa do chillu", 3000, 'warning') -- Delete (--) if you want to use okokNotify
                  exports["esx_notify"]:Notify("info", 3000, "You are in stress chill down") -- You can change it to your message
            end
        end)
    end
end)
