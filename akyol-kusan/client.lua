local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("akyolcl:progressbar")
AddEventHandler("akyolcl:progressbar", function()
QBCore.Functions.Progressbar('Kusan', 'Ekipman Kuşanıyorsun', Config.kusansure, false, true, {
  disableMovement = true,
  disableCarMovement = true,
  disableMouse = false,
  disableCombat = true
  }, {
    animDict = "random@mugging4",
    anim = "struggle_loop_b_thief",
    flags = 49,
  }, {}, {}, function()
      TriggerServerEvent("akyolsv:kusan")
  end, function()
    QBCore.Functions.Notify("Vazgeçtin", "error", 5000)
end)
end)

exports['qb-target']:AddCircleZone("kusan", Config.kusankonum, 1.5, {
  name = "kusan",
  debugPoly = false,
}, {
  options = {
    {
      type = "client",
      event = "akyolcl:progressbar",
      label = 'Ekipman Kuşan',
      icon = 'briefcase',
      job = 'police',
    }
  },
  distance = 2.5,
})
