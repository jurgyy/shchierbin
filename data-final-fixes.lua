
if settings.startup["delete-gleba-fulgora-space-connection"].value == true then data.raw["space-connection"]["gleba-fulgora"] = nil end

if settings.startup["vannila-ammiak"].value == false then data.raw["fluid"]["ammonia"].icon = "__shchierbin__/graphics/fluid/ammonia.png" end