local tile_trigger_effects = require("__space-age__.prototypes.tile.tile-trigger-effects")
local tile_pollution = require("__space-age__/prototypes/tile/tile-pollution-values")
local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")
local tile_sounds = require("__space-age__/prototypes/tile/tile-sounds")
local tile_graphics = require("__base__/prototypes/tile/tile-graphics")

local tile_spritesheet_layout = tile_graphics.tile_spritesheet_layout
water_tile_type_names = water_tile_type_names or {}

table.insert(water_tile_type_names, "shchierbin-water")

local function transition_masks()
  return {
    mask_spritesheet = "__base__/graphics/terrain/masks/transition-1.png",
    mask_layout =
    {
      scale = 0.5,
      inner_corner =
      {
        count = 8,
      },
      outer_corner =
      {
        count = 8,
        x = 64*9
      },
      side =
      {
        count = 8,
        x = 64*9*2
      },
      u_transition =
      {
        count = 1,
        x = 64*9*3
      },
      o_transition =
      {
        count = 1,
        x = 64*9*4
      }
    }
  }
end

 
 local shchierbin_water_transitions_between_transitions =
{
  {
    transition_group1 = default_transition_group_id,
    transition_group2 = out_of_map_transition_group_id,

    background_layer_offset = 1,
    background_layer_group = "zero",
    offset_background_layer_by_tile_layer = true,

    spritesheet = "__shchierbin__/graphics/tile/shchierbin-water/shchierbin-water-out-of-map-transition-to-water.png",
    layout = tile_spritesheet_layout.transition_3_3_3_1_0,
    overlay_enabled = false
  }
} 
local shchierbin_water_to_out_of_map_transition  =
{
  to_tiles = out_of_map_tile_type_names,
  transition_group = out_of_map_transition_group_id,

  background_layer_offset = 1,
  background_layer_group = "zero",
  offset_background_layer_by_tile_layer = true,

  spritesheet = "__shchierbin__/graphics/tile/shchierbin-water/shchierbin-water-out-of-map-transition.png",
  layout = tile_spritesheet_layout.transition_4_4_8_1_1,
  overlay_enabled = false
}

