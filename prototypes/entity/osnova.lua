local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
local meld = require("meld")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")

data:extend({

------------------------------------------------------------------ 

  {
    type = "item",
    name = "crusher-vanad",
	icon = "__shchierbin__/graphics/entity/crusher/crusher.png",
    subgroup = "space-platform",
    order = "e[crusher]-b[vanad]",
    inventory_move_sound = item_sounds.drill_inventory_move,
    pick_sound = item_sounds.drill_inventory_pickup,
    drop_sound = item_sounds.drill_inventory_move,
    place_result = "crusher-vanad",
	stack_size = 5,
    weight = 200*kg,
  },
    {
    type = "item",
    name = "accumulator-vanad",
	icon = "__shchierbin__/graphics/entity/accum/accum-icon.png",
    subgroup = "energy",
    order = "e-b",
    inventory_move_sound = item_sounds.drill_inventory_move,
    pick_sound = item_sounds.drill_inventory_pickup,
    drop_sound = item_sounds.drill_inventory_move,
    place_result = "accumulator-vanad",
	stack_size = 5,
    weight = 200*kg,
  },
      {
    type = "item",
    name = "chemical-furnace",
	icon = "__shchierbin__/graphics/entity/accum/accum-icon.png",
    subgroup = "energy",
    order = "e-b",
    inventory_move_sound = item_sounds.drill_inventory_move,
    pick_sound = item_sounds.drill_inventory_pickup,
    drop_sound = item_sounds.drill_inventory_move,
    place_result = "chemical-furnace",
	stack_size = 25,
    weight = 40*kg,
	hidden = true,
  }

})
data:extend({
	{
    type = "recipe",
    name = "crusher-vanad",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "vanadium-steel-plate", amount = 20},
      {type = "item", name = "carbon", amount = 20},
      {type = "item", name = "low-density-structure", amount = 10},
	  {type = "item", name = "vanadium-electro-engine-unit", amount = 10},
	  {type = "item", name = "battery", amount = 20},
      {type = "fluid", name = "lubricant", amount = 10}
    },
    energy_required = 15,
    results = {{type="item", name="crusher-vanad", amount=1}},
    allow_productivity = false
  },	{
    type = "recipe",
    name = "accumulator-vanad",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "copper-cable", amount = 5},
	  {type = "item", name = "vanadium-lithium-battery", amount = 5},
	  {type = "item", name = "low-density-structure", amount = 2},
      {type = "fluid", name = "electrolyte", amount = 20}
    },
    energy_required = 10,
    results = {{type="item", name="accumulator-vanad", amount=1}},
    allow_productivity = false
  },

})
