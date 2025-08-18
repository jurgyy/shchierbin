data:extend({--[[{
    type = "fluid",
    name = "natural-gas",
    icon = "__shchierbin__/graphics/fluid/natural-gas.png",
    subgroup = "fluid",
    order = "b[new-fluid]-f[shchierbin]-a[natural-gas]",
    default_temperature = 25,
    max_temperature = 75,
    base_color = { 0.384, 0.792, 0.943},
    flow_color = { 0.384, 0.792, 0.943},
    auto_barrel = false
	},{
        type = "fluid",
        name = "hydrogen-sulfide",
        subgroup = "fluid",
        base_color = { r = 0.7, g = 0.7, b = 0.4 },
        flow_color = { r = 0.7, g = 0.7, b = 0.4 },
        default_temperature = 25,
        icon = "__space-age__/graphics/icons/fluid/ammoniacal-solution.png",
		auto_barrel = false
    },{
        type = "fluid",
        name = "sulfur-dioxide",
        subgroup = "fluid",
        base_color = { r = 0.8, g = 0.8, b = 0.5 },
        flow_color = { r = 0.8, g = 0.8, b = 0.5 },
        default_temperature = 25,
        icon = "__space-age__/graphics/icons/fluid/ammoniacal-solution.png",
		auto_barrel = false
    },{
    type = "fluid",
    name = "methane",
    icon = "__shchierbin__/graphics/fluid/methane.png",
    subgroup = "fluid",
		default_temperature = 15,
		max_temperature = 535,
    base_color = { 0.8, 0.8, 0.8},
    flow_color = { 0.8, 0.8, 0.8},
    auto_barrel = false
	},{
    type = "fluid",
    name = "chloromethane",
    icon = "__shchierbin__/graphics/fluid/methane.png",
    subgroup = "fluid",
		default_temperature = 15,
		max_temperature = 535,
    base_color = { 0.7, 0.95, 0.7},
    flow_color = { 0.7, 0.95, 0.7},
    auto_barrel = false
	},]]{
    type = "fluid",
    name = "sea-water",
    icon = "__shchierbin__/graphics/fluid/sea-water.png",
    subgroup = "fluid",
    default_temperature = 25,
    max_temperature = 75,
    base_color = { 0.324, 0.702, 0.843},
    flow_color = { 0.324, 0.702, 0.843},
    auto_barrel = true
	},{
    type = "fluid",
    name = "chlorine",
    icon = "__shchierbin__/graphics/fluid/chlorine.png",
    subgroup = "fluid",
    default_temperature = 25,
    max_temperature = 75,
    base_color = { 0.384, 0.943, 0.792},
    flow_color = { 0.384, 0.943, 0.792},
    auto_barrel = false
	},{
        type = "fluid",
        name = "sodium-hydroxide",
        subgroup = "fluid",
        base_color = { r = 0.8, g = 0.5, b = 0.45 },
        flow_color = { r = 0.8, g = 0.5, b = 0.45 },
        default_temperature = 25,
        icon = "__shchierbin__/graphics/fluid/sodium-hydroxide.png"
    },{
        type = "fluid",
        name = "ferric-chloride",
        subgroup = "fluid",
        base_color = { r = 0.7, g = 0.55, b = 0.2 },
        flow_color = { r = 0.7, g = 0.55, b = 0.2 },
        default_temperature = 25,
        icon = "__shchierbin__/graphics/fluid/ferric-chloride.png"

    }
-----------------------------------------------------------------------------gas
,{
        type = "fluid",
        name = "nitrogen",
        subgroup = "fluid",
    base_color = {0.40, 0.55, 0.71},
    flow_color = {0.40, 0.55, 0.71},
        default_temperature = 25,
		    auto_barrel = false,
        icon = "__shchierbin__/graphics/fluid/nitrogen.png"

    },{
        type = "fluid",
        name = "hydrogen",
        subgroup = "fluid",
        base_color = { r = 0.7, g = 0.7, b = 0.7 },
        flow_color = { r = 0.7, g = 0.7, b = 0.7 },
        default_temperature = 25,
				    auto_barrel = false,
        icon = "__shchierbin__/graphics/fluid/hydrogen.png"

    },{
        type = "fluid",
        name = "oxygen",
        subgroup = "fluid",
        base_color = { r = 0.90, g = 0.2, b = 0.2 },
        flow_color = { r = 0.90, g = 0.2, b = 0.2 },
        default_temperature = 25,
				    auto_barrel = false,
        icon = "__shchierbin__/graphics/fluid/oxygen.png"

    },{
        type = "fluid",
        name = "carbon-dioxide",
        subgroup = "fluid",
      base_color = {0.11, 0.1, 0.1},
      flow_color = {0.11, 0.1, 0.1},
        default_temperature = 25,
				    auto_barrel = false,
        icon = "__shchierbin__/graphics/fluid/carbon-dioxide.png"

    },{ 
		type = "fluid",
        name = "maraxsis-atmosphere",
        default_temperature = 25,
        base_color = {1, 1, 1},
        flow_color = {0.5, 0.5, 1},
        icon = "__shchierbin__/graphics/fluid/atmosphere.png",
        subgroup = "fluid",
        icon_size = 64,
		}
	
	})