local effects = require("__core__/lualib/surface-render-parameter-effects")
local planet_map_gen = require("planet-map-gen")
local procession_graphic_catalogue_types = require("__base__/prototypes/planet/procession-graphic-catalogue-types")
local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

asteroid_util.shchierbin_ratio       = {6, 2, 0 , 0}
asteroid_util.shchierbin_chunks    = 0.0010
asteroid_util.shchierbin_medium    = 0.0035

asteroid_util.fulgora_shchierbin =
{
  probability_on_range_chunk =
  {
    {position = 0.1, probability = asteroid_util.fulgora_chunks, angle_when_stopped = asteroid_util.chunk_angle},
    {position = 0.9, probability = asteroid_util.shchierbin_chunks, angle_when_stopped = asteroid_util.chunk_angle}
  },
  probability_on_range_medium =
  {
    {position = 0.1, probability = asteroid_util.fulgora_medium, angle_when_stopped = asteroid_util.medium_angle},
    {position = 0.5, probability = asteroid_util.weighted_average(asteroid_util.fulgora_medium, asteroid_util.shchierbin_medium, 0.5) * 3, angle_when_stopped = asteroid_util.medium_angle},
    {position = 0.9, probability = asteroid_util.shchierbin_medium, angle_when_stopped = asteroid_util.medium_angle}
  },
  type_ratios =
  {
    {position = 0.1, ratios = asteroid_util.fulgora_ratio},
    {position = 0.9, ratios = asteroid_util.shchierbin_ratio},
  }
}

asteroid_util.gleba_shchierbin =
{
  probability_on_range_chunk =
  {
    {position = 0.1, probability = asteroid_util.gleba_chunks, angle_when_stopped = asteroid_util.chunk_angle},
    {position = 0.9, probability = asteroid_util.shchierbin_chunks, angle_when_stopped = asteroid_util.chunk_angle}
  },
  probability_on_range_medium =
  {
    {position = 0.1, probability = asteroid_util.gleba_medium, angle_when_stopped = asteroid_util.medium_angle},
    {position = 0.5, probability = asteroid_util.weighted_average(asteroid_util.gleba_medium, asteroid_util.shchierbin_medium, 0.5) * 3, angle_when_stopped = asteroid_util.medium_angle},
    {position = 0.9, probability = asteroid_util.shchierbin_medium, angle_when_stopped = asteroid_util.medium_angle}
  },
  type_ratios =
  {
    {position = 0.1, ratios = asteroid_util.gleba_ratio},
    {position = 0.9, ratios = asteroid_util.shchierbin_ratio},
  }
}

data:extend(
{
  {
    type = "planet",
    name = "shchierbin",
    icon = "__shchierbin__/graphics/icon/shchierbin.png",
	icon_size = 512,
    starmap_icon = "__shchierbin__/graphics/icon/shchierbin.png",
    starmap_icon_size = 512,
    gravity_pull = 15,
    distance = 21,
    orientation = 0.25,
    magnitude = 1,
    order = "d[shchierbin]",
    subgroup = "planets",
    map_seed_offset = 420123692,
    map_gen_settings = planet_map_gen.shchierbin(),
    solar_power_in_space = 175,
    asteroid_spawn_influence = 0.5,
    asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_shchierbin, 0.9),
  planet_procession_set =
    {
      arrival = {"default-b"},
      departure = {"default-rocket-a"}
    },
    surface_properties =
    {
      ["day-night-cycle"] = 15 * minute,
      ["solar-power"] = 80,
      ["pressure"] = 1500
    },
    pollutant_type = nil,
    surface_render_parameters =
    {
      clouds = effects.default_clouds_effect_properties()
    },
    persistent_ambient_sounds =
    {
      base_ambience = { filename = "__space-age__/sound/wind/base-wind-vulcanus.ogg", volume = 0.3 },
      wind = { filename = "__space-age__/sound/wind/wind-vulcanus.ogg", volume = 0.8 },
      crossfade =
      {
        order = { "wind", "base_ambience" },
        curve_type = "cosine",
        from = { control = 0.35, volume_percentage = 0.0 },
        to = { control = 2, volume_percentage = 100.0 }
      }
    },
    procession_graphic_catalogue =
    {
      {
        index = procession_graphic_catalogue_types.planet_hatch_emission_in_1,
        sprite = util.sprite_load("__base__/graphics/entity/cargo-hubs/hatches/planet-lower-hatch-pod-emission-A",
        {
          priority = "medium",
          draw_as_glow = true,
          blend_mode = "additive",     
          scale = 0.5,
          shift = util.by_pixel(-16, 96) --32 x ({0.5, -3.5} + {0, 0.5})
        })
      },
      {
        index = procession_graphic_catalogue_types.planet_hatch_emission_in_2,
        sprite = util.sprite_load("__base__/graphics/entity/cargo-hubs/hatches/planet-lower-hatch-pod-emission-B",
        {
          priority = "medium",
          draw_as_glow = true,
          blend_mode = "additive",     
          scale = 0.5,
          shift = util.by_pixel(-64, 96) --32 x ({2, -3.5} + {0, 0.5})
        })
      },
      {
        index = procession_graphic_catalogue_types.planet_hatch_emission_in_3,
        sprite = util.sprite_load("__base__/graphics/entity/cargo-hubs/hatches/planet-lower-hatch-pod-emission-C",
        {
          priority = "medium",
          draw_as_glow = true,
          blend_mode = "additive",     
          scale = 0.5,
          shift = util.by_pixel(-40, 64) --32 x ({1.25, -2.5} + {0, 0.5})
        })
      }
    }
  },
  -------------------------- CONNECTIONS --------------------------
  {
    type = "space-connection",
    name = "fulgora-shchierbin",
    subgroup = "planet-connections",
    from = "fulgora",
    to = "shchierbin",
    order = "c",
    length = 10000,
    asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.fulgora_shchierbin)
  },
  {
    type = "space-connection",
    name = "gleba-shchierbin",
    subgroup = "planet-connections",
    from = "gleba",
    to = "shchierbin",
    order = "c",
    length = 7000,
    asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.gleba_shchierbin)
  }
})
