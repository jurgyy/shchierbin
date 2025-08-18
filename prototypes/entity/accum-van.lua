require ("util")
require ("__base__.prototypes.entity.pipecovers")
require ("__core__.lualib.circuit-connector-sprites")
require ("__base__.prototypes.entity.assemblerpipes")
require ("__base__.prototypes.entity.laser-sounds")
require ("__base__.prototypes.entity.enemy-constants")
require ("__base__.prototypes.entity.spawner-animation")
require ("__base__.prototypes.entity.character-animations")
require ("__base__.prototypes.entity.entity-util")
require ("__base__.prototypes.entity.spidertron-animations")
local simulations = require("__base__.prototypes.factoriopedia-simulations")
local procession_graphic_catalogue_types = require("__base__/prototypes/planet/procession-graphic-catalogue-types")
local procession_audio_catalogue_types = require("__base__/prototypes/planet/procession-audio-catalogue-types")
local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")


function accumulator_picture(tint, repeat_count)
  return
  {
    layers =
    {
      {
        filename = "__shchierbin__/graphics/entity/accum/accumulator.png",
        priority = "high",
        width = 130,
        height = 189,
        repeat_count = repeat_count,
        shift = util.by_pixel(0, -11),
        tint = tint,
        scale = 0.5
      },
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-shadow.png",
        priority = "high",
        width = 234,
        height = 106,
        repeat_count = repeat_count,
        shift = util.by_pixel(29, 6),
        draw_as_shadow = true,
        scale = 0.5
      }
    }
  }
end

function accumulator_charge()
  return
  {
    layers =
    {
      accumulator_picture({1, 1, 1, 1} , 24),
      {
        filename = "__shchierbin__/graphics/entity/accum/accumulator-charge.png",
        priority = "high",
        width = 178,
        height = 210,
        line_length = 6,
        frame_count = 24,
        draw_as_glow = true,
        shift = util.by_pixel(1, -20),
        scale = 0.5
      }
    }
  }
end

function accumulator_reflection()
  return
  {
    pictures =
      {
        filename = "__base__/graphics/entity/accumulator/accumulator-reflection.png",
        priority = "extra-high",
        width = 20,
        height = 24,
        shift = util.by_pixel(0, 50),
        variation_count = 1,
        scale = 5
      },
      rotate = false,
      orientation_to_variation = false
  }
end

function accumulator_discharge()
  return
  {
    layers =
    {
      accumulator_picture({1, 1, 1, 1} , 24),
      {
        filename = "__shchierbin__/graphics/entity/accum/accumulator-discharge.png",
        priority = "high",
        width = 174,
        height = 214,
        line_length = 6,
        frame_count = 24,
        draw_as_glow = true,
        shift = util.by_pixel(-1, -21),
        scale = 0.5
      }
    }
  }
end

data:extend({
  {
    type = "accumulator",
    name = "accumulator-vanad",
    icon = "__shchierbin__/graphics/entity/accum/accum-icon.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "accumulator"},
    fast_replaceable_group = "accumulator",
    max_health = 200,
    corpse = "accumulator-remnants",
    dying_explosion = "accumulator-explosion",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box_vertical_extension = 0.5,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "25MJ",
      usage_priority = "tertiary",
      input_flow_limit = "2000kW",
      output_flow_limit = "1000kW"
    },
    chargable_graphics =
    {
      picture = accumulator_picture(),
      charge_animation = accumulator_charge(),
      charge_cooldown = 30,
      discharge_animation = accumulator_discharge(),
      discharge_cooldown = 60
      --discharge_light = {intensity = 0.7, size = 7, color = {r = 1.0, g = 1.0, b = 1.0}},
    },
    water_reflection = accumulator_reflection(),
    impact_category = "metal",
    open_sound = sounds.electric_large_open,
    close_sound = sounds.electric_large_close,
    working_sound =
    {
      main_sounds =
      {
        {
          sound =
          {
            filename = "__base__/sound/accumulator-working.ogg",
            volume = 0.4,
            modifiers = volume_multiplier("main-menu", 1.44),
            audible_distance_modifier = 0.5
          },
          match_volume_to_activity = true,
          activity_to_volume_modifiers = {offset = 2, inverted = true},
          fade_in_ticks = 4,
          fade_out_ticks = 20
        },
        {
          sound =
          {
            filename = "__base__/sound/accumulator-discharging.ogg",
            volume = 0.4,
            modifiers = volume_multiplier("main-menu", 1.44),
            audible_distance_modifier = 0.5
          },
          match_volume_to_activity = true,
          activity_to_volume_modifiers = {offset = 1},
          fade_in_ticks = 4,
          fade_out_ticks = 20
        }
      },
      idle_sound = {filename = "__base__/sound/accumulator-idle.ogg", volume = 0.35, audible_distance_modifier = 0.5},
      max_sounds_per_prototype = 3,
    },

    circuit_connector = circuit_connector_definitions["accumulator"],
    circuit_wire_max_distance = default_circuit_wire_max_distance,

    default_output_signal = {type = "virtual", name = "signal-A"}
  }
})