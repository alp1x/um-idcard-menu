RegisterNetEvent('um-idcard-npc:server:AddItemtoExport', function(args)
    local src = source
    exports['um-idcard']:CreateMetaLicense(src, args.itemName)
    TriggerClientEvent('um-idcard-npc:client:OxNotify', src, args.itemName)
end)

lib.callback.register('um-idcard-menu:hasPermission', function(source, meta)
    return exports.qbx_core:GetPlayer(source).PlayerData.metadata.licences[meta]
    end)
