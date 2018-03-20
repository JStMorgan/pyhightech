RECIPE {
    type = "recipe",
    name = "cr-ht",
    energy_required = 15,
    category = "crafting-with-fluid",
    enabled = false,
    ingredients = {
        {"harmonic-absorber", 2},
        {"superconductor-servomechanims", 2},
        {"diamagnetic-material", 1},
        {"paramagnetic-material", 1},
        {"intelligent-unit", 1},
        {type = "fluid", name = "grease", amount = 300},
    },
    results = {
        {"cr-ht", 1}
    }
}:add_unlock("earnshaw-theorem"):add_ingredient({type = "item", name = "bob-construction-robot-4", amount = 1}):add_ingredient({type = "item", name = "cr-01", amount = 1})

ITEM {
    type = "item",
    name = "cr-ht",
    icon = "__pyhightech__/graphics/icons/cr-ht.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    subgroup = "py-hightech-items",
    order = "b",
    place_result = "cr-ht",
    stack_size = 10
}

ENTITY {
    type = "construction-robot",
    name = "cr-ht",
    icon = "__pyhightech__/graphics/icons/cr-ht.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {hardness = 0.1, mining_time = 0.1, result = "cr-ht"},
    resistances = { { type = "fire", percent = 85 } },
    max_health = 20,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 1,
    speed = 0.15,
    transfer_distance = 0.5,
    max_energy = "1.8MJ",
    energy_per_tick = "0.05kJ",
    speed_multiplier_when_out_of_energy = 0.2,
    energy_per_move = "5kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    working_light = {intensity = 0.8, size = 3, color = {r = 0.8, g = 0.8, b = 0.9}},
    idle =
    {
      filename = "__pyhightech__/graphics/entity/cr-ht/i.png",
      priority = "high",
      line_length = 8,
      width = 96,
      height = 96,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16,
      hr_version = {
        filename = "__pyhightech__/graphics/entity/cr-ht/hr-i.png",
        priority = "high",
        line_length = 8,
        width = 192,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0,0),
        direction_count = 16,
        scale = 0.5
      }
    },
    in_motion =
    {
      filename = "__pyhightech__/graphics/entity/cr-ht/r.png",
      priority = "high",
      line_length = 8,
      width = 96,
      height = 96,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16,
      hr_version = {
        filename = "__pyhightech__/graphics/entity/cr-ht/hr-r.png",
        priority = "high",
        line_length = 8,
        width = 192,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0,0),
        direction_count = 16,
        scale = 0.5
      }
    },
    shadow_idle =
    {
      filename = "__pyhightech__/graphics/entity/cr-ht/s.png",
      priority = "high",
      line_length = 8,
      width = 80,
      height = 64,
      frame_count = 1,
      draw_as_shadow = true,
      shift = util.by_pixel(33.5, 18.75),
      direction_count = 16,
      hr_version = {
        filename = "__pyhightech__/graphics/entity/cr-ht/hr-s.png",
        priority = "high",
        line_length = 8,
        width = 160,
        height = 128,
        frame_count = 1,
        draw_as_shadow = true,
        shift = util.by_pixel(33.5, 18.75),
        direction_count = 16,
        scale = 0.5
      }
    },
    shadow_in_motion =
    {
      filename = "__pyhightech__/graphics/entity/cr-ht/s.png",
      priority = "high",
      line_length = 8,
      width = 80,
      height = 64,
      frame_count = 1,
      draw_as_shadow = true,
      shift = util.by_pixel(33.5, 18.75),
      direction_count = 16,
      hr_version = {
        filename = "__pyhightech__/graphics/entity/cr-ht/hr-s.png",
        priority = "high",
        line_length = 8,
        width = 160,
        height = 128,
        draw_as_shadow = true,
        frame_count = 1,
        shift = util.by_pixel(33.5, 18.75),
        direction_count = 16,
        scale = 0.5
      }
    },
    working =
    {
      filename = "__pyhightech__/graphics/entity/cr-ht/w.png",
      priority = "high",
      line_length = 8,
      width = 96,
      height = 96,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16,
      hr_version = {
        filename = "__pyhightech__/graphics/entity/cr-ht/hr-w.png",
        priority = "high",
        line_length = 8,
        width = 192,
        height = 192,
        frame_count = 1,
        shift = util.by_pixel(0,0),
        direction_count = 16,
        scale = 0.5
      }
    },
    shadow_working =
    {
        filename = "__pyhightech__/graphics/entity/cr-ht/s.png",
        priority = "high",
        line_length = 8,
        width = 80,
        height = 64,
        frame_count = 1,
        draw_as_shadow = true,
        shift = util.by_pixel(33.5, 18.75),
        direction_count = 16,
        hr_version = {
          filename = "__pyhightech__/graphics/entity/cr-ht/hr-s.png",
          priority = "high",
          line_length = 8,
          width = 160,
          height = 128,
          draw_as_shadow = true,
          frame_count = 1,
          shift = util.by_pixel(33.5, 18.75),
          direction_count = 16,
          scale = 0.5
        }
      },
    smoke =
    {
      filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
      width = 39,
      height = 32,
      frame_count = 19,
      line_length = 19,
      shift = {0.078125, -0.15625},
      animation_speed = 0.3,
    },
    sparks =
    {
      {
        filename = "__base__/graphics/entity/sparks/sparks-01.png",
        width = 39,
        height = 34,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-02.png",
        width = 36,
        height = 32,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-03.png",
        width = 42,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.203125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-04.png",
        width = 40,
        height = 35,
        frame_count = 19,
        line_length = 19,
        shift = {-0.0625, 0.234375},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-05.png",
        width = 39,
        height = 29,
        frame_count = 19,
        line_length = 19,
        shift = {-0.109375, 0.171875},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
      {
        filename = "__base__/graphics/entity/sparks/sparks-06.png",
        width = 44,
        height = 36,
        frame_count = 19,
        line_length = 19,
        shift = {0.03125, 0.3125},
        tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
        animation_speed = 0.3,
      },
    },
    working_sound = flying_robot_sounds(),
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
  }