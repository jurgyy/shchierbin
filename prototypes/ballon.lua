
data:extend({

  {
    type = "technology",
    name = "gas-ballon",
    icon = "__shchierbin__/graphics/technology/gas-ballon.png",
    icon_size = 256,
    effects =
    {
     {
        type = "unlock-recipe",
        recipe = "gas-ballon"
      },
     {
        type = "unlock-recipe",
        recipe = "gas-ballon-N"
      },
	       {
        type = "unlock-recipe",
        recipe = "gas-ballon-H"
      },
	       {
        type = "unlock-recipe",
        recipe = "gas-ballon-O"
      },
	       {
        type = "unlock-recipe",
        recipe = "gas-ballon-CO2"
      },
	       {
        type = "unlock-recipe",
        recipe = "gas-ballon-Cl"
      },
	       {
        type = "unlock-recipe",
        recipe = "gas-ballon-NH3"
      },
	  
     {
        type = "unlock-recipe",
        recipe = "un-gas-ballon-N"
      },
	       {
        type = "unlock-recipe",
        recipe = "un-gas-ballon-H"
      },
	       {
        type = "unlock-recipe",
        recipe = "un-gas-ballon-O"
      },
	       {
        type = "unlock-recipe",
        recipe = "un-gas-ballon-CO2"
      },
	       {
        type = "unlock-recipe",
        recipe = "un-gas-ballon-Cl"
      },
	       {
        type = "unlock-recipe",
        recipe = "un-gas-ballon-NH3"
      },
    },
    prerequisites = {"vanadium-steel-plate","atmosphere-processing","water-electrolysis"},
unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1},
        {"vanadium-science-pack", 1}
      },
      time = 60
    }
  },
    {
    type = "item",
    name = "gas-ballon",
	icon = "__shchierbin__/graphics/ballon/gas-ballon.png",
	icon_size = 64,
    subgroup = "barrel",
    order = "d",
	stack_size = 50,
    weight = 2*kg,
	auto_recycle=false,
  },
    {
    type = "recipe",
    name = "gas-ballon",
    category = "crafting",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "vanadium-steel-plate", amount = 1},
	  {type = "item", name = "iron-gear-wheel", amount = 1},
    },
    energy_required = 1,
    results = {{type="item", name="gas-ballon", amount=1}},
    allow_productivity = true
  },

})

data:extend({

    {
    type = "item",
    name = "gas-ballon-N",
	icon = "__shchierbin__/graphics/ballon/ballon-N.png",
	icon_size = 64,
    subgroup = "barrel",
    order = "d",
	stack_size = 50,
    weight = 2*kg,
		auto_recycle=false
  },    {
    type = "item",
    name = "gas-ballon-H",
	icon = "__shchierbin__/graphics/ballon/ballon-H.png",
	icon_size = 64,
    subgroup = "barrel",
    order = "d",
	stack_size = 50,
    weight = 2*kg,
		auto_recycle=false
  },    {
    type = "item",
    name = "gas-ballon-O",
	icon = "__shchierbin__/graphics/ballon/ballon-O.png",
	icon_size = 64,
    subgroup = "barrel",
    order = "d",
	stack_size = 50,
    weight = 2*kg,
		auto_recycle=false
  },    {
    type = "item",
    name = "gas-ballon-CO2",
	icon = "__shchierbin__/graphics/ballon/ballon-CO2.png",
	icon_size = 64,
    subgroup = "barrel",
    order = "d",
	stack_size = 50,
    weight = 2*kg,
		auto_recycle=false
  },    {
    type = "item",
    name = "gas-ballon-Cl",
	icon = "__shchierbin__/graphics/ballon/ballon-Cl.png",
	icon_size = 64,
    subgroup = "barrel",
    order = "d",
	stack_size = 50,
    weight = 2*kg,
		auto_recycle=false
  },    {
    type = "item",
    name = "gas-ballon-NH3",
	icon = "__shchierbin__/graphics/ballon/ballon-NH3.png",
	icon_size = 64,
    subgroup = "barrel",
    order = "d",
	stack_size = 50,
    weight = 2*kg,
		auto_recycle=false
  },
  
})

