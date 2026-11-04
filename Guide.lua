local _, private = ...
local addon = private.addon
if not addon then return end
local module = addon:GetModule(private.module_name)
local Z = addon.constants.ZONE_NAMES
module.Guide = {
["chapters"] = {
{
["from"] = 1,
["id"] = "apprentice",
["steps"] = {
{
["from"] = 1,
["id"] = "1-25",
["note"] = "Skill gains become less reliable after 15.",
["to"] = 25,
["variants"] = {
{
["count"] = 30,
["materials"] = {
{
2835,
30
}
},
["spellID"] = 2660,
["title"] = "Rough Sharpening Stone"
}
}
},
{
["from"] = 25,
["id"] = "25-50",
["note"] = "Reserve 16 stones for 67-75, plus 10 if you choose Silver Rod at 75-80. Yellow after 45.",
["to"] = 50,
["variants"] = {
{
["count"] = 30,
["materials"] = {
{
2835,
60
}
},
["outputCount"] = 1,
["outputItemID"] = 3470,
["spellID"] = 3320,
["title"] = "Rough Grinding Stone"
}
}
},
{
["from"] = 50,
["id"] = "50-67",
["note"] = "Craft all 36 stones. Reserve 10 for 95-100 and 26 for 112-125.",
["to"] = 67,
["variants"] = {
{
["count"] = 36,
["materials"] = {
{
2836,
72
}
},
["outputCount"] = 1,
["outputItemID"] = 3478,
["spellID"] = 3326,
["title"] = "Coarse Grinding Stone"
}
}
},
{
["from"] = 67,
["id"] = "67-75",
["note"] = "Use the reserved Rough Grinding Stones. Keep a Blacksmith Hammer in your bags.",
["to"] = 75,
["variants"] = {
{
["count"] = 8,
["materials"] = {
{
2840,
64
},
{
3470,
16
}
},
["spellID"] = 3323,
["title"] = "Runed Copper Gauntlets"
}
}
}
},
["title"] = "Apprentice",
["to"] = 75,
["training"] = {
["level"] = 1,
["rank"] = "Apprentice Blacksmithing",
["skill"] = 0,
["trainers"] = {
10266,
4605,
10278,
957,
10277,
3174,
276067,
514,
1241,
6299,
252479,
251913
}
}
},
{
["from"] = 75,
["id"] = "journeyman",
["steps"] = {
{
["from"] = 75,
["id"] = "75-80",
["note"] = "Compare Copper Bar and Silver Bar prices before choosing a route.",
["to"] = 80,
["variants"] = {
{
["count"] = 5,
["materials"] = {
{
2840,
50
}
},
["spellID"] = 2666,
["title"] = "Runed Copper Belt"
},
{
["count"] = 5,
["materials"] = {
{
2842,
5
},
{
3470,
10
}
},
["note"] = "Learn Silver Rod from a Journeyman or higher Blacksmithing trainer; confirm availability in your beta client.",
["outputCount"] = 1,
["outputItemID"] = 6338,
["spellID"] = 7818,
["title"] = "Silver Rod",
["trainers"] = {
1383,
4596,
2998,
276067,
5511,
10276
}
}
}
},
{
["from"] = 80,
["id"] = "80-95",
["to"] = 95,
["variants"] = {
{
["count"] = 15,
["materials"] = {
{
2841,
90
}
},
["spellID"] = 2668,
["title"] = "Rough Bronze Leggings"
}
}
},
{
["from"] = 95,
["id"] = "95-100",
["note"] = "Use 10 of the Coarse Grinding Stones prepared at 50-67.",
["to"] = 100,
["variants"] = {
{
["count"] = 5,
["materials"] = {
{
2841,
25
},
{
3478,
10
}
},
["spellID"] = 2672,
["title"] = "Patterned Bronze Bracers"
}
}
},
{
["from"] = 100,
["id"] = "100-112",
["note"] = "Keep all 20 Heavy Grinding Stones for Golden Scale Bracers at 175-185.",
["to"] = 112,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
2838,
60
}
},
["outputCount"] = 1,
["outputItemID"] = 3486,
["spellID"] = 3337,
["title"] = "Heavy Grinding Stone"
}
}
},
{
["from"] = 112,
["id"] = "112-125",
["note"] = "Use the remaining 26 Coarse Grinding Stones.",
["to"] = 125,
["variants"] = {
{
["count"] = 13,
["materials"] = {
{
2841,
65
},
{
3478,
26
}
},
["spellID"] = 2672,
["title"] = "Patterned Bronze Bracers"
}
}
},
{
["from"] = 125,
["id"] = "125-140",
["note"] = "Buy Weak Flux from Blacksmithing Supplies vendors.",
["to"] = 140,
["variants"] = {
{
["count"] = 24,
["materials"] = {
{
2319,
48
},
{
2841,
120
},
{
2880,
96
}
},
["spellID"] = 2742,
["title"] = "Bronze Shortsword"
}
}
},
{
["from"] = 140,
["id"] = "140-150",
["note"] = "Buy Strong Flux from Blacksmithing Supplies vendors.",
["to"] = 150,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
2319,
10
},
{
2841,
80
},
{
3466,
10
}
},
["spellID"] = 9985,
["title"] = "Bronze Warhammer"
}
}
}
},
["title"] = "Journeyman",
["to"] = 150,
["training"] = {
["level"] = 10,
["rank"] = "Journeyman Blacksmithing",
["skill"] = 50,
["trainers"] = {
1383,
4596,
2998,
276067,
5511,
10276
}
}
},
{
["from"] = 150,
["id"] = "expert",
["steps"] = {
{
["from"] = 150,
["id"] = "150-165",
["note"] = "Continue Bronze Warhammer. Stop at 165; yellow skill gains may require extra materials.",
["to"] = 165,
["variants"] = {
{
["count"] = 19,
["materials"] = {
{
2319,
19
},
{
2841,
152
},
{
3466,
19
}
},
["spellID"] = 9985,
["title"] = "Bronze Warhammer"
}
}
},
{
["from"] = 165,
["id"] = "165-175",
["note"] = "Buy Green Dye from Tamar in Orgrimmar or Bombus Finespindle in Ironforge.",
["to"] = 175,
["variants"] = {
{
["count"] = 15,
["materials"] = {
{
2605,
15
},
{
3575,
90
}
},
["spellID"] = 3501,
["title"] = "Green Iron Bracers"
}
}
},
{
["from"] = 175,
["id"] = "175-185-golden-scale-bracers",
["note"] = "Use the 20 Heavy Grinding Stones prepared at 100-112. Steel can be smelted from Iron and vendor-bought Coal if you have Mining 165.",
["to"] = 185,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
3486,
20
},
{
3859,
50
}
},
["spellID"] = 7223,
["title"] = "Golden Scale Bracers"
}
}
},
{
["from"] = 185,
["id"] = "185-200-mithril-or-steel",
["to"] = 200,
["variants"] = {
{
["count"] = 18,
["materials"] = {
{
3860,
216
}
},
["spellID"] = 9931,
["title"] = "Mithril Plate Pants"
},
{
["count"] = 15,
["materials"] = {
{
3486,
45
},
{
3859,
240
}
},
["spellID"] = 9916,
["title"] = "Steel Breastplate"
}
}
},
{
["from"] = 200,
["id"] = "200-215",
["note"] = "Continue the selected metal route: Mithril Scale Pants or Steel Plate Helm. The latter needs 17 Solid Grinding Stones (68 Solid Stone).",
["to"] = 215,
["variants"] = {
{
["count"] = 18,
["materials"] = {
{
3860,
216
}
},
["spellID"] = 9931,
["title"] = "Mithril Plate Pants"
},
{
["count"] = 17,
["materials"] = {
{
3859,
238
},
{
7966,
17
}
},
["spellID"] = 9935,
["title"] = "Steel Plate Helm"
}
}
}
},
["title"] = "Expert",
["to"] = 215,
["training"] = {
["cost"] = "50s",
["level"] = 20,
["rank"] = "Expert Blacksmithing",
["skill"] = 125,
["trainers"] = {
3355,
4258
}
}
},
{
["from"] = 215,
["id"] = "artisan",
["steps"] = {
{
["from"] = 215,
["id"] = "215-225",
["note"] = "Train Artisan with Brikk Keencraft. Choose Heavy Mithril Breastplate, or Mithril Spurs if you already know its world-drop plans. Spurs needs 30 Solid Grinding Stones (120 Solid Stone). Stop at 225.",
["to"] = 225,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
3860,
160
}
},
["spellID"] = 9959,
["title"] = "Heavy Mithril Breastplate"
},
{
["count"] = 10,
["materials"] = {
{
3860,
40
},
{
7966,
30
}
},
["note"] = "Learn Plans: Mithril Spurs first. Its source estimate includes 30 grinding stones, made from 120 Solid Stone.",
["spellID"] = 9964,
["title"] = "Mithril Spurs"
}
}
}
},
["title"] = "Artisan",
["to"] = 225,
["training"] = {
["level"] = 35,
["note"] = "Both factions can learn Artisan Blacksmithing from Brikk Keencraft in Booty Bay before passing 225.",
["rank"] = "Artisan Blacksmithing",
["skill"] = 200,
["trainers"] = {
2836
}
}
}
},
["id"] = "forever-blacksmithing-1-225",
["introduction"] = "Craft counts are estimates; stop at the target skill. Keep grinding stones for later steps. Carry a Blacksmith Hammer and use an anvil where required.",
["locations"] = {
[10266] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Ug'thok",
["x"] = 80.7,
["y"] = 23.6,
["zone"] = Z["ORGRIMMAR"]
},
[10276] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Rotgath Stonebeard",
["x"] = 51.9,
["y"] = 42.4,
["zone"] = Z["IRONFORGE"]
},
[10277] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Groum Stonebeard",
["x"] = 52.1,
["y"] = 41.9,
["zone"] = Z["IRONFORGE"]
},
[10278] = {
["faction"] = "Horde",
["mapID"] = 1456,
["name"] = "Thrag Stonehoof",
["x"] = 39.2,
["y"] = 56.4,
["zone"] = Z["THUNDER_BLUFF"]
},
[1241] = {
["faction"] = "Alliance",
["mapID"] = 1426,
["name"] = "Tognus Flintfire",
["x"] = 45.3,
["y"] = 52.0,
["zone"] = Z["DUN_MOROGH"]
},
[1383] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Snarl",
["x"] = 79.7,
["y"] = 23.4,
["zone"] = Z["ORGRIMMAR"]
},
[251913] = {
["faction"] = "Neutral",
["mapID"] = 2521,
["name"] = "Aedi Thriceforged",
["x"] = 44.9,
["y"] = 44.3,
["zone"] = Z["ZEPHRAS_ISLE"]
},
[252479] = {
["faction"] = "Neutral",
["mapID"] = 2521,
["name"] = "Daeann Steelwind",
["x"] = 65.4,
["y"] = 80.1,
["zone"] = Z["ZEPHRAS_ISLE"]
},
[276067] = {
["faction"] = "Horde",
["mapID"] = 1420,
["name"] = "Angus Hammerhand",
["x"] = 21.1,
["y"] = 45.8,
["zone"] = Z["TIRISFAL_GLADES"]
},
[2836] = {
["faction"] = "Neutral",
["mapID"] = 1434,
["name"] = "Brikk Keencraft",
["x"] = 29.0,
["y"] = 75.5,
["zone"] = Z["STRANGLETHORN_VALE"]
},
[2998] = {
["faction"] = "Horde",
["mapID"] = 1456,
["name"] = "Karn Stonehoof",
["x"] = 39.2,
["y"] = 55.4,
["zone"] = Z["THUNDER_BLUFF"]
},
[3174] = {
["faction"] = "Horde",
["mapID"] = 1411,
["name"] = "Dwukk",
["x"] = 52.1,
["y"] = 40.7,
["zone"] = Z["DUROTAR"]
},
[3355] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Saru Steelfury",
["x"] = 82.2,
["y"] = 23.0,
["zone"] = Z["ORGRIMMAR"]
},
[4258] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Bengus Deepforge",
["x"] = 52.4,
["y"] = 41.2,
["zone"] = Z["IRONFORGE"]
},
[4596] = {
["faction"] = "Horde",
["mapID"] = 1458,
["name"] = "James Van Brunt",
["x"] = 61.5,
["y"] = 30.3,
["zone"] = Z["UNDERCITY"]
},
[4605] = {
["faction"] = "Horde",
["mapID"] = 1458,
["name"] = "Basil Frye",
["x"] = 60.0,
["y"] = 28.9,
["zone"] = Z["UNDERCITY"]
},
[514] = {
["faction"] = "Alliance",
["mapID"] = 1429,
["name"] = "Smith Argus",
["x"] = 41.7,
["y"] = 65.6,
["zone"] = Z["ELWYNN_FOREST"]
},
[5511] = {
["faction"] = "Alliance",
["mapID"] = 1453,
["name"] = "Therum Deepforge",
["x"] = 63.6,
["y"] = 36.8,
["zone"] = Z["STORMWIND_CITY"]
},
[6299] = {
["faction"] = "Alliance",
["mapID"] = 1439,
["name"] = "Delfrum Flintbeard",
["x"] = 38.2,
["y"] = 41.0,
["zone"] = Z["DARKSHORE"]
},
[957] = {
["faction"] = "Alliance",
["mapID"] = 1453,
["name"] = "Dane Lindgren",
["x"] = 64.1,
["y"] = 37.1,
["zone"] = Z["STORMWIND_CITY"]
}
},
["materialNames"] = {
[2319] = "Medium Leather",
[2605] = "Green Dye",
[2835] = "Rough Stone",
[2836] = "Coarse Stone",
[2838] = "Heavy Stone",
[2840] = "Copper Bar",
[2841] = "Bronze Bar",
[2842] = "Silver Bar",
[2880] = "Weak Flux",
[3466] = "Strong Flux",
[3470] = "Rough Grinding Stone",
[3478] = "Coarse Grinding Stone",
[3486] = "Heavy Grinding Stone",
[3575] = "Iron Bar",
[3859] = "Steel Bars",
[3860] = "Mithril Bar",
[5956] = "Blacksmith Hammer",
[7912] = "Solid Stone",
[7966] = "Solid Grinding Stone"
},
["materialSources"] = {
[2319] = {
["kind"] = "skinning",
["note"] = "Skin beasts for Medium Leather, or buy it at the Auction House.",
["zones"] = {
Z["WETLANDS"]
}
},
[2605] = {
["kind"] = "supply"
},
[2835] = {
["kind"] = "mining",
["note"] = "Mine Copper Veins for Rough Stone.",
["zones"] = {
Z["DUROTAR"],
Z["ELWYNN_FOREST"],
Z["DUN_MOROGH"],
Z["TIRISFAL_GLADES"],
Z["DARKSHORE"]
}
},
[2836] = {
["kind"] = "mining",
["note"] = "Mine Tin Veins for Coarse Stone.",
["zones"] = {
Z["HILLSBRAD_FOOTHILLS"],
Z["REDRIDGE_MOUNTAINS"],
Z["ASHENVALE"],
Z["THE_BARRENS"]
}
},
[2838] = {
["kind"] = "mining",
["note"] = "Mine Iron Deposits for Heavy Stone.",
["zones"] = {
Z["ARATHI_HIGHLANDS"],
Z["DESOLACE"],
Z["THOUSAND_NEEDLES"]
}
},
[2840] = {
["kind"] = "mining",
["note"] = "Smelt Copper Ore at a forge, or buy bars at the Auction House.",
["zones"] = {
Z["DUROTAR"],
Z["ELWYNN_FOREST"],
Z["DUN_MOROGH"],
Z["TIRISFAL_GLADES"],
Z["DARKSHORE"]
}
},
[2841] = {
["kind"] = "mining",
["note"] = "Smelt Copper Bars with Tin Bars into Bronze at a forge, or buy Bronze Bars.",
["zones"] = {
Z["HILLSBRAD_FOOTHILLS"],
Z["REDRIDGE_MOUNTAINS"],
Z["ASHENVALE"],
Z["THE_BARRENS"]
}
},
[2842] = {
["kind"] = "mining",
["note"] = "Mine silver veins and smelt Silver Ore, or buy Silver Bars.",
["zones"] = {
Z["HILLSBRAD_FOOTHILLS"],
Z["REDRIDGE_MOUNTAINS"],
Z["ASHENVALE"],
Z["THE_BARRENS"]
}
},
[2880] = {
["kind"] = "supply"
},
[3466] = {
["kind"] = "supply"
},
[3470] = {
["kind"] = "craft",
["note"] = "Keep the stones made earlier in this guide.",
["spellID"] = 3320,
["stepID"] = "25-50"
},
[3478] = {
["kind"] = "craft",
["note"] = "Keep the stones made earlier in this guide.",
["spellID"] = 3326,
["stepID"] = "50-67"
},
[3486] = {
["ingredients"] = {
{
2838,
3
}
},
["kind"] = "craft",
["note"] = "Craft each stone using 3 Heavy Stone. Learn this preparation from a Blacksmithing trainer.",
["outputCount"] = 1,
["spellID"] = 3337,
["stepID"] = "100-112"
},
[3575] = {
["kind"] = "mining",
["note"] = "Smelt Iron Ore at a forge, or buy Iron Bars.",
["zones"] = {
Z["ARATHI_HIGHLANDS"],
Z["DESOLACE"],
Z["THOUSAND_NEEDLES"]
}
},
[3859] = {
["kind"] = "mining",
["note"] = "Smelt Iron Bars with vendor-bought Coal into Steel at a forge, or buy Steel Bars.",
["zones"] = {
Z["ARATHI_HIGHLANDS"],
Z["DESOLACE"],
Z["THOUSAND_NEEDLES"]
}
},
[3860] = {
["kind"] = "mining",
["note"] = "Smelt Mithril Ore at a forge, or buy Mithril Bars.",
["zones"] = {
Z["THE_HINTERLANDS"],
Z["TANARIS"]
}
},
[5956] = {
["kind"] = "supply"
},
[7912] = {
["kind"] = "mining",
["note"] = "Mine Mithril Deposits for Solid Stone.",
["zones"] = {
Z["THE_HINTERLANDS"],
Z["TANARIS"]
}
},
[7966] = {
["ingredients"] = {
{
7912,
4
}
},
["kind"] = "craft",
["note"] = "Craft each stone using 4 Solid Stone. Learn this preparation from a Blacksmithing trainer.",
["outputCount"] = 1,
["spellID"] = 9920,
["stepID"] = "prepare-solid-grinding-stone"
}
},
["maxSkill"] = 225,
["minSkill"] = 1,
["setupItems"] = {

},
["shoppingRequirements"] = {

},
["source"] = "https://www.wow-professions.com/forever/blacksmithing-leveling-guide",
["sourceDate"] = "2026-10-24",
["sourceHash"] = "6ab3ea6c61bc236066d8d6c84a5280a3bb5d7a77e9fc60145af4d31eadaef689",
["supplies"] = {
{
["faction"] = "Horde",
["id"] = "abigail-shiel",
["items"] = {
[2880] = true,
[5956] = true
},
["mapID"] = 1420,
["name"] = "Abigail Shiel",
["x"] = 61.0,
["y"] = 52.4,
["zone"] = Z["TIRISFAL_GLADES"]
},
{
["faction"] = "Alliance",
["id"] = "bombus-finespindle",
["items"] = {
[2605] = true
},
["mapID"] = 1455,
["name"] = "Bombus Finespindle",
["x"] = 39.3,
["y"] = 34.1,
["zone"] = Z["IRONFORGE"]
},
{
["faction"] = "Alliance",
["id"] = "elisa-steelhand",
["items"] = {
[2880] = true,
[3466] = true,
[5956] = true
},
["mapID"] = 1439,
["name"] = "Elisa Steelhand",
["x"] = 38.1,
["y"] = 41.2,
["zone"] = Z["DARKSHORE"]
},
{
["faction"] = "Horde",
["id"] = "flakk",
["items"] = {
[2880] = true,
[5956] = true
},
["mapID"] = 1411,
["name"] = "Flakk",
["x"] = 53.0,
["y"] = 42.0,
["zone"] = Z["DUROTAR"]
},
{
["faction"] = "Neutral",
["id"] = "halavuul-cragwind",
["items"] = {
[5956] = true
},
["mapID"] = 2521,
["name"] = "Halavuul Cragwind",
["x"] = 65.4,
["y"] = 80.4,
["zone"] = Z["ZEPHRAS_ISLE"]
},
{
["faction"] = "Alliance",
["id"] = "kaita-deepforge",
["items"] = {
[2880] = true,
[3466] = true,
[5956] = true
},
["mapID"] = 1453,
["name"] = "Kaita Deepforge",
["x"] = 63.3,
["y"] = 37.5,
["zone"] = Z["STORMWIND_CITY"]
},
{
["faction"] = "Horde",
["id"] = "samuel-van-brunt",
["items"] = {
[2880] = true,
[3466] = true,
[5956] = true
},
["mapID"] = 1458,
["name"] = "Samuel Van Brunt",
["x"] = 61.2,
["y"] = 29.9,
["zone"] = Z["UNDERCITY"]
},
{
["faction"] = "Horde",
["id"] = "sumi",
["items"] = {
[2880] = true,
[3466] = true,
[5956] = true
},
["mapID"] = 1454,
["name"] = "Sumi",
["x"] = 82.5,
["y"] = 23.8,
["zone"] = Z["ORGRIMMAR"]
},
{
["faction"] = "Horde",
["id"] = "tamar",
["items"] = {
[2605] = true
},
["mapID"] = 1454,
["name"] = "Tamar",
["x"] = 63.0,
["y"] = 45.5,
["zone"] = Z["ORGRIMMAR"]
},
{
["faction"] = "Horde",
["id"] = "taur-stonehoof",
["items"] = {
[2880] = true,
[3466] = true,
[5956] = true
},
["mapID"] = 1456,
["name"] = "Taur Stonehoof",
["x"] = 40.1,
["y"] = 55.9,
["zone"] = Z["THUNDER_BLUFF"]
},
{
["faction"] = "Alliance",
["id"] = "tharynn-bouden",
["items"] = {
[2880] = true,
[5956] = true
},
["mapID"] = 1429,
["name"] = "Tharynn Bouden",
["x"] = 41.9,
["y"] = 67.1,
["zone"] = Z["ELWYNN_FOREST"]
},
{
["faction"] = "Alliance",
["id"] = "thrawn-boltar",
["items"] = {
[2880] = true,
[3466] = true,
[5956] = true
},
["mapID"] = 1426,
["name"] = "Thrawn Boltar",
["x"] = 45.4,
["y"] = 51.6,
["zone"] = Z["DUN_MOROGH"]
},
{
["faction"] = "Alliance",
["id"] = "thurgrum-deepforge",
["items"] = {
[2880] = true,
[3466] = true,
[5956] = true
},
["mapID"] = 1455,
["name"] = "Thurgrum Deepforge",
["x"] = 51.4,
["y"] = 42.3,
["zone"] = Z["IRONFORGE"]
},
{
["faction"] = "Horde",
["id"] = "walter-mason",
["items"] = {
[5956] = true
},
["mapID"] = 1420,
["name"] = "Walter Mason",
["x"] = 32.3,
["y"] = 65.7,
["zone"] = Z["TIRISFAL_GLADES"]
}
},
["title"] = "Blacksmithing Guide",
["tools"] = {
{
["itemID"] = 5956,
["quantity"] = 1
}
}
}
