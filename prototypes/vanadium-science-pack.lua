table.insert(data.raw["lab"]["lab"].inputs, "vanadium-science-pack")
table.insert(data.raw["lab"]["biolab"].inputs, "vanadium-science-pack")

data:extend {{
    type = "tool",
    name = "vanadium-science-pack",
    icon = "__shchierbin__/graphics/item/vanadium-science-pack.png",
    icon_size = 64,
    subgroup = "science-pack",
    order = "j[vanadium-science-pack]",
    stack_size = data.raw.tool["automation-science-pack"].stack_size,
    durability = data.raw.tool["automation-science-pack"].durability,
    durability_description_key = data.raw.tool["automation-science-pack"].durability_description_key,
    durability_description_value = data.raw.tool["automation-science-pack"].durability_description_value,
    weight = data.raw.tool["automation-science-pack"].weight,
	random_tint_color = item_tints.bluish_science
}}
data:extend {{
    type = "technology",
    name = "vanadium-science-pack",
    icon = "__shchierbin__/graphics/item/vanadium-science-pack.png",
    icon_size = 64,
    essential = true,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "vanadium-science-pack"
      },
    },
    research_trigger = {
        type = "craft-item",
        item = "vanadium-plate",
        amount = 1,
    },
    prerequisites = {
        "chlorine-processing","vanadium-plate"
    },
    order = "eg[petrol-science-pack]",
}}