data:extend({

 {
    type = "technology",
    name = "planet-discovery-shchierbin",
    icon = "__shchierbin__/graphics/icon/shchierbin.png",
    icon_size = 512,
    essential = true,
    effects =
    {
      {
        type = "unlock-space-location",
        space_location = "shchierbin",
        use_icon_overlay_constant = true
      }
    },
    prerequisites = {"agricultural-science-pack"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
		{"agricultural-science-pack", 1}
      },
      time = 60
    }
  },{
    type = "technology",
    name = "vanadium-oxide",
    icon = "__shchierbin__/graphics/technology/vanadium-oxide.png",
    icon_size = 64,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vanadium-concetrate"
      },
      {
        type = "unlock-recipe",
        recipe = "vanadium-oxide"
      },
    },
    prerequisites = {"planet-discovery-shchierbin"},
    research_trigger =
    {
      type = "mine-entity",
      entity = "vanadium-ore"
    }
  },{
    type = "technology",
    name = "vanadium-plate",
    icon = "__shchierbin__/graphics/technology/vanadium-plate.png",
    icon_size = 64,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vanadium-dust"
      },
      {
        type = "unlock-recipe",
        recipe = "vanadium-plate"
      },
    },
    prerequisites = {"vanadium-oxide","calcium-processing"},
    research_trigger =
    {
      type = "craft-item",
      item = "vanadium-oxide"
    }
  },
----------------------------------------------------------------------------------------------------------------------  stell
{
    type = "technology",
    name = "ferrovanadium",
    icon = "__shchierbin__/graphics/technology/ferrovanadium.png",
    icon_size = 64,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ferrovanadium"
      },
    },
    prerequisites = {"vanadium-oxide"},
    research_trigger =
    {
      type = "craft-item",
      item = "vanadium-concetrate"
    }
  },
---------------------------------------------------------------------------------------------------------------------- calcium
  {
    type = "technology",
    name = "calcium-processing",
    icon = "__shchierbin__/graphics/technology/calcium.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "quicklime"
      },
      {
        type = "unlock-recipe",
        recipe = "slaked-lime"
      },
      {
        type = "unlock-recipe",
        recipe = "calcium"
      },
    },
    prerequisites = {"planet-discovery-shchierbin"},
    research_trigger =
    {
      type = "mine-entity",
      entity = "ashland-lichen-tree"
    } 
  },
----------------------------------------------------------------------------------------------------------------------  gas
  --[[ {
    type = "technology",
    name = "natural-gas-processing",
    icon = "__shchierbin__/graphics/technology/vanadium-processing.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "natural-gas-processing"
      },
    },
    prerequisites = {"planet-discovery-shchierbin"},
    research_trigger =
    {
      type = "mine-entity",
      entity = "natural-gas"
    } 
  },]]{
    type = "technology",
    name = "sulfur-acid-processing",
    icon = "__shchierbin__/graphics/technology/vanadium-oxide-catalyst.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vanadium-oxide-catalyst"
      },
      {
        type = "unlock-recipe",
        recipe = "sulfuric-acid-vanadium"
      },
    },
    prerequisites = {"vanadium-oxide","chlorine-processing"},
unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 6},
        {"space-science-pack", 1}
      },
      time = 30
    }
  },
---------------------------------------------------------------------------------------------------------------------- water-salt
  {
    type = "technology",
    name = "chlorine-processing",
    icon = "__shchierbin__/graphics/technology/chlorine.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "salt"
      },
      {
        type = "unlock-recipe",
        recipe = "chlorine"
      },
    },
    prerequisites = {"planet-discovery-shchierbin"},
    research_trigger =
    {
      type = "craft-fluid",
      fluid = "sea-water"
    } 
  },
  {
    type = "technology",
    name = "ferric-chloride",
    icon = "__shchierbin__/graphics/technology/ferric-chloride.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ferric-chloride"
      },
     {
        type = "unlock-recipe",
        recipe = "fecl-advanced-circuit"
      },
    },
    prerequisites = {"chlorine-processing","vanadium-plate"},
unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 4},
        {"space-science-pack", 2}
      },
      time = 30
    }
  },

---------------------------------------------------------------------------------------------------------------------- post-vanadium
    {
    type = "technology",
    name = "vanadium-steel-plate",
    icon = "__shchierbin__/graphics/technology/vanadium-steel-plate.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vanadium-steel-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "vanadium-electro-engine-unit"
      },
    },
    prerequisites = {"vanadium-science-pack","metallurgic-science-pack","ferrovanadium"},
unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"vanadium-science-pack", 1}
      },
      time = 45
    }
  },
    {
    type = "technology",
    name = "crusher-vanad",
    icon = "__shchierbin__/graphics/technology/crusher-2.png",
    icon_size = 128,
    effects =
    {
	      {
        type = "unlock-recipe",
        recipe = "crusher-vanad"
      },
	      {
        type = "unlock-recipe",
        recipe = "metallic-asteroid-crushing-2"
      },
	      {
        type = "unlock-recipe",
        recipe = "carbonic-asteroid-crushing-2"
      },
	      {
        type = "unlock-recipe",
        recipe = "oxide-asteroid-crushing-2"
      },
    },
    prerequisites = {"vanadium-steel-plate","advanced-asteroid-processing"},
unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 3},
        {"chemical-science-pack", 2},
        {"space-science-pack", 3},
        {"metallurgic-science-pack", 3},
        {"agricultural-science-pack", 1},
        {"vanadium-science-pack", 3}
      },
      time = 45
    }
  },
  {
    type = "technology",
    name = "chemical-furnace",
    icon = "__shchierbin__/graphics/technology/vanadium-processing.png",
    icon_size = 256,
    effects =
    {
    },
    prerequisites = {"gas-ballon"},
unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"vanadium-science-pack", 1}
      },
      time = 45
    }, hidden = true 
	},
  {
    type = "technology",
    name = "atmosphere-processing",
    icon = "__shchierbin__/graphics/technology/atmosphere-processing.png",
    icon_size = 128,
    effects =
    {
	      {
        type = "unlock-recipe",
        recipe = "atmosphere"
      },
	      {
        type = "unlock-recipe",
        recipe = "atmosphere-goj"
      },
    },
    prerequisites = {"vanadium-science-pack"},
unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"vanadium-science-pack", 1}
      },
      time = 30
    } },
  {
    type = "technology",
    name = "water-electrolysis",
	icons = {
			{
				icon = "__base__/graphics/icons/fluid/water.png",
				icon_size = 64,
				scale = 0.8,
				shift = { 0, 0 },
				draw_background = true,
			},
			
			{
				icon = "__shchierbin__/graphics/fluid/oxygen.png",
				icon_size = 64,
				scale = 0.45,
				shift = { 15, -11 },
				draw_background = true,
			},
			{
				icon = "__shchierbin__/graphics/fluid/hydrogen.png",
				icon_size = 64,
				scale = 0.55,
				shift = { -15, -11 },
				draw_background = true,
			},
		},
    effects =
    {
	      {
        type = "unlock-recipe",
        recipe = "water-electrolysis"
      },
    },
    prerequisites = {"chlorine-processing"},
unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
      },
      time = 30
    } },
  {
    type = "technology",
    name = "ammonia-syntes",
	icons = {
			{
				icon = "__shchierbin__/graphics/fluid/ammonia.png",
				icon_size = 64,
				scale = 0.7,
				shift = { 0, 12 },
				draw_background = true,
			},
			
			{
				icon = "__shchierbin__/graphics/fluid/nitrogen.png",
				icon_size = 64,
				scale = 0.45,
				shift = { 14, -16 },
				draw_background = true,
			},
			{
				icon = "__shchierbin__/graphics/fluid/hydrogen.png",
				icon_size = 64,
				scale = 0.55,
				shift = { -14, -16 },
				draw_background = true,
			},
		},
    effects =
    {
	      {
        type = "unlock-recipe",
        recipe = "ammonia-syntes"
      },
    },
    prerequisites = {"atmosphere-processing"},
unit =
    {
      count = 250,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"vanadium-science-pack", 1}
      },
      time = 30
    } },
  {
    type = "technology",
    name = "vanadium-bones",
    icon = "__shchierbin__/graphics/technology/vanadium-bones.png",
    icon_size = 256,
    effects =
    {
      {type = "character-health-bonus", modifier = 75},
      {type = "character-running-speed", modifier = 0.1},
    },
    prerequisites = {"vanadium-science-pack"},
unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"vanadium-science-pack", 1}
      },
      time = 60
    } },
  {
    type = "technology",
    name = "vanadium-lithium-battery",
    icon = "__shchierbin__/graphics/technology/vanadium-lithium-battery.png",
    icon_size = 256,
    effects =
    {
	      {
        type = "unlock-recipe",
        recipe = "vanadium-lithium-battery"
      },
	      {
        type = "unlock-recipe",
        recipe = "accumulator-vanad"
      },
    },
    prerequisites = {"vanadium-science-pack","cryogenic-science-pack","ferric-chloride"},
unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"vanadium-science-pack", 1},
        {"cryogenic-science-pack", 1}
      },
      time = 60
    }
  }
})
