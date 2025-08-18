data:extend({

    {
      type = "recipe",
      name = "artillery-shell-vanad",
      enabled = false,
      ingredients =
      {
  {type = "item", name = "radar", amount = 1},
  {type = "item", name = "calcite", amount = 1},
  {type = "item", name = "vanadium-steel-plate", amount = 4},
  {type = "item", name = "explosives", amount = 8}
},
      results = {{type="item", name="artillery-shell", amount=1}}
    },
	 {
		type = "technology",
		name = "alt-vanad-artil",
		icons = {
			{
				icon = "__base__/graphics/technology/artillery.png",
				icon_size = 256,
				scale = 0.65,
				shift = { 2, 2 },
				draw_background = true,
			},
			{
				icon = "__shchierbin__/graphics/item/vanadium-steel-plate.png",
				icon_size = 64,
				scale = 1.5,
				shift = { -75, -75 },
				draw_background = true,
			},
		},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "artillery-shell-vanad"
      },
    },
    prerequisites = {"vanadium-steel-plate","artillery"},
unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"vanadium-science-pack", 1}
      },
      time = 60
    }
  },
  
})