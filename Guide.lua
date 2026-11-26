-- Generated candidate; review before replacing the installed module guide.
local _, private = ...
local addon = private.addon
if not addon then return end
local module = addon:GetModule(private.module_name)
local Z = addon.constants.ZONE_NAMES
module.Guides = {
["imperial"] = {
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
["level"] = 0,
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
["outputCount"] = 1,
["outputItemID"] = 6338,
["spellID"] = 7818,
["title"] = "Silver Rod"
}
}
},
{
["from"] = 80,
["id"] = "80-95",
["to"] = 95,
["variants"] = {
{
["count"] = 18,
["materials"] = {
{
2840,
180
}
},
["spellID"] = 2666,
["title"] = "Runed Copper Belt"
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
["note"] = "Keep all 20 Heavy Grinding Stones for Golden Scale Bracers at 180-195.",
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
["note"] = "The sword option uses Weak Flux. The bracer option uses 48 extra Coarse Grinding Stones, made from 96 Coarse Stone.",
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
},
{
["count"] = 24,
["materials"] = {
{
2841,
120
},
{
3478,
48
}
},
["spellID"] = 2672,
["title"] = "Patterned Bronze Bracers"
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
["id"] = "150-170",
["note"] = "Continue with Bronze Warhammer. Stock up on Strong Flux before leaving town.",
["to"] = 170,
["variants"] = {
{
["count"] = 29,
["materials"] = {
{
2319,
29
},
{
2841,
232
},
{
3466,
29
}
},
["spellID"] = 9985,
["title"] = "Bronze Warhammer"
}
}
},
{
["from"] = 170,
["id"] = "170-175",
["note"] = "Buy Green Dye from Tamar in Orgrimmar or Bombus Finespindle in Ironforge.",
["to"] = 175,
["variants"] = {
{
["count"] = 9,
["materials"] = {
{
2605,
9
},
{
3575,
54
}
},
["spellID"] = 3501,
["title"] = "Green Iron Bracers"
}
}
},
{
["from"] = 175,
["id"] = "175-180",
["note"] = "Make all eight Solid Grinding Stones and keep six for the axes at 210.",
["to"] = 180,
["variants"] = {
{
["count"] = 8,
["materials"] = {
{
7912,
32
}
},
["outputCount"] = 1,
["outputItemID"] = 7966,
["spellID"] = 9920,
["title"] = "Solid Grinding Stone"
}
}
},
{
["from"] = 180,
["id"] = "180-195",
["note"] = "Reuse the 20 Heavy Grinding Stones made earlier and craft 20 more from 60 Heavy Stone. Alliance players considering Armorsmithing can keep six bracers.",
["to"] = 195,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
3486,
40
},
{
3859,
100
}
},
["spellID"] = 7223,
["title"] = "Golden Scale Bracers"
}
}
},
{
["from"] = 195,
["id"] = "195-210",
["note"] = "Use the trainer-taught Heavy Mithril Gauntlet recipe.",
["to"] = 210,
["variants"] = {
{
["count"] = 21,
["materials"] = {
{
3860,
126
},
{
4338,
84
}
},
["spellID"] = 9928,
["title"] = "Heavy Mithril Gauntlet"
}
}
},
{
["from"] = 210,
["id"] = "210-215",
["note"] = "Use six of your Solid Grinding Stones. Keep two axes if you plan to become a Weaponsmith.",
["to"] = 215,
["variants"] = {
{
["count"] = 6,
["materials"] = {
{
3860,
72
},
{
3864,
12
},
{
4234,
24
},
{
7966,
6
}
},
["spellID"] = 9993,
["title"] = "Heavy Mithril Axe"
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
["note"] = "Train Artisan with Brikk Keencraft before going past 225. If you make the breastplates and plan to become an Armorsmith, keep two.",
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
["recipeItemID"] = 7989,
["shoppingRequirements"] = {
{
7989,
1
}
},
["spellID"] = 9964,
["title"] = "Mithril Spurs"
}
}
},
{
["from"] = 225,
["id"] = "225-230",
["note"] = "Learn Dense Sharpening Stone from Brikk Keencraft after training Artisan.",
["to"] = 230,
["variants"] = {
{
["count"] = 5,
["materials"] = {
{
12365,
5
}
},
["spellID"] = 16641,
["title"] = "Dense Sharpening Stone"
}
}
},
{
["from"] = 230,
["id"] = "230-240",
["note"] = "Keep two pairs of boots if you plan to become an Armorsmith.",
["to"] = 240,
["variants"] = {
{
["count"] = 16,
["materials"] = {
{
3860,
224
},
{
4304,
64
}
},
["spellID"] = 9968,
["title"] = "Heavy Mithril Boots"
}
}
},
{
["note"] = "Choose a recipe you can obtain. To buy the Ebon Shiv plans from Magnus Frostwake in Caer Darrow, equip Spectral Essence, the reward from Kirtonos the Herald (5384) in Scholomance.",
["to"] = 255,
["from"] = 240,
["id"] = "240-255",
["variants"] = {
{
["recipeItemID"] = 8030,
["count"] = 15,
["title"] = "Ebon Shiv",
["materials"] = {
{
3860,
180
},
{
4304,
30
},
{
6037,
90
},
{
7910,
30
},
{
7966,
15
}
},
["shoppingRequirements"] = {
{
8030,
1
}
},
["spellID"] = 10013
},
{
["recipeItemID"] = 12685,
["note"] = "Use this option if you have learned the world-drop plans.",
["count"] = 15,
["title"] = "Radiant Belt",
["materials"] = {
{
7077,
30
},
{
12359,
150
}
},
["shoppingRequirements"] = {
{
12685,
1
}
},
["spellID"] = 16645
},
{
["recipeItemID"] = 12684,
["note"] = "Use this option if you have learned the world-drop plans.",
["count"] = 17,
["title"] = "Thorium Bracers",
["materials"] = {
{
11184,
68
},
{
12359,
204
}
},
["shoppingRequirements"] = {
{
12684,
1
}
},
["spellID"] = 16644
}
}
},
{
["note"] = "Buy the handaxe plans from Magnus Frostwake with Spectral Essence equipped. Make the Dense Grinding Stones first using four Dense Stone per craft.",
["to"] = 265,
["from"] = 255,
["id"] = "255-265",
["variants"] = {
{
["recipeItemID"] = 12819,
["count"] = 10,
["title"] = "Ornate Thorium Handaxe",
["materials"] = {
{
8170,
40
},
{
12359,
200
},
{
12644,
20
},
{
12799,
20
}
},
["shoppingRequirements"] = {
{
12819,
1
}
},
["spellID"] = 16969
}
}
},
{
["note"] = "At character level 50 and Blacksmithing 265, complete A Blue Light Bargain (7652) with Derotain Mudsipper in Gadgetzan, then trade 20 Thorium Bars for the bracer plans (7655). Budget about seven crafts and stop at 270. Bring extra materials if the yellow crafts do not give enough skill points.",
["to"] = 270,
["from"] = 265,
["id"] = "265-270",
["variants"] = {
{
["title"] = "Imperial Plate Bracers",
["materials"] = {
{
7910,
7
},
{
12359,
140
}
},
["count"] = 7,
["spellID"] = 16649
}
}
},
{
["from"] = 270,
["id"] = "270-290",
["note"] = "At level 50 and Blacksmithing 265, complete A Blue Light Bargain (7652) with Derotain Mudsipper in Gadgetzan. Imperial Plate Boots (7654) costs 40 extra Thorium Bars. The recipe itself requires Blacksmithing 270.",
["to"] = 290,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
7909,
20
},
{
7910,
20
},
{
12359,
680
}
},
["spellID"] = 16657,
["title"] = "Imperial Plate Boots"
}
}
},
{
["from"] = 290,
["id"] = "290-300",
["note"] = "After A Blue Light Bargain, complete Imperial Plate Leggings (7658) with Derotain Mudsipper in Gadgetzan. Budget 60 extra Thorium Bars for the quest. The recipe itself requires Blacksmithing 280.",
["to"] = 300,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
7910,
20
},
{
12359,
440
}
},
["spellID"] = 16730,
["title"] = "Imperial Plate Leggings"
}
}
}
},
["title"] = "Artisan",
["to"] = 300,
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
["id"] = "forever-blacksmithing-1-225-imperial",
["introduction"] = "Reach Blacksmithing 265 before visiting Derotain Mudsipper in Gadgetzan. At character level 50, complete A Blue Light Bargain to unlock the Imperial Plate plans. Craft counts are estimates. Reserve 120 Thorium Bars for the three plan quests.",
["label"] = "Imperial (265-300)",
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
[11278] = {
["faction"] = "Neutral",
["mapID"] = 1422,
["name"] = "Magnus Frostwake",
["x"] = 68.1,
["y"] = 77.6,
["zone"] = Z["WESTERN_PLAGUELANDS"]
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
[12799] = "Large Opal",
[12644] = "Dense Grinding Stone",
[11184] = "Blue Power Crystal",
[6037] = "Truesilver Bar",
[7077] = "Heart of Fire",
[12359] = "Thorium Bar",
[12365] = "Dense Stone",
[12684] = "Plans: Thorium Bracers",
[12685] = "Plans: Radiant Belt",
[12819] = "Plans: Ornate Thorium Handaxe",
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
[3859] = "Steel Bar",
[3860] = "Mithril Bar",
[3864] = "Citrine",
[4234] = "Heavy Leather",
[4304] = "Thick Leather",
[4338] = "Mageweave Cloth",
[5956] = "Blacksmith Hammer",
[7909] = "Aquamarine",
[7910] = "Star Ruby",
[7912] = "Solid Stone",
[7966] = "Solid Grinding Stone",
[7989] = "Plans: Mithril Spurs",
[8030] = "Plans: Ebon Shiv",
[8170] = "Rugged Leather"
},
["materialSources"] = {
[12799] = {
["note"] = "Obtain from mining or buy the gem at the Auction House.",
["kind"] = "auction"
},
[12644] = {
["note"] = "Prepare these at an anvil before crafting the handaxes.",
["stepID"] = "255-265",
["outputCount"] = 1,
["kind"] = "craft",
["ingredients"] = {
{
12365,
4
}
},
["spellID"] = 16639
},
[11184] = {
["note"] = "Collect blue crystals in Un'Goro Crater or buy them.",
["kind"] = "auction"
},
[6037] = {
["zones"] = {
Z["THE_HINTERLANDS"],
Z["TANARIS"]
},
["kind"] = "mining",
["note"] = "Smelt Truesilver Ore or buy the bars."
},
[7077] = {
["zones"] = {
Z["UNGORO_CRATER"],
Z["SEARING_GORGE"]
},
["kind"] = "drop",
["note"] = "Loot fire elementals or buy Heart of Fire."
},
[12359] = {
["kind"] = "mining",
["note"] = "Smelt Thorium Ore or buy Thorium Bars.",
["zones"] = {
Z["UNGORO_CRATER"],
Z["WINTERSPRING"]
}
},
[12365] = {
["kind"] = "mining",
["note"] = "Gather Dense Stone from Thorium Veins.",
["zones"] = {
Z["UNGORO_CRATER"],
Z["WINTERSPRING"]
}
},
[12684] = {
["kind"] = "auction",
["note"] = "Buy these world-drop plans if the recipe is not already learned."
},
[12685] = {
["kind"] = "auction",
["note"] = "Buy these world-drop plans if the recipe is not already learned."
},
[12819] = {
["kind"] = "supply",
["note"] = "Equip Spectral Essence to interact with Magnus Frostwake. Buy the plans on this character."
},
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
["ingredients"] = {
{
2836,
2
}
},
["kind"] = "craft",
["note"] = "Use your remaining stones or craft more from two Coarse Stone each.",
["outputCount"] = 1,
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
[3864] = {
["kind"] = "auction",
["note"] = "Obtain from mining or buy the gem at the Auction House."
},
[4234] = {
["kind"] = "skinning",
["note"] = "Skin beasts for Heavy Leather, or buy it at the Auction House.",
["zones"] = {
Z["STRANGLETHORN_VALE"]
}
},
[4304] = {
["kind"] = "skinning",
["zones"] = {
Z["TANARIS"],
Z["THE_HINTERLANDS"]
}
},
[4338] = {
["kind"] = "drop",
["note"] = "Loot humanoids in Tanaris or buy Mageweave Cloth.",
["zones"] = {
Z["TANARIS"]
}
},
[5956] = {
["kind"] = "supply"
},
[7909] = {
["kind"] = "auction",
["note"] = "Obtain from mining or buy the gem at the Auction House."
},
[7910] = {
["kind"] = "auction",
["note"] = "Obtain from mining or buy the gem at the Auction House."
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
["stepID"] = "175-180"
},
[7989] = {
["kind"] = "auction",
["note"] = "Buy these world-drop plans if the recipe is not already learned."
},
[8030] = {
["kind"] = "supply",
["note"] = "Equip Spectral Essence to interact with Magnus Frostwake. Buy the plans on this character."
},
[8170] = {
["kind"] = "skinning",
["zones"] = {
Z["UNGORO_CRATER"],
Z["WINTERSPRING"]
}
}
},
["maxSkill"] = 300,
["menuTitle"] = "Blacksmithing Guide",
["minSkill"] = 1,
["setupItems"] = {

},
["shoppingRequirements"] = {
{
12359,
120
}
},
["source"] = "https://www.wow-professions.com/forever/blacksmithing-leveling-guide",
["sourceDate"] = "2026-11-09",
["sourceHash"] = "95c2513227394b4f19a334c2a1d0a747afe5193c74f9805cb2aed77832eb5531",
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
["x"] = 39.9,
["y"] = 55.3,
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
},
{
["faction"] = "Neutral",
["id"] = "magnus-frostwake",
["items"] = {
[12819] = true,
[8030] = true
},
["mapID"] = 1422,
["name"] = "Magnus Frostwake",
["x"] = 68.1,
["y"] = 77.6,
["zone"] = Z["WESTERN_PLAGUELANDS"]
}
},
["title"] = "Blacksmithing Guide",
["tools"] = {
{
["itemID"] = 5956,
["quantity"] = 1
}
}
},
["magnus"] = {
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
["level"] = 0,
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
["outputCount"] = 1,
["outputItemID"] = 6338,
["spellID"] = 7818,
["title"] = "Silver Rod"
}
}
},
{
["from"] = 80,
["id"] = "80-95",
["to"] = 95,
["variants"] = {
{
["count"] = 18,
["materials"] = {
{
2840,
180
}
},
["spellID"] = 2666,
["title"] = "Runed Copper Belt"
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
["note"] = "Keep all 20 Heavy Grinding Stones for Golden Scale Bracers at 180-195.",
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
["note"] = "The sword option uses Weak Flux. The bracer option uses 48 extra Coarse Grinding Stones, made from 96 Coarse Stone.",
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
},
{
["count"] = 24,
["materials"] = {
{
2841,
120
},
{
3478,
48
}
},
["spellID"] = 2672,
["title"] = "Patterned Bronze Bracers"
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
["id"] = "150-170",
["note"] = "Continue with Bronze Warhammer. Stock up on Strong Flux before leaving town.",
["to"] = 170,
["variants"] = {
{
["count"] = 29,
["materials"] = {
{
2319,
29
},
{
2841,
232
},
{
3466,
29
}
},
["spellID"] = 9985,
["title"] = "Bronze Warhammer"
}
}
},
{
["from"] = 170,
["id"] = "170-175",
["note"] = "Buy Green Dye from Tamar in Orgrimmar or Bombus Finespindle in Ironforge.",
["to"] = 175,
["variants"] = {
{
["count"] = 9,
["materials"] = {
{
2605,
9
},
{
3575,
54
}
},
["spellID"] = 3501,
["title"] = "Green Iron Bracers"
}
}
},
{
["from"] = 175,
["id"] = "175-180",
["note"] = "Make all eight Solid Grinding Stones and keep six for the axes at 210.",
["to"] = 180,
["variants"] = {
{
["count"] = 8,
["materials"] = {
{
7912,
32
}
},
["outputCount"] = 1,
["outputItemID"] = 7966,
["spellID"] = 9920,
["title"] = "Solid Grinding Stone"
}
}
},
{
["from"] = 180,
["id"] = "180-195",
["note"] = "Reuse the 20 Heavy Grinding Stones made earlier and craft 20 more from 60 Heavy Stone. Alliance players considering Armorsmithing can keep six bracers.",
["to"] = 195,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
3486,
40
},
{
3859,
100
}
},
["spellID"] = 7223,
["title"] = "Golden Scale Bracers"
}
}
},
{
["from"] = 195,
["id"] = "195-210",
["note"] = "Use the trainer-taught Heavy Mithril Gauntlet recipe.",
["to"] = 210,
["variants"] = {
{
["count"] = 21,
["materials"] = {
{
3860,
126
},
{
4338,
84
}
},
["spellID"] = 9928,
["title"] = "Heavy Mithril Gauntlet"
}
}
},
{
["from"] = 210,
["id"] = "210-215",
["note"] = "Use six of your Solid Grinding Stones. Keep two axes if you plan to become a Weaponsmith.",
["to"] = 215,
["variants"] = {
{
["count"] = 6,
["materials"] = {
{
3860,
72
},
{
3864,
12
},
{
4234,
24
},
{
7966,
6
}
},
["spellID"] = 9993,
["title"] = "Heavy Mithril Axe"
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
["note"] = "Train Artisan with Brikk Keencraft before going past 225. If you make the breastplates and plan to become an Armorsmith, keep two.",
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
["recipeItemID"] = 7989,
["shoppingRequirements"] = {
{
7989,
1
}
},
["spellID"] = 9964,
["title"] = "Mithril Spurs"
}
}
},
{
["from"] = 225,
["id"] = "225-230",
["note"] = "Learn Dense Sharpening Stone from Brikk Keencraft after training Artisan.",
["to"] = 230,
["variants"] = {
{
["count"] = 5,
["materials"] = {
{
12365,
5
}
},
["spellID"] = 16641,
["title"] = "Dense Sharpening Stone"
}
}
},
{
["from"] = 230,
["id"] = "230-240",
["note"] = "Keep two pairs of boots if you plan to become an Armorsmith.",
["to"] = 240,
["variants"] = {
{
["count"] = 16,
["materials"] = {
{
3860,
224
},
{
4304,
64
}
},
["spellID"] = 9968,
["title"] = "Heavy Mithril Boots"
}
}
},
{
["from"] = 240,
["id"] = "240-255",
["note"] = "Choose a recipe you can obtain. To buy the Ebon Shiv plans from Magnus Frostwake in Caer Darrow, equip Spectral Essence, the reward from Kirtonos the Herald (5384) in Scholomance.",
["to"] = 255,
["variants"] = {
{
["count"] = 15,
["materials"] = {
{
3860,
180
},
{
4304,
30
},
{
6037,
90
},
{
7910,
30
},
{
7966,
15
}
},
["recipeItemID"] = 8030,
["shoppingRequirements"] = {
{
8030,
1
}
},
["spellID"] = 10013,
["title"] = "Ebon Shiv"
},
{
["count"] = 15,
["materials"] = {
{
7077,
30
},
{
12359,
150
}
},
["note"] = "Use this option if you have learned the world-drop plans.",
["recipeItemID"] = 12685,
["shoppingRequirements"] = {
{
12685,
1
}
},
["spellID"] = 16645,
["title"] = "Radiant Belt"
},
{
["count"] = 17,
["materials"] = {
{
11184,
68
},
{
12359,
204
}
},
["note"] = "Use this option if you have learned the world-drop plans.",
["recipeItemID"] = 12684,
["shoppingRequirements"] = {
{
12684,
1
}
},
["spellID"] = 16644,
["title"] = "Thorium Bracers"
}
}
},
{
["from"] = 255,
["id"] = "255-270",
["note"] = "Buy the handaxe plans from Magnus Frostwake with Spectral Essence equipped. Make the Dense Grinding Stones first using four Dense Stone per craft.",
["to"] = 270,
["variants"] = {
{
["count"] = 15,
["materials"] = {
{
8170,
60
},
{
12359,
300
},
{
12644,
30
},
{
12799,
30
}
},
["recipeItemID"] = 12819,
["shoppingRequirements"] = {
{
12819,
1
}
},
["spellID"] = 16969,
["title"] = "Ornate Thorium Handaxe"
}
}
},
{
["from"] = 270,
["id"] = "270-290",
["note"] = "At level 50 and Blacksmithing 265, complete A Blue Light Bargain (7652) with Derotain Mudsipper in Gadgetzan. Imperial Plate Boots (7654) costs 40 extra Thorium Bars. The recipe itself requires Blacksmithing 270.",
["to"] = 290,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
7909,
20
},
{
7910,
20
},
{
12359,
680
}
},
["spellID"] = 16657,
["title"] = "Imperial Plate Boots"
}
}
},
{
["from"] = 290,
["id"] = "290-300",
["note"] = "After A Blue Light Bargain, complete Imperial Plate Leggings (7658) with Derotain Mudsipper in Gadgetzan. Budget 60 extra Thorium Bars for the quest. The recipe itself requires Blacksmithing 280.",
["to"] = 300,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
7910,
20
},
{
12359,
440
}
},
["spellID"] = 16730,
["title"] = "Imperial Plate Leggings"
}
}
}
},
["title"] = "Artisan",
["to"] = 300,
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
["introduction"] = "Craft counts are estimates; stop at the target skill. Keep grinding stones for later steps. Carry a Blacksmith Hammer and use an anvil where required. The 225-300 estimates are based on published recipe data. Check access to the plans before buying materials.",
["label"] = "Magnus (240-270)",
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
[11278] = {
["faction"] = "Neutral",
["mapID"] = 1422,
["name"] = "Magnus Frostwake",
["x"] = 68.1,
["y"] = 77.6,
["zone"] = Z["WESTERN_PLAGUELANDS"]
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
[11184] = "Blue Power Crystal",
[12359] = "Thorium Bar",
[12365] = "Dense Stone",
[12644] = "Dense Grinding Stone",
[12684] = "Plans: Thorium Bracers",
[12685] = "Plans: Radiant Belt",
[12799] = "Large Opal",
[12819] = "Plans: Ornate Thorium Handaxe",
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
[3859] = "Steel Bar",
[3860] = "Mithril Bar",
[3864] = "Citrine",
[4234] = "Heavy Leather",
[4304] = "Thick Leather",
[4338] = "Mageweave Cloth",
[5956] = "Blacksmith Hammer",
[6037] = "Truesilver Bar",
[7077] = "Heart of Fire",
[7909] = "Aquamarine",
[7910] = "Star Ruby",
[7912] = "Solid Stone",
[7966] = "Solid Grinding Stone",
[7989] = "Plans: Mithril Spurs",
[8030] = "Plans: Ebon Shiv",
[8170] = "Rugged Leather"
},
["materialSources"] = {
[11184] = {
["kind"] = "auction",
["note"] = "Collect blue crystals in Un'Goro Crater or buy them."
},
[12359] = {
["kind"] = "mining",
["note"] = "Smelt Thorium Ore or buy Thorium Bars.",
["zones"] = {
Z["UNGORO_CRATER"],
Z["WINTERSPRING"]
}
},
[12365] = {
["kind"] = "mining",
["note"] = "Gather Dense Stone from Thorium Veins.",
["zones"] = {
Z["UNGORO_CRATER"],
Z["WINTERSPRING"]
}
},
[12644] = {
["ingredients"] = {
{
12365,
4
}
},
["kind"] = "craft",
["note"] = "Prepare these at an anvil before crafting the handaxes.",
["outputCount"] = 1,
["spellID"] = 16639,
["stepID"] = "255-270"
},
[12684] = {
["kind"] = "auction",
["note"] = "Buy these world-drop plans if the recipe is not already learned."
},
[12685] = {
["kind"] = "auction",
["note"] = "Buy these world-drop plans if the recipe is not already learned."
},
[12799] = {
["kind"] = "auction",
["note"] = "Obtain from mining or buy the gem at the Auction House."
},
[12819] = {
["kind"] = "supply",
["note"] = "Equip Spectral Essence to interact with Magnus Frostwake. Buy the plans on this character."
},
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
["ingredients"] = {
{
2836,
2
}
},
["kind"] = "craft",
["note"] = "Use your remaining stones or craft more from two Coarse Stone each.",
["outputCount"] = 1,
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
[3864] = {
["kind"] = "auction",
["note"] = "Obtain from mining or buy the gem at the Auction House."
},
[4234] = {
["kind"] = "skinning",
["note"] = "Skin beasts for Heavy Leather, or buy it at the Auction House.",
["zones"] = {
Z["STRANGLETHORN_VALE"]
}
},
[4304] = {
["kind"] = "skinning",
["zones"] = {
Z["TANARIS"],
Z["THE_HINTERLANDS"]
}
},
[4338] = {
["kind"] = "drop",
["note"] = "Loot humanoids in Tanaris or buy Mageweave Cloth.",
["zones"] = {
Z["TANARIS"]
}
},
[5956] = {
["kind"] = "supply"
},
[6037] = {
["kind"] = "mining",
["note"] = "Smelt Truesilver Ore or buy the bars.",
["zones"] = {
Z["THE_HINTERLANDS"],
Z["TANARIS"]
}
},
[7077] = {
["kind"] = "drop",
["note"] = "Loot fire elementals or buy Heart of Fire.",
["zones"] = {
Z["UNGORO_CRATER"],
Z["SEARING_GORGE"]
}
},
[7909] = {
["kind"] = "auction",
["note"] = "Obtain from mining or buy the gem at the Auction House."
},
[7910] = {
["kind"] = "auction",
["note"] = "Obtain from mining or buy the gem at the Auction House."
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
["stepID"] = "175-180"
},
[7989] = {
["kind"] = "auction",
["note"] = "Buy these world-drop plans if the recipe is not already learned."
},
[8030] = {
["kind"] = "supply",
["note"] = "Equip Spectral Essence to interact with Magnus Frostwake. Buy the plans on this character."
},
[8170] = {
["kind"] = "skinning",
["zones"] = {
Z["UNGORO_CRATER"],
Z["WINTERSPRING"]
}
}
},
["maxSkill"] = 300,
["menuTitle"] = "Blacksmithing Guide",
["minSkill"] = 1,
["setupItems"] = {

},
["shoppingRequirements"] = {
{
12359,
100
}
},
["source"] = "https://www.wow-professions.com/forever/blacksmithing-leveling-guide",
["sourceDate"] = "2026-11-09",
["sourceHash"] = "95c2513227394b4f19a334c2a1d0a747afe5193c74f9805cb2aed77832eb5531",
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
["x"] = 39.9,
["y"] = 55.3,
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
},
{
["faction"] = "Neutral",
["id"] = "magnus-frostwake",
["items"] = {
[12819] = true,
[8030] = true
},
["mapID"] = 1422,
["name"] = "Magnus Frostwake",
["x"] = 68.1,
["y"] = 77.6,
["zone"] = Z["WESTERN_PLAGUELANDS"]
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
}
module.GuideOrder = {
"magnus",
"imperial"
}
module.Guide = module.Guides[module.GuideOrder[1]]
