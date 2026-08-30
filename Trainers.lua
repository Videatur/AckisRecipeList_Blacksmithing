-------------------------------------------------------------------------------
-- Module namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local addon = private.addon
if not addon then
	return
end

local constants = addon.constants
local module = addon:GetModule(private.module_name)

local Z = constants.ZONE_NAMES
local V = constants.GAME_VERSIONS

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeTrainers()
	local function AddTrainer(trainerID, trainerName, zoneName, coordX, coordY, faction, expansionID)
		return addon:AddTrainer(module, {
			coord_x = coordX,
			coord_y = coordY,
			expansionID = expansionID,
			faction = faction,
			identifier = trainerID,
			item_list = {},
			locationName = zoneName,
			name = trainerName,
		})
	end

	-----------------------------------------------------------------------
	-- Vanilla
	-----------------------------------------------------------------------
	AddTrainer(514,  "Smith Argus", 			Z.ELWYNN_FOREST, 				41.6,	65.6,	"Alliance",	 V.ORIG)
	AddTrainer(1241, "Tognus Flintfire", 		Z.DUN_MOROGH, 					45.2,	52.0,	"Alliance",	 V.ORIG)
	AddTrainer(2836, "Brikk Keencraft", 		Z.STRANGLETHORN_VALE,	        29.0,	75.4,	"Neutral",   V.ORIG)
	AddTrainer(2998, "Karn Stonehoof", 			Z.THUNDER_BLUFF,				39.6,	55.6,	"Horde",     V.ORIG)
	AddTrainer(3136, "Clarise Gnarltree", 		Z.DUSKWOOD, 					74.0,	48.4,	"Alliance",  V.ORIG)
	AddTrainer(3174, "Dwukk", 					Z.DUROTAR,						52.0,	40.7,	"Horde",     V.ORIG)
	AddTrainer(3355, "Saru Steelfury", 			Z.ORGRIMMAR,					82.2,	23.0,	"Horde",     V.ORIG)
	AddTrainer(3478, "Traugh", 					Z.THE_BARRENS,					51.2, 	28.8,	"Horde",     V.ORIG)
	AddTrainer(3557, "Guillaume Sorouy", 		Z.SILVERPINE_FOREST,			43.2,	41.0,	"Horde",	 V.ORIG)
	AddTrainer(4258, "Bengus Deepforge", 		Z.IRONFORGE, 					51.0,	43.0,	"Alliance",	 V.ORIG)
	AddTrainer(4596, "James Van Brunt", 		Z.UNDERCITY, 					61.2,	29.9,	"Horde",     V.ORIG)
	AddTrainer(4888, "Marie Holdston", 			Z.DUSTWALLOW_MARSH,				64.6,	50.1,	"Alliance",  V.ORIG)
	AddTrainer(5164, "Grumnus Steelshaper", 	Z.IRONFORGE,					50.2,	42.8,	"Alliance",  V.ORIG)
	AddTrainer(5511, "Therum Deepforge", 		Z.STORMWIND_CITY,				57.0,	16.6,	"Alliance",  V.ORIG)
	AddTrainer(6299, "Delfrum Flintbeard", 		Z.DARKSHORE,					38.2,	41.0,	"Alliance",  V.ORIG)
	AddTrainer(7230, "Shayis Steelfury", 		Z.ORGRIMMAR, 					80.4,	23.6,	"Horde",     V.ORIG)
	AddTrainer(7231, "Kelgruk Bloodaxe", 		Z.ORGRIMMAR,					82.0,	18.4,	"Horde",     V.ORIG)
	AddTrainer(11146, "Ironus Coldsteel", 		Z.IRONFORGE,					50.5,	43.3,	"Alliance",  V.ORIG)
	AddTrainer(11177, "Okothos Ironrager", 		Z.ORGRIMMAR,					79.8,	23.8,	"Horde",     V.ORIG)
	AddTrainer(11178, "Borgosh Corebender", 	Z.ORGRIMMAR,					79.6,	23.6,	"Horde",	 V.ORIG)

	-----------------------------------------------------------------------
	-- TBC
	-----------------------------------------------------------------------
	AddTrainer(15400, "Arathel Sunforge", 		Z.EVERSONG_WOODS,				59.6,	62.6,	"Horde",     V.TBC)
	AddTrainer(16583, "Rohok", 					Z.HELLFIRE_PENINSULA,			53.2,	38.2,	"Horde",     V.TBC)
	AddTrainer(16669, "Bemarrin", 				Z.SILVERMOON_CITY,				79.5,	39.0,	"Horde",     V.TBC)
	AddTrainer(16724, "Miall", 					Z.THE_EXODAR,					60.0,	89.6,	"Alliance",  V.TBC)
	AddTrainer(16823, "Humphry", 				Z.HELLFIRE_PENINSULA,			56.8,	63.8,	"Alliance",  V.TBC)
	AddTrainer(17245, "Blacksmith Calypso", 	Z.AZUREMYST_ISLE,				46.4,	71.1,	"Alliance",  V.TBC)
	AddTrainer(19341, "Grutah", 				Z.SHADOWMOON_VALLEY_OUTLAND,	29.7,	31.5,	"Horde",	 V.TBC)
	AddTrainer(20124, "Kradu Grimblade", 		Z.SHATTRATH_CITY,				69.2,	44.8,	"Neutral",	 V.TBC)
	AddTrainer(20125, "Zula Slagfury", 			Z.SHATTRATH_CITY,				70.1,	42.0,	"Neutral",	 V.TBC)

	-----------------------------------------------------------------------
	-- Wrath of The Lich King
	-----------------------------------------------------------------------
	AddTrainer(26564, "Borus Ironbender", 		Z.DRAGONBLIGHT,					36.6,	47.1,	"Horde",	 V.WOTLK)
	AddTrainer(26904, "Rosina Rivet", 			Z.HOWLING_FJORD,				59.6,	63.7,	"Alliance",	 V.WOTLK)
	AddTrainer(26952, "Kristen Smythe", 		Z.HOWLING_FJORD,				79.2,	29.0,	"Horde",	 V.WOTLK)
	AddTrainer(26981, "Crog Steelspine", 		Z.BOREAN_TUNDRA,				40.8,	55.3,	"Horde",	 V.WOTLK)
	AddTrainer(26988, "Argo Strongstout", 		Z.BOREAN_TUNDRA,				57.2,	66.6,	"Alliance",	 V.WOTLK)
	AddTrainer(27034, "Josric Fame", 			Z.DRAGONBLIGHT,					75.9,	63.2, 	"Horde",	 V.WOTLK)
	AddTrainer(28694, "Alard Schmied", 			Z.DALARAN_NORTHREND,			45.5,	28.5,	"Neutral",	 V.WOTLK)
	AddTrainer(29505, "Imindril Spearsong", 	Z.DALARAN_NORTHREND,			45.5,	28.6,	"Neutral",	 V.WOTLK)
	AddTrainer(29506, "Orland Schaeffer", 		Z.DALARAN_NORTHREND,			45.0,	28.4,	"Neutral",	 V.WOTLK)
	AddTrainer(29924, "Brandig", 				Z.THE_STORM_PEAKS,				28.9,	74.9,	"Alliance",	 V.WOTLK)
	AddTrainer(33591, "Rekka the Hammer", 		Z.ICECROWN,						71.9,	20.9,	"Neutral",	 V.WOTLK)
	AddTrainer(33609, "Blacksmithing", 			Z.SHATTRATH_CITY,				43.9,	90.5,	"Neutral",	 V.WOTLK)
	AddTrainer(33631, "Barien",					Z.SHATTRATH_CITY,				43.5,	65.1,	"Neutral",	 V.WOTLK)
	AddTrainer(33675, "Onodo", 					Z.SHATTRATH_CITY,				37.7,	30.3,	"Neutral",	 V.WOTLK)
	AddTrainer(37072, "Rogg", 					Z.ORGRIMMAR,					44.5,	78.0,	"Horde",	 V.WOTLK)

	-----------------------------------------------------------------------
	-- Cataclysm
	-----------------------------------------------------------------------
	AddTrainer(1241, "Tognus Flintfire", 		Z.DUN_MOROGH, 					52.4,	50.2,	"Alliance",	 V.CATA)
	AddTrainer(2836, "Brikk Keencraft", 		Z.NORTHERN_STRANGLETHORN,	    29.0,	75.4,	"Neutral",   V.CATA)
	AddTrainer(3478, "Traugh", 					Z.NORTHERN_BARRENS,				48.3,	56.2,	"Horde",     V.CATA)
	AddTrainer(3355, "Saru Steelfury", 			Z.ORGRIMMAR,					76.5,	34.5,	"Horde",     V.CATA)
	AddTrainer(5511, "Therum Deepforge", 		Z.STORMWIND_CITY,				63.7,	37.0,	"Alliance",  V.CATA)
	AddTrainer(7230, "Shayis Steelfury", 		Z.ORGRIMMAR, 					75.6,	37.0,	"Horde",     V.CATA)
	AddTrainer(7231, "Kelgruk Bloodaxe", 		Z.ORGRIMMAR,					76.2,	37.2,	"Horde",     V.CATA)
	AddTrainer(11177, "Okothos Ironrager", 		Z.ORGRIMMAR,					75.6,	34.6,	"Horde",     V.CATA)
	AddTrainer(11178, "Borgosh Corebender", 	Z.ORGRIMMAR,					75.8,	33.8,	"Horde",	 V.CATA)
	AddTrainer(43429, "Taryel Firestrike", 		Z.DARKSHORE,					50.8,	19.2,	"Alliance",	 V.CATA)
	AddTrainer(44781, "Opuno Ironhorn", 		Z.ORGRIMMAR,					40.6,	49.4,	"Horde",	 V.CATA)
	AddTrainer(45548, "Kark Helmbreaker", 		Z.ORGRIMMAR,					36.0,	83.0,	"Horde",	 V.CATA)
	AddTrainer(52640, "Rolf Karner", 			Z.DARNASSUS,					56.8,	52.8,	"Alliance",	 V.CATA)

	-----------------------------------------------------------------------
	-- Mists of Pandaria
	-----------------------------------------------------------------------
	AddTrainer(65114, "Len the Hammer", 		Z.THE_JADE_FOREST,				48.5,	36.8,	"Neutral",	 V.MOP)
	AddTrainer(65129, "Zen Master Lao", 		Z.VALE_OF_ETERNAL_BLOSSOMS,		21.6,	72.2,	"Neutral",	 V.MOP)

	-----------------------------------------------------------------------
	-- Warlords of Dreanor
	-----------------------------------------------------------------------
	AddTrainer(85917, "Aimee Goldforge", 		Z.STORMSHIELD,					43.8,	33.9,	"Alliance",	 V.WOD)
	AddTrainer(86048, "Mazdon Bizratchet", 		Z.WARSPEAR,						75.0,	37.4,	"Horde",	 V.WOD)

	-----------------------------------------------------------------------
	-- Legion
	-----------------------------------------------------------------------
	AddTrainer(92183, "Alard Schmied",			Z.DALARAN_BROKENISLES,			44.2,	28.7,	"Neutral",	 V.LEGION)
	AddTrainer(92264, "Felsmith Nal'ryssa",		Z.SURAMAR,						29.9,	53.2,	"Neutral",	 V.LEGION)
	AddTrainer(92265, "Urael",					Z.SURAMAR,						30.1,	53.3,	"Neutral",	 V.LEGION)
	AddTrainer(106655, "Arcanomancer Vridiel",	Z.DALARAN_BROKENISLES,			45.2,	29.0,	"Neutral",	 V.LEGION)

	-----------------------------------------------------------------------
	-- Battle for Azeroth
	-----------------------------------------------------------------------
	AddTrainer(127112, "Forgemaster Zak'aal", 	Z.DAZARALOR, 					43.66, 	38.04, 	"Horde",	 V.BFA)

	-----------------------------------------------------------------------
	-- Shadowlands
	-----------------------------------------------------------------------
	AddTrainer(133536, "Grix \"Ironfists\" Barlow", Z.BORALUS, 					73.56, 	8.56, 	"Alliance",	 V.SHA)
	AddTrainer(156666, "Smith Au'berk",			Z.ORIBOS, 						40.74,	32.19, 	"Neutral",	 V.SHA)

	self.InitializeTrainers = nil
end