data:extend({{
    name = "shchierbin-sand",
    type = "tile",
    order = "b[natural]-a[dust]",
    subgroup = "fulgora-tiles",
    collision_mask = tile_collision_masks.ground(),
    autoplace = {
      probability_expression = "fulgora_scrap_medium + max(0, fulgora_natural, 2 * fulgora_mesa * fulgora_pyramids) * 2 - 0.9 + fulgora_rock + fulgora_road_dust * fulgora_sprawl"
    },
    layer = 7,
    map_color={158, 147, 102},
    vehicle_friction_modifier = 4,
    absorptions_per_second = tile_pollution.fulgora,
    sprite_usage_surface = "fulgora",
    variants =
    {
      transition = transition_masks(),
      material_background =
      {
        picture = "__shchierbin__/graphics/tile/shcherbin-sand.png",
        line_length = 8,
        count = 16,
        scale = 0.5
      },
      material_texture_width_in_tiles = 4,
      material_texture_height_in_tiles = 4
    },
    transitions = fulgora_rock_sand_transitions,
    transitions_between_transitions = fulgora_sand_transitions_between_transitions,
    walking_sound = sound_variations("__space-age__/sound/walking/soft-sand", 9, 0.6, volume_multiplier("main-menu", 2.9)),
    landing_steps_sound = tile_sounds.landing.sand,
    driving_sound = sand_driving_sound,
    ambient_sounds = sand_ambient_sound,
    scorch_mark_color = {r = 0.3, g = 0.3, b = 0.3, a = 1.000},
    trigger_effect = tile_trigger_effects.sand_trigger_effect()
  },{
    name = "shchierbin-yellow-dune",
    type = "tile",
    order = "b[natural]-a[dust]",
    subgroup = "fulgora-tiles",
    collision_mask = tile_collision_masks.ground(),
    autoplace = {
      probability_expression = "fulgora_scrap_medium + max(0, fulgora_natural, 2 * fulgora_mesa * fulgora_pyramids) * 2 - 0.9 + fulgora_rock + fulgora_road_dust * fulgora_sprawl"
    },
    layer = 8,
    map_color={135, 137, 98},
    vehicle_friction_modifier = 4,
    absorptions_per_second = tile_pollution.fulgora,
    sprite_usage_surface = "fulgora",
    variants =
    {
      transition = transition_masks(),
      material_background =
      {
        picture = "__shchierbin__/graphics/tile/shcherbin-yellow-dune.png",
        line_length = 8,
        count = 16,
        scale = 0.5
      },
      material_texture_width_in_tiles = 2,
      material_texture_height_in_tiles = 2
    },
    transitions = fulgora_rock_sand_transitions,
    transitions_between_transitions = fulgora_sand_transitions_between_transitions,
    walking_sound = sound_variations("__space-age__/sound/walking/soft-sand", 9, 0.6, volume_multiplier("main-menu", 2.9)),
    landing_steps_sound = tile_sounds.landing.sand,
    driving_sound = sand_driving_sound,
    ambient_sounds = sand_ambient_sound,
    scorch_mark_color = {r = 0.3, g = 0.3, b = 0.3, a = 1.000},
    trigger_effect = tile_trigger_effects.sand_trigger_effect()
  },
  


  {
    name = "shchierbin-water",
    type = "tile",
    order = "a[water]-e[water-shallow]-b",
    subgroup = "nauvis-tiles",
    collision_mask = tile_collision_masks.shallow_water(),
    fluid = "sea-water",
    autoplace = {probability_expression = "water_base(0, 100)"},
    walking_sound = tile_sounds.walking.shallow_water,
    driving_sound = tile_sounds.driving.shallow_water,
    layer_group = "water",
    layer = 6,
    walking_speed_modifier = 0.8,
    effect = "water",
    effect_color = { 161 * 0.25, 106 * 0.25, 90 * 0.25, 255 * 0.125 },
    effect_color_secondary = {r = 0.031, g = 0.129, b = 0.031, a = 0.361},
    particle_tints = tile_graphics.shallow_water_particle_tints,

    variants =
    {
      main =
      {
        {
          picture = "__shchierbin__/graphics/tile/shchierbin-water/shchierbin-water-1.png",
          count = 8,
          scale = 0.5,
          size = 1
        },
        {
          picture = "__shchierbin__/graphics/tile/shchierbin-water/shchierbin-water-2.png",
          count = 8,
          scale = 0.5,
          size = 2
        },
        {
          picture = "__shchierbin__/graphics/tile/shchierbin-water/shchierbin-water-3.png",
          count = 8,
          scale = 0.5,
          size = 4
        }
      },
      transition =
      {
        overlay_layout =
        {
          inner_corner =
          {
            spritesheet = "__shchierbin__/graphics/tile/shchierbin-water/water-shallow-inner-corner.png",
            count = 6,
            scale = 0.5
          },
          outer_corner =
          {
            spritesheet = "__shchierbin__/graphics/tile/shchierbin-water/water-shallow-outer-corner.png",
            count = 6,
            scale = 0.5
          },
          side =
          {
            spritesheet = "__shchierbin__/graphics/tile/shchierbin-water/water-shallow-side.png",
            count = 6,
            scale = 0.5
          },
          u_transition =
          {
            spritesheet = "__shchierbin__/graphics/tile/shchierbin-water/water-shallow-u.png",
            count = 1,
            scale = 0.5
          },
          o_transition =
          {
            spritesheet = "__shchierbin__/graphics/tile/shchierbin-water/water-shallow-o.png",
            count = 1,
            scale = 0.5
          }
        }
      }
    },
    transitions = { shchierbin_water_to_out_of_map_transition },
    transitions_between_transitions = shchierbin_water_transitions_between_transitions,
    map_color={92, 98, 105},
    scorch_mark_color={92, 98, 105},  --{82, 98, 92}161, 106, 91
    absorptions_per_second = tile_pollution.water,

    trigger_effect = tile_trigger_effects.water_trigger_effect(),

    default_cover_tile = "landfill"}
 })
 
local function add_landfillable_stuff(landfill_name, new_surface)
  local item = data.raw.item[landfill_name]
  item.place_as_tile.tile_condition = item.place_as_tile.tile_condition or {}
  table.insert(item.place_as_tile.tile_condition, new_surface)
end
add_landfillable_stuff("landfill", "shchierbin-water")
add_landfillable_stuff("foundation", "shchierbin-water")
