local planet_map_gen = {}

planet_map_gen.shchierbin = function()
  return
  {

	property_expression_names =
    {
      elevation = "elevation_basic",
      temperature = "temperature_basic",
      moisture = "moisture_basic",
      aux = "aux_basic",
      cliffiness = "cliffiness_basic",
      cliff_elevation = "cliff_elevation_from_elevation",
      ["entity:coal:probability"] = "vulcanus_coal_probability",
      ["entity:coal:richness"] = "vulcanus_coal_richness",
    },
    cliff_settings =
    {
      name = "cliff",
      control = "nauvis_cliff",
      cliff_smoothing = 0
    },
    autoplace_controls =
    {
      ["iron-ore"] = {},
      --["copper-ore"] = {},
	  ["vulcanus_coal"] = {},
	  ["vanadium_ore"] = {},
	  --["natural_gas"] = {},
      --["stone"] = {},
      --["coal"] = {},
      --["uranium-ore"] = {},
      --["crude-oil"] = {},
      ["water"] = {},
      --["trees"] = {},
      --["enemy-base"] = {},
      --["rocks"] = {},
      --["starting_area_moisture"] = {},
      --["nauvis_cliff"] = {}
    },
    autoplace_settings =
    {
      ["tile"] =
      {
        settings =
        {
		  ["volcanic-soil-dark"] = {},
          ["volcanic-soil-light"] = {},
          ["volcanic-ash-soil"] = {},
          --["dry-dirt"] = {},
		  ["volcanic-ash-flats"] = {},
          ["volcanic-ash-light"] = {},
          ["volcanic-ash-dark"] = {},
          --["fulgoran-dunes"] = {},
          --["dirt-1"] = {},
          --["dirt-2"] = {},
          --["dirt-3"] = {},
          --["dirt-4"] = {},
          --["dirt-5"] = {},
          --["dirt-6"] = {},
          --["dirt-7"] = {},
          --["sand-1"] = {},
          --["sand-2"] = {},
          --["sand-3"] = {},
          --["red-desert-0"] = {},
          --["red-desert-1"] = {},
          --["red-desert-2"] = {},
          --["red-desert-3"] = {},
          ["shchierbin-water"] = {},
          ["shchierbin-sand"] = {},
          ["shchierbin-yellow-dune"] = {}
        }
      },
      ["decorative"] =
      {
        settings =
        {
          ["v-brown-carpet-grass"] = {},
          ["v-green-hairy-grass"] = {},
          ["v-brown-hairy-grass"] = {},
          ["v-red-pita"] = {},
          ["tiny-sulfur-rock"] = {},
          ["tiny-fulgora-rock"] = {},
		  --["tiny-volcanic-rock"] = {},
          ["small-sulfur-rock"] = {},
          ["small-fulgora-rock"] = {},
		  --["small-volcanic-rock"] = {},
		  --["ashland-lichen-tree-sturm"] = {},
          ["calcite-stain"] = {}
        }
      },
      ["entity"] =
      {
        settings =
        {
          ["iron-ore"] = {},
          --["copper-ore"] = {},
          ["stone"] = {},
		  ["vanadium-ore"] = {},
		  --["natural-gas"] = {},
          ["coal"] = {},
          --["crude-oil"] = {},
          --["uranium-ore"] = {},
          --["fish"] = {},
          --["big-sand-rock"] = {},
          --["huge-rock"] = {},
          --["big-rock"] = {},
		  ["ashland-lichen-tree"] = {},
          --["ashland-lichen-tree-flaming"] = {},
        }
      }
    }
  }
end

return planet_map_gen
