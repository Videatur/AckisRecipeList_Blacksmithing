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
local L = _G.LibStub("AceLocale-3.0"):GetLocale(addon.constants.addon_name)

local Z = constants.ZONE_NAMES

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeMobDrops()
	local function AddMob(npcID, npcName, zoneName, coordX, coordY)
		addon.AcquireTypes.MobDrop:AddEntity(module, {
			coord_x = coordX or 0,
			coord_y = coordY or 0,
			faction = nil,
			identifier = npcID,
			item_list = {},
			locationName = zoneName,
			name = npcName,
		})
	end


	AddMob(1696, "Targorr the Dread", Z.THE_STOCKADE, 0, 0)
	AddMob(1836,	L["Scarlet Cavalier"],		Z.WESTERN_PLAGUELANDS, 42, 14.8)
	AddMob(1844,	L["Foreman Marcrid"],		Z.WESTERN_PLAGUELANDS,		45.2, 37.4)
	AddMob(1885,	L["Scarlet Smith"],			Z.WESTERN_PLAGUELANDS,		47.4, 20.0)
	AddMob(3865, 	L["Shadow Charger"], 		Z.SHADOWFANG_KEEP, 0, 0)
	AddMob(4364,	L["Strashaz Warrior"],		Z.DUSTWALLOW_MARSH,			76.4, 20.0)
	AddMob(4366,	L["Strashaz Serpent Guard"],Z.DUSTWALLOW_MARSH,			76.6, 20.6)
	AddMob(4368,	L["Strashaz Myrmidon"],		Z.DUSTWALLOW_MARSH,			77.2, 19.8)
	AddMob(4831, 	L["Lady Sarevess"], 		Z.BLACKFATHOM_DEEPS, 0, 0)
	AddMob(9028,	L["Grizzle"],				Z.BLACKROCK_DEPTHS, 0, 0)
	AddMob(9543,	L["Ribbly Screwspigot"],	Z.BLACKROCK_DEPTHS, 0, 0)
	AddMob(9554,	L["Hammered Patron"],		Z.BLACKROCK_DEPTHS, 0, 0)
	AddMob(9568,	L["Overlord Wyrmthalak"],	Z.BLACKROCK_SPIRE, 0, 0)
	AddMob(9596,	L["Bannok Grimaxe"],		Z.BLACKROCK_SPIRE, 0, 0)
	AddMob(9736, 	L["Quartermaster Zigris"], Z.BLACKROCK_SPIRE, 0, 0)
	AddMob(10043,	L["Ribbly's Crony"],		Z.BLACKROCK_DEPTHS, 0, 0)
	AddMob(10119,	L["Volchan"],				Z.BURNING_STEPPES, 83.2, 59.8)
	AddMob(10438,	L["Maleki the Pallid"],		Z.STRATHOLME, 0, 0)
	AddMob(10899,	L["Goraluk Anvilcrack"],	Z.BLACKROCK_SPIRE, 0, 0)
	AddMob(10997,	L["Cannon Master Willey"],	Z.STRATHOLME, 0, 0)
	AddMob(15263,	L["The Prophet Skeram"],	Z.AHNQIRAJ, 0, 0)
	AddMob(15340,	L["Moam"],					Z.RUINS_OF_AHNQIRAJ, 0, 0)
	AddMob(16072,	L["Tidelord Rrurgaz"],		Z.DUSTWALLOW_MARSH,		76.6, 19.6)
    AddMob(240792,	L["Scarlet Smith"],			Z.SCARLET_ENCLAVE,		0.0, 0.0)

	self.InitializeMobDrops = nil
end