data:extend({
   
   {
    type = "recipe",
    name = "gas-ballon-N",
    category = "crafting-with-fluid",auto_recycle=false,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "gas-ballon", amount = 1},
	  {type = "fluid", name = "nitrogen", amount = 250},
    },
    energy_required = 1,
    results = {{type="item", name="gas-ballon-N", amount=1}},
    allow_productivity = true
  },   {
    type = "recipe",
    name = "gas-ballon-H",
    category = "crafting-with-fluid",auto_recycle=false,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "gas-ballon", amount = 1},
	  {type = "fluid", name = "hydrogen", amount = 250},
    },
    energy_required = 1,
    results = {{type="item", name="gas-ballon-H", amount=1}},
    allow_productivity = true
  },
   {
    type = "recipe",
    name = "gas-ballon-O",
    category = "crafting-with-fluid",auto_recycle=false,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "gas-ballon", amount = 1},
	  {type = "fluid", name = "oxygen", amount = 250},
    },
    energy_required = 1,
    results = {{type="item", name="gas-ballon-O", amount=1}},
    allow_productivity = true
  },
   {
    type = "recipe",
    name = "gas-ballon-CO2",
    category = "crafting-with-fluid",auto_recycle=false,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "gas-ballon", amount = 1},
	  {type = "fluid", name = "carbon-dioxide", amount = 250},
    },
    energy_required = 1,
    results = {{type="item", name="gas-ballon-CO2", amount=1}},
    allow_productivity = true
  },
   {
    type = "recipe",
    name = "gas-ballon-Cl",
    category = "crafting-with-fluid",auto_recycle=false,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "gas-ballon", amount = 1},
	  {type = "fluid", name = "chlorine", amount = 250},
    },
    energy_required = 1,
    results = {{type="item", name="gas-ballon-Cl", amount=1}},
    allow_productivity = true
  },
   {
    type = "recipe",
    name = "gas-ballon-NH3",
    category = "crafting-with-fluid",auto_recycle=false,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "gas-ballon", amount = 1},
	  {type = "fluid", name = "ammonia", amount = 250},
    },
    energy_required = 1,
    results = {{type="item", name="gas-ballon-NH3", amount=1}},
    allow_productivity = true
  },

})
data:extend({
   
   {
    type = "recipe",
    name = "un-gas-ballon-N",
    category = "crafting-with-fluid",auto_recycle=false,
		icons = {
			{
				icon = "__shchierbin__/graphics/ballon/ballon-N.png",
				icon_size = 64,
				scale = 0.9,
				shift = { 2, 2 },
				draw_background = true,
			},
			{
				icon = "__shchierbin__/graphics/fluid/nitrogen.png",
				icon_size = 64,
				scale = 0.55,
				shift = { -11, -11 },
				draw_background = true,
			},
		},
    enabled = false,
    ingredients ={{type="item", name="gas-ballon-N", amount=1}},
    energy_required = 1,
    results =     {
      {type = "item", name = "gas-ballon", amount = 1},
	  {type = "fluid", name = "nitrogen", amount = 250},
    },
    allow_productivity = true
  },   {
    type = "recipe",
    name = "un-gas-ballon-H",
    category = "crafting-with-fluid",auto_recycle=false,
		icons = {
			{
				icon = "__shchierbin__/graphics/ballon/ballon-H.png",
				icon_size = 64,
				scale = 0.9,
				shift = { 2, 2 },
				draw_background = true,
			},
			{
				icon = "__shchierbin__/graphics/fluid/hydrogen.png",
				icon_size = 64,
				scale = 0.55,
				shift = { -11, -11 },
				draw_background = true,
			},
		},
    enabled = false,
    ingredients ={{type="item", name="gas-ballon-H", amount=1}},
    energy_required = 1,
    results =     {
      {type = "item", name = "gas-ballon", amount = 1},
	  {type = "fluid", name = "hydrogen", amount = 250},
    },
    allow_productivity = true
  },
   {
    type = "recipe",
    name = "un-gas-ballon-O",
    category = "crafting-with-fluid",auto_recycle=false,
			icons = {
			{
				icon = "__shchierbin__/graphics/ballon/ballon-O.png",
				icon_size = 64,
				scale = 0.9,
				shift = { 2, 2 },
				draw_background = true,
			},
			{
				icon = "__shchierbin__/graphics/fluid/oxygen.png",
				icon_size = 64,
				scale = 0.55,
				shift = { -11, -11 },
				draw_background = true,
			},
		},
    enabled = false,
    ingredients ={{type="item", name="gas-ballon-O", amount=1}},  

    energy_required = 1,
    results =   {
      {type = "item", name = "gas-ballon", amount = 1},
	  {type = "fluid", name = "oxygen", amount = 250},
    },
    allow_productivity = true
  },
   {
    type = "recipe",
    name = "un-gas-ballon-CO2",
    category = "crafting-with-fluid",auto_recycle=false,
			icons = {
			{
				icon = "__shchierbin__/graphics/ballon/ballon-CO2.png",
				icon_size = 64,
				scale = 0.9,
				shift = { 2, 2 },
				draw_background = true,
			},
			{
				icon = "__shchierbin__/graphics/fluid/carbon-dioxide.png",
				icon_size = 64,
				scale = 0.55,
				shift = { -11, -11 },
				draw_background = true,
			},
		},
    enabled = false,
    ingredients ={{type="item", name="gas-ballon-CO2", amount=1}},

    energy_required = 1,
    results =     {
      {type = "item", name = "gas-ballon", amount = 1},
	  {type = "fluid", name = "carbon-dioxide", amount = 250},
    },
    allow_productivity = true
  },
   {
    type = "recipe",
    name = "un-gas-ballon-Cl",
    category = "crafting-with-fluid",auto_recycle=false,
			icons = {
			{
				icon = "__shchierbin__/graphics/ballon/ballon-Cl.png",
				icon_size = 64,
				scale = 0.9,
				shift = { 2, 2 },
				draw_background = true,
			},
			{
				icon = "__shchierbin__/graphics/fluid/chlorine.png",
				icon_size = 64,
				scale = 0.55,
				shift = { -11, -11 },
				draw_background = true,
			},
		},
    enabled = false,
    ingredients ={{type="item", name="gas-ballon-Cl", amount=1}},

    energy_required = 1,
    results =     {
      {type = "item", name = "gas-ballon", amount = 1},
	  {type = "fluid", name = "chlorine", amount = 250},
    },
    allow_productivity = true
  },
   {
    type = "recipe",
    name = "un-gas-ballon-NH3",
    category = "crafting-with-fluid",auto_recycle=false,
				icons = {
			{
				icon = "__shchierbin__/graphics/ballon/ballon-NH3.png",
				icon_size = 64,
				scale = 0.9,
				shift = { 2, 2 },
				draw_background = true,
			},
			{
				icon = "__shchierbin__/graphics/fluid/ammonia.png",
				icon_size = 64,
				scale = 0.55,
				shift = { -11, -11 },
				draw_background = true,
			},
		},
    enabled = false,
    ingredients ={{type="item", name="gas-ballon-NH3", amount=1}},

    energy_required = 1,
    results =     {
      {type = "item", name = "gas-ballon", amount = 1},
	  {type = "fluid", name = "ammonia", amount = 250},
    },
    allow_productivity = true
  },

})

--data:extend({  })
