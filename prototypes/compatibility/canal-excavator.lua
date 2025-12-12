if not mods["canal-excavator"] then return end

data:extend({{
  type = "mod-data",
  name = "canex-shchierbin-config",
  data_type = "canex-surface-config",
  data = {
    surfaceName = "shchierbin",
    localisation = {"space-location-name.shchierbin"},
    mineResult = "stone",
    oreStartingAmount = 25,
    tint = {r = 102, g = 48, b = 6},
    icon_data = {
      icon_size = 512,
    }
  },
}})