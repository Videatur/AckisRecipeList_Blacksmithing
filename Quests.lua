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
function module:InitializeQuests()
	local function AddQuest(questID, zoneName, coordX, coordY, faction)
		addon.AcquireTypes.Quest:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = questID,
			item_list = {},
			locationName = zoneName,
			name = nil, -- Handled by memoizing table in the core.
		})
	end

	AddQuest(1578,	Z.IRONFORGE,			48.5,	43.0,	"Alliance")
	AddQuest(1618,	Z.IRONFORGE,			48.5,	43.0,	"Alliance")
	AddQuest(2751,	Z.ORGRIMMAR, 			79.4, 	22.4, 	"Horde")
	AddQuest(2752,	Z.ORGRIMMAR, 			79.4, 	22.4, 	"Horde")
	AddQuest(2753,	Z.ORGRIMMAR, 			79.4, 	22.4, 	"Horde")
	AddQuest(2754,	Z.ORGRIMMAR, 			79.4, 	22.4, 	"Horde")
	AddQuest(2755,	Z.ORGRIMMAR, 			79.4, 	22.4, 	"Horde")
	AddQuest(2758,	Z.STORMWIND_CITY,		56.0,	16.0,	"Alliance")
	AddQuest(2761,	Z.STRANGLETHORN_VALE,	50.6,	20.4,	"Neutral")
	AddQuest(2762,	Z.STRANGLETHORN_VALE,	50.6,	20.4,	"Neutral")
	AddQuest(2763,	Z.STRANGLETHORN_VALE,	50.6,	20.4,	"Neutral")
	AddQuest(5124,	Z.WINTERSPRING, 		61.0, 	38.6, 	"Neutral")
	AddQuest(5127,	Z.WINTERSPRING, 		63.8, 	73.8, 	"Neutral")
	AddQuest(5305,	Z.WINTERSPRING,			61.2,	37.0,	"Neutral")
	AddQuest(5306,	Z.WINTERSPRING,			61.2,	37.0,	"Neutral")
	AddQuest(5307,	Z.WINTERSPRING,			61.2,	37.0,	"Neutral")
	AddQuest(7604,	Z.BLACKROCK_DEPTHS,		0.0,	0.0,	"Neutral")
	AddQuest(7649,	Z.DIRE_MAUL,			0.0,	0.0,	"Neutral")
	AddQuest(7650,	Z.DIRE_MAUL,			0.0,	0.0,	"Neutral")
	AddQuest(7651,	Z.DIRE_MAUL,			0.0,	0.0,	"Neutral")
	AddQuest(7653,	Z.TANARIS,				51.4,	28.6,	"Neutral")
	AddQuest(7654,	Z.TANARIS,				51.4,	28.6,	"Neutral")
	AddQuest(7655,	Z.TANARIS,				51.4,	28.6,	"Neutral")
	AddQuest(7656,	Z.TANARIS,				51.4,	28.6,	"Neutral")
	AddQuest(7657,	Z.TANARIS,				51.4,	28.6,	"Neutral")
	AddQuest(7658,	Z.TANARIS,				51.4,	28.6,	"Neutral")
	AddQuest(7659,	Z.TANARIS,				51.4,	28.6,	"Neutral")
	AddQuest(8869,	Z.WINTERSPRING, 		61.2, 	37.2, 	"Neutral")

	self.InitializeQuests = nil
end
