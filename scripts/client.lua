ESX = nil
local CurrentActionData = {}
local lastTime = 0

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--Tenue TAXI --------
RegisterNetEvent('outfit:settenuetaxi')
AddEventHandler('outfit:settenuetaxi', function()
  if UseTenu then

    TriggerEvent('skinchanger:getSkin', function(skin)

        if skin.sex == 0 then
            local clothesSkin = {
                ['tshirt_1']  = 64, ['tshirt_2']  = 0,
                ['torso_1']   = 4,['torso_2']   = 0,
                ['decals_1']  = 0,  ['decals_2']  = 0,
                ['mask_1']    = 0,  ['mask_2']  = 0,
                ['arms']      = 12,
                ['pants_1']   = 28, ['pants_2']   = 0,
                ['shoes_1']   = 10, ['shoes_2']   = 0,
                ['helmet_1']  = 121, ['helmet_2']  = 0,
                ['bags_1']    = 0,  ['bags_2']  = 0,
                ['bproof_1']  = 0,  ['bproof_2']  = 0
            }
            TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
        else
            local clothesSkin = {
                ['tshirt_1']  = 64, ['tshirt_2']  = 0,
                ['torso_1']   = 7,['torso_2']   = 9,
                ['decals_1']  = 0,  ['decals_2']  = 0,
                ['mask_1']    = 0,  ['mask_2']  = 0,
                ['arms']      = 7,
                ['pants_1']   = 23, ['pants_2']   = 12,
                ['shoes_1']   = 29, ['shoes_2']   = 0,
                ['helmet_1']  = 120, ['helmet_2']  = 0,
                ['bags_1']    = 0,  ['bags_2']  = 0,
                ['bproof_1']  = 0,  ['bproof_2']  = 0
            }
            TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
          end
          local playerPed = GetPlayerPed(-1)
        ClearPedBloodDamage(playerPed)
        ResetPedVisibleDamage(playerPed)
        ClearPedLastWeaponDamage(playerPed)
      end)
  else

    TriggerEvent('skinchanger:getSkin', function(skin)

      ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, hasSkin)

        if hasSkin then

          TriggerEvent('skinchanger:loadSkin', skin)
          TriggerEvent('esx:restoreLoadout')
        end
      end)
    end)
  end

  UseTenu  = not UseTenu

end)
