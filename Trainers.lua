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

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeTrainers()
	local function AddTrainer(trainerID, trainerName, zoneName, coordX, coordY, faction)
		return addon:AddTrainer(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = trainerID,
			item_list = {},
			locationName = zoneName,
			name = trainerName,
		})
	end



	AddTrainer(514,  "Smith Argus", 			Z.ELWYNN_FOREST, 				41.7,	65.6,	"Alliance")
	AddTrainer(957,  "Dane Lindgren", 			Z.STORMWIND_CITY, 				64.0,	37.2,	"Alliance")
	AddTrainer(1241, "Tognus Flintfire", 		Z.DUN_MOROGH, 					45.3,	52.0,	"Alliance")
	AddTrainer(1383, "Snarl", 					Z.ORGRIMMAR, 					79.4,	23.3,	"Horde")
	AddTrainer(2836, "Brikk Keencraft", 		Z.STRANGLETHORN_VALE,	        29.0,	75.5,	"Neutral")
	AddTrainer(2998, "Karn Stonehoof", 			Z.THUNDER_BLUFF,				39.5,	55.8,	"Horde")
	AddTrainer(3136, "Clarise Gnarltree", 		Z.DUSKWOOD, 					73.9,	48.5,	"Alliance")
	AddTrainer(3174, "Dwukk", 					Z.DUROTAR,						52.1,	40.7,	"Horde")
	AddTrainer(3355, "Saru Steelfury", 			Z.ORGRIMMAR,					82.2,	23.0,	"Horde")
	AddTrainer(3478, "Traugh", 					Z.THE_BARRENS,					51.3, 	28.9,	"Horde")
	AddTrainer(3557, "Guillaume Sorouy", 		Z.SILVERPINE_FOREST,			43.2,	41.0,	"Horde")
	AddTrainer(4258, "Bengus Deepforge", 		Z.IRONFORGE, 					52.3,	41.5,	"Alliance")
	AddTrainer(4596, "James Van Brunt", 		Z.UNDERCITY, 					61.1,	30.2,	"Horde")
	AddTrainer(4605, "Basil Frye", 				Z.UNDERCITY, 					60.1,	28.7,	"Horde")
	AddTrainer(4888, "Marie Holdston", 			Z.DUSTWALLOW_MARSH,				64.6,	50.1,	"Alliance")
	AddTrainer(5164, "Grumnus Steelshaper", 	Z.IRONFORGE,					50.2,	42.8,	"Alliance")
	AddTrainer(5511, "Therum Deepforge", 		Z.STORMWIND_CITY,				63.7,	37.3,	"Alliance")
	AddTrainer(5513, "Gelman Stonehand", 		Z.STORMWIND_CITY,				59.0,	37.6,	"Alliance")
	AddTrainer(6299, "Delfrum Flintbeard", 		Z.DARKSHORE,					38.2,	40.9,	"Alliance")
	AddTrainer(7230, "Shayis Steelfury", 		Z.ORGRIMMAR, 					80.4,	23.6,	"Horde")
	AddTrainer(7231, "Kelgruk Bloodaxe", 		Z.ORGRIMMAR,					82.0,	18.4,	"Horde")
	AddTrainer(7232, "Borgus Steelhand", Z.STORMWIND_CITY, 59.4, 34.26, "Alliance")
	AddTrainer(10266, "Ug'thok", 				Z.ORGRIMMAR,					80.6,	23.3,	"Horde")
	AddTrainer(10276, "Rotgath Stonebeard", 	Z.IRONFORGE,					52.1,	42.5,	"Alliance")
	AddTrainer(10277, "Groum Stonebeard", 		Z.IRONFORGE,					52.0,	41.9,	"Alliance")
	AddTrainer(10278, "Thrag Stonehoof", 		Z.THUNDER_BLUFF,				39.5,	55.8,	"Horde")
	AddTrainer(11146, "Ironus Coldsteel", 		Z.IRONFORGE,					50.5,	43.3,	"Alliance")
	AddTrainer(11177, "Okothos Ironrager", 		Z.ORGRIMMAR,					79.8,	23.8,	"Horde")
	AddTrainer(11178, "Borgosh Corebender", 	Z.ORGRIMMAR,					79.6,	23.6,	"Horde")
   	AddTrainer(28694,  	"Alard Schmied", 		Z.ALTERAC_MOUNTAINS, 19.8, 63.4, "Neutral")
   	AddTrainer(251913,  "Aedi Thriceforged", 	Z.ZEPHRAS_ISLE, 				44.8,	44.4,	"Neutral")
   	AddTrainer(252479,  "Daeann Steelwind", 	Z.ZEPHRAS_ISLE, 				65.4,	80.3,	"Neutral")
   	AddTrainer(256658,  "Gur'dok", 				Z.RIVERGLADES, 					60.0,	46.2,	"Horde")
   	AddTrainer(259250,  "Alphonse Dumas", 		Z.RIVERGLADES, 					64.4,	82.0,	"Alliance")
    AddTrainer(276067,  "Angus Hammerhand", 	Z.TIRISFAL_GLADES, 				21.2,	45.8,	"Horde")

	self.InitializeTrainers = nil
end
