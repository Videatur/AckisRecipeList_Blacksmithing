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
function module:InitializeVendors()
	local function AddVendor(vendorID, vendorName, zoneName, coordX, coordY, faction)
		addon.AcquireTypes.Vendor:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = vendorID,
			item_list = {},
			locationName = zoneName,
			name = vendorName,
		})
	end


	AddVendor(1146,		L["Vharr"],							Z.STRANGLETHORN_VALE,			32.3,	28.0,	"Horde")
	AddVendor(1471,		L["Jannos Ironwill"],				Z.ARATHI_HIGHLANDS,				45.9,	47.5,	"Alliance")
	AddVendor(2482,		L["Zarena Cromwind"],				Z.STRANGLETHORN_VALE,			28.4,	75.4,	"Neutral")
	AddVendor(2483,		L["Jaquilina Dramet"],				Z.STRANGLETHORN_VALE,			35.7, 	10.7,	"Neutral")
	AddVendor(2843,		L["Jutak"],							Z.STRANGLETHORN_VALE,			27.5, 	77.5,	"Neutral")
	AddVendor(2999,		L["Taur Stonehoof"],				Z.THUNDER_BLUFF,				39.8,	55.6,	"Horde")
	AddVendor(3356,		L["Sumi"],							Z.ORGRIMMAR,					82.4, 	23.6,	"Horde")
	AddVendor(4259,		L["Thurgrum Deepforge"],			Z.IRONFORGE,					51.3,	42.8,	"Alliance")
	AddVendor(4597,		L["Samuel Van Brunt"],				Z.UNDERCITY,					61.5,	29.5,	"Horde")
	AddVendor(5411,		L["Krinkle Goodsteel"],				Z.TANARIS,						51.4, 	28.8,	"Neutral")
	AddVendor(5512,		L["Kaita Deepforge"],				Z.STORMWIND_CITY,				63.3, 	37.5,	"Alliance")
	AddVendor(8161,		L["Harggan"],						Z.THE_HINTERLANDS,				13.5,	44.0,	"Alliance")
	AddVendor(8176,		L["Gharash"],						Z.SWAMP_OF_SORROWS,				45.4, 	51.5,	"Horde")
	AddVendor(8878,		L["Muuran"],						Z.DESOLACE,						55.7,	56.5,	"Horde")
	AddVendor(9179,		L["Jazzrik"],						Z.BADLANDS,						42.3,	52.6,	"Neutral")
	AddVendor(10856, L["Argent Quartermaster Hasana"], 		Z.TIRISFAL_GLADES, 				83.2, 	68.2, 	"Neutral")
	AddVendor(10857, L["Argent Quartermaster Lightspark"], 	Z.WESTERN_PLAGUELANDS, 			42.9, 	83.7, 	"Neutral")
	AddVendor(11278, L["Magnus Frostwake"],					Z.WESTERN_PLAGUELANDS, 			68.0, 	77.6, 	"Neutral")
	AddVendor(11536, L["Quartermaster Miranda Breechlock"], Z.EASTERN_PLAGUELANDS, 			81.6, 	60.0, 	"Neutral")
	AddVendor(11557, L["Meilosh"], 							Z.FELWOOD, 						65.6, 	2.8, 	"Neutral")
	AddVendor(12944, L["Lokhtos Darkbargainer"], 			Z.BLACKROCK_DEPTHS, 			0, 		0, 		"Neutral")
	AddVendor(14921, L["Rin'wosho the Trader"], 			Z.STRANGLETHORN_VALE, 			15.0, 16.0, 	"Neutral")
	AddVendor(15176,	L["Vargus"],						Z.SILITHUS,						51.2, 	38.8,	"Neutral")
	AddVendor(15471,	L["Lieutenant General Andorov"],	Z.RUINS_OF_AHNQIRAJ,			0.0,	0.0,	"Neutral")
   	AddVendor(32287, 	L["Archmage Alvareaux"], 		    Z.ALTERAC_MOUNTAINS, 			14.0, 	63.2, 	"Alliance")
	AddVendor(217689, "Ziri \"The Wrench\" Littlesprocket", Z.GNOMEREGAN,                   0,      0,      "Neutral")
   	AddVendor(248197,	L["Gor'mak"],					    Z.THE_BARRENS,					49.8,	29.7,	"Horde")
	AddVendor(253139,   "Gorhak",                           Z.DESOLACE,                     66.3,   79.5,   "Neutral")
	AddVendor(253140,   "Molkar",                           Z.DESOLACE,                     35.7,   92.2,   "Neutral")
   	AddVendor(254151, 	L["Vayn Moongaze"], 			    Z.ZEPHRAS_ISLE, 				63.8, 	36.1, 	"Neutral")
   	AddVendor(256730,	L["Stondry Darkhammer"],		    Z.REDRIDGE_MOUNTAINS,			10.3,	74.6,	"Alliance")
	AddVendor(259860,   "Martha Wellsworth",                Z.RIVERGLADES,                  64.3,   84.1,   "Alliance")
	AddVendor(263440,   "Hamur",                            Z.RIVERGLADES,                  67.2,   21.6,   "Horde")
   	AddVendor(264078, 	L["Sutara Plainstalker"], 		    Z.MULGORE, 						34.5, 	22.9, 	"Horde")
	AddVendor(264797,   L["Aisarra Nightmeadow"],           Z.MOUNT_HYJAL,                  71.0,   51.2,   "Neutral")
	AddVendor(266901,   "Pexmit",                           Z.MOUNT_HYJAL,                  46.8,   80.4,   "Neutral")

	self.InitializeVendors = nil
end
