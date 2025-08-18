local resource_autoplace = require("resource-autoplace")
local sounds = require("__base__.prototypes.entity.sounds")

local function resource(resource_parameters, autoplace_parameters)
  return
  {
    type = "resource",
    name = resource_parameters.name,
    icon = "__shchierbin__/graphics/icon/" .. resource_parameters.name .. ".png",
	icon_size = 128,
    flags = {"placeable-neutral"},
    order="a-b-"..resource_parameters.order,
    tree_removal_probability = 0.8,
    tree_removal_max_distance = 32 * 32,
    minable = resource_parameters.minable or
    {
      mining_particle = "copper-ore-particle",
      mining_time = resource_parameters.mining_time,
      result = resource_parameters.name
    },
    category = resource_parameters.category,
    subgroup = resource_parameters.subgroup,
    walking_sound = resource_parameters.walking_sound,
    collision_mask = resource_parameters.collision_mask,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    resource_patch_search_radius = resource_parameters.resource_patch_search_radius,
    autoplace = autoplace_parameters.probability_expression ~= nil and
    {
      --control = resource_parameters.name,
      order = resource_parameters.order,
      probability_expression = autoplace_parameters.probability_expression,
      richness_expression = autoplace_parameters.richness_expression
    }
    or resource_autoplace.resource_autoplace_settings
    {
      name = resource_parameters.name,
      order = resource_parameters.order,
      autoplace_control_name = resource_parameters.autoplace_control_name,
      base_density = autoplace_parameters.base_density,
      base_spots_per_km = autoplace_parameters.base_spots_per_km2,
      regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
      starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
      candidate_spot_count = autoplace_parameters.candidate_spot_count,
      tile_restriction = autoplace_parameters.tile_restriction
    },
    stage_counts = {4300, 2600, 1700, 1100, 600, 300, 150, 80},
    stages =
    {
      sheet =
      {
        filename = "__shchierbin__/graphics/entity/" .. resource_parameters.name .. "/" .. resource_parameters.name .. ".png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
    },
    map_color = resource_parameters.map_color,
    mining_visualisation_tint = resource_parameters.mining_visualisation_tint,
    factoriopedia_simulation = resource_parameters.factoriopedia_simulation
  }
end


data:extend({
  {
    type = "autoplace-control",
    name = "vanadium_ore",
    localised_name = {"", "[entity=vanadium-ore] ", {"entity-name.vanadium-ore"}},
    richness = true,
    order = "m-a",
    category = "resource"
  },
  --[[{
    type = "autoplace-control",
    name = "natural_gas",
    localised_name = {"", "[entity=natural-gas-geyser] ", {"entity-name.natural-gas"}},
    richness = true,
    order = "m-b",
    category = "resource"
  },]]



  {
    type = "resource",
    name = "vanadium-ore",
    icon = "__shchierbin__/graphics/icon/vanadium-ore.png",
	icon_size = 128,
    flags = {"placeable-neutral"},
    order="a-b-c",
    infinite = false,
    minimum = 1000,
    normal = 10000,
    highlight = false,
    tree_removal_probability = 0.8,
    tree_removal_max_distance = 32 * 32,


    minable =
    {
      mining_particle = "iron-ore-particle",
      mining_time = 2,
      results =
      {
        {
          type = "item",
          name = "vanadium-ore",
          amount = 1,
        }
      }
    },
    category = "basic-solid",
    walking_sound = sounds.ore,
    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    randomize_visual_position = true,
    autoplace =
    {
      control = "vanadium_ore",
      order = "b",
      additional_richness = 3,
      probability_expression = "(control:vanadium_ore:size > 0)\z
                                * (1 - fulgora_starting_mask)\z
                                * (min((fulgora_structure_cells < min(0.1 * frequency, 0.05 + 0.05 * frequency))\z
                                   * (1 + fulgora_structure_subnoise) * abs_mult_height_over * fulgora_artificial_mask\z
                                   + (fulgora_spots_prebanding < (1.2 + 0.4 * linear_size)) * fulgora_vaults_and_starting_vault * 10,\z
                                   0.5) * (1 - fulgora_road_paving_2c))",
      richness_expression = "((1 + fulgora_structure_subnoise) * (7 / (6 + frequency) + 100 * fulgora_vaults_and_starting_vault) * richness)",
      local_expressions =
      {
        abs_mult_height_over = "fulgora_elevation > (fulgora_coastline + 10)",
        frequency = "control:vanadium_ore:frequency", 
        size = "control:vanadium_ore:size",
        linear_size = "slider_to_linear(size, -1, 1)",
        richness = "control:vanadium_ore:richness"
      }
    },
    stage_counts = {0},
    stages =
    {
      sheet = 
      {
        filename = "__shchierbin__/graphics/entity/vanadium-ore/vanadium-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 32,
        variation_count = 1,
        scale = 0.5,
      },
    },
    stages_effect =
    {
      sheet = 
      {
        filename = "__shchierbin__/graphics/entity/vanadium-ore/vanadium-ore-effect.png",
        priority = "extra-high",
        size = 128,
        frame_count = 32,
        variation_count = 1,
        scale = 0.5,
      },
    },
    effect_animation_period = 11,
    effect_animation_period_deviation = 1.2,
    effect_darkness_multiplier = 3.6,
    min_effect_alpha = 0.1,
    max_effect_alpha = 0.3,
    map_color = {r = 51, g = 229, b = 170, a = 255},
    mining_visualisation_tint = {r = 130, g = 190, b = 170, a = 255},
    map_grid = true,
  }, 
-----------------------------------------------------------------------------------------
--[[
  {
    type = "resource",
    name = "natural-gas",
    icon = "__shchierbin__/graphics/icon/natural-gas-geyser.png",
    flags = {"placeable-neutral"},
    category = "basic-fluid",
    subgroup = "mineable-fluids",
    order="a-b-a",
    infinite = true,
    highlight = true,
    minimum = 60000,
    normal = 200000,
    infinite_depletion_amount = 10,
    resource_patch_search_radius = 10,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    draw_stateless_visualisation_under_building = false,
    minable =
    {
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "natural-gas",
          amount_min = 10,
          amount_max = 10,
          probability = 1
        }
      }
    },
    walking_sound = sounds.oil,
    working_sound =
    {
      sound =
      {
        category = "world-ambient", variations = sound_variations("__space-age__/sound/world/resources/sulfuric-acid-geyser", 1, 0.3),
        advanced_volume_control =
        {
          fades = {fade_in = {curve_type = "S-curve", from = {control = 0.3, volume_percentage = 0.0}, to = {2.0, 100.0}}}
        },
        audible_distance_modifier = 0.3,
      },
      max_sounds_per_prototype = 3,
    },
    --collision_mask = {layers={is_object = true, is_lower_object = true, water_tile = true}},
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      --control = "sulfuric-acid-geyser",
      order = "a", -- Other resources are "b"; oil won't get placed if something else is already there.
      probability_expression = 0
    },
    stage_counts = {0},
    stages =
    {
      layers =
      {
        {
          filename = "__shchierbin__/graphics/entity/natural-gas/natural-gas-geyser.png",
          width = 254,
          height = 178,
          shift = util.by_pixel( 9.5, 5.0),
          priority = "high",
          line_length = 4,
          frame_count = 4,
          scale = 0.5,
        }
      }
    },
    stateless_visualisation =
    {
      -- expanded 2 animation layers into 2 visualisations to demo multiple visualisations
      {
        count = 1,
        render_layer = "smoke",
        animation =
        {
          filename = "__shchierbin__/graphics/entity/natural-gas/natural-gas-geyser-gas-outer.png",
          frame_count = 47,
          line_length = 16,
          width = 90,
          height = 188,
          animation_speed = 0.3,
          shift = util.by_pixel(-6, -89),
          scale = 1,
          tint = util.multiply_color({r=1, g=1, b=1}, 0.15)
        }
      },
      {
        count = 1,
        render_layer = "smoke",
        animation =
        {
           filename = "__shchierbin__/graphics/entity/natural-gas/natural-gas-geyser-gas-inner.png",
           frame_count = 47,
           line_length = 16,
           width = 40,
           height = 84,
           animation_speed = 0.3,
           shift = util.by_pixel(-4, -30),
           scale = 1,
           tint = util.multiply_color({r=1, g=1, b=1}, 0.2)
        }
      }
    },
    map_color = {r = 250, g = 126, b = 58, a = 255},
    map_grid = false
  }
  ]]
})