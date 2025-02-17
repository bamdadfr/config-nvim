local logos = {
  "af_camel",
  "af_clouds",
  "af_curtain",
  "af_cycling",
  "af_dragon_worm",
  "af_echidna1",
  "af_echidna2",
  "af_flamingo",
  "af_grin",
  "af_lighthouse",
  "af_lunar_landing",
  "af_lunch_break",
  "af_records",
  "af_rocket",
  "af_sleep",
  "af_slope",
  "af_space",
  "af_summer_rain",
  "af_the_witch",
  "af_three_little_pigs",
  "af_trex",
  "af_winter_moon",
  "bamdad_crazy",
  "bamdad_doom",
  "bamdad_slant",
  "fish1",
  "fish2",
  "lazyvim",
  "spider1",
  "woman_by_the_sea",
  "ziggurat",
}

math.randomseed(os.time())
local random_logo = logos[math.random(#logos)]
local logo = require("logos." .. random_logo)
return logo
