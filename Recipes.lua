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

-------------------------------------------------------------------------------
-- Filter flags. Acquire types, and Reputation levels.
-------------------------------------------------------------------------------
local A = constants.ACQUIRE_TYPE_IDS
local F = constants.FILTER_IDS
local Q = constants.ITEM_QUALITIES
local Z = constants.ZONE_NAMES

local FAC = constants.FACTION_IDS
local REP = constants.REP_LEVELS

-- LoadOnAddOn gives profession modules their own namespace, so the core's
-- private helpers are not available here.  Use the current spell API locally.
local function GetSpellName(spellID)
    return _G.C_Spell.GetSpellName(spellID)
end

module.Recipes = {}

--------------------------------------------------------------------------------------------------------------------
-- Initialize!
--------------------------------------------------------------------------------------------------------------------
function module:InitializeRecipes()
    local function AddRecipe(spellID, quality)
        return addon:AddRecipe(module, {
            _acquireTypeData = {},
            _bitflags = {},
            _localizedName = GetSpellName(spellID),
            _qualityID = quality,
            _spellID = spellID,
        })
    end

    local recipe

    -------------------------------------------------------------------------------
    -- Forever
    -------------------------------------------------------------------------------

	-- Stormcarver -- 1252366
	recipe = AddRecipe(1252366, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(251469, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250617, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.REVERED, 11557)

	-- Bagh Nakh -- 1252367
	recipe = AddRecipe(1252367, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(251470, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250618, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CREATED_ITEM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.REVERED, 11557)

	-- Low-Background Truesilver Plates -- 435910
	recipe = AddRecipe(435910, Q.RARE)
	recipe:SetSkillLevels(200, 200, 200, 210, 220)
	recipe:SetRecipeItem(215384, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(213376, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(217689)

	-- Sterling Silver Boots -- 1252232
	recipe = AddRecipe(1252232, Q.UNCOMMON)
	recipe:SetSkillLevels(100, 100, 130, 145, 160)
	recipe:SetRecipeItem(251335, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250483, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(2261)

	-- Sterling Silver Leggings -- 1252233
	recipe = AddRecipe(1252233, Q.UNCOMMON)
	recipe:SetSkillLevels(105, 105, 135, 150, 165)
	recipe:SetRecipeItem(251336, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250484, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(48)

	-- Sterling Silver Gauntlet -- 1252234
	recipe = AddRecipe(1252234, Q.UNCOMMON)
	recipe:SetSkillLevels(105, 105, 135, 150, 165)
	recipe:SetRecipeItem(251337, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250485, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(3711)

	-- Sterling Silver Shoulders -- 1252235
	recipe = AddRecipe(1252235, Q.UNCOMMON)
	recipe:SetSkillLevels(110, 110, 140, 155, 170)
	recipe:SetRecipeItem(251338, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250486, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(433)

	-- Sterling Silver Breastplate -- 1252236
	recipe = AddRecipe(1252236, Q.UNCOMMON)
	recipe:SetSkillLevels(125, 125, 155, 170, 185)
	recipe:SetRecipeItem(251339, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250487, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(10758)

	-- Veteran's Chain Shirt -- 1252237
	recipe = AddRecipe(1252237, Q.RARE)
	recipe:SetSkillLevels(80, 80, 85, 85, 85)
	recipe:SetRecipeItem(251340, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250488, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(11517)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.RUINS_OF_LORDAERON, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.WAILING_CAVERNS)

	-- Guard's Chain Shirt -- 1252238
	recipe = AddRecipe(1252238, Q.RARE)
	recipe:SetSkillLevels(80, 80, 85, 85, 85)
	recipe:SetRecipeItem(251341, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250489, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.WAILING_CAVERNS)

	-- Protector's Chain Shirt -- 1252239
	recipe = AddRecipe(1252239, Q.RARE)
	recipe:SetSkillLevels(80, 80, 85, 85, 85)
	recipe:SetRecipeItem(251342, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250490, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(1763)

	-- Acolyte's Chain Shirt -- 1252240
	recipe = AddRecipe(1252240, Q.RARE)
	recipe:SetSkillLevels(80, 80, 85, 85, 85)
	recipe:SetRecipeItem(251343, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250491, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(11517)

	-- Hard Gold Cuirass -- 1252282
	recipe = AddRecipe(1252282, Q.UNCOMMON)
	recipe:SetSkillLevels(145, 145, 170, 182, 195)
	recipe:SetRecipeItem(251385, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250533, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(4101)

	-- Hard Gold Boots -- 1252283
	recipe = AddRecipe(1252283, Q.UNCOMMON)
	recipe:SetSkillLevels(150, 150, 175, 187, 200)
	recipe:SetRecipeItem(251386, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250534, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(2586, 267065)

	-- Hard Gold Coif -- 1252286
	recipe = AddRecipe(1252286, Q.UNCOMMON)
	recipe:SetSkillLevels(170, 170, 195, 207, 220)
	recipe:SetRecipeItem(251389, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250537, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(2906)

	-- Hard Gold Gauntlet -- 1252287
	recipe = AddRecipe(1252287, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 200, 212, 225)
	recipe:SetRecipeItem(251390, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250538, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.MAGRAM_CLAN_CENTAUR, REP.HONORED, 253139)
	recipe:AddRepVendor(FAC.GELKIS_CLAN_CENTAUR, REP.EXALTED, 253140)
	recipe:AddQuest(92818)

	-- Hard Gold Pauldrons -- 1252288
	recipe = AddRecipe(1252288, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 200, 212, 225)
	recipe:SetRecipeItem(251391, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250539, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(2252)

	-- Shining Mithril Boots -- 1252291
	recipe = AddRecipe(1252291, Q.UNCOMMON)
	recipe:SetSkillLevels(200, 200, 220, 230, 240)
	recipe:SetRecipeItem(251394, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250542, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(2894)

	-- Brass Knuckles -- 1252351
	recipe = AddRecipe(1252351, Q.UNCOMMON)
	recipe:SetSkillLevels(80, 80, 110, 125, 140)
	recipe:SetRecipeItem(251454, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250602, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CREATED_ITEM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(11915)

	-- Bronze Dory -- 1252352
	recipe = AddRecipe(1252352, Q.UNCOMMON)
	recipe:SetSkillLevels(95, 95, 125, 140, 155)
	recipe:SetRecipeItem(251455, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250603, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_POLEARM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(3727)

	-- Iron Fists -- 1252353
	recipe = AddRecipe(1252353, Q.UNCOMMON)
	recipe:SetSkillLevels(130, 130, 155, 167, 180)
	recipe:SetRecipeItem(251456, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250604, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CREATED_ITEM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(3771)

	-- Steel Spear -- 1252354
	recipe = AddRecipe(1252354, Q.UNCOMMON)
	recipe:SetSkillLevels(160, 160, 185, 197, 210)
	recipe:SetRecipeItem(251457, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250605, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_POLEARM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(4151)

	-- Iron Morningstar -- 1252355
	recipe = AddRecipe(1252355, Q.UNCOMMON)
	recipe:SetSkillLevels(165, 165, 190, 202, 215)
	recipe:SetRecipeItem(251458, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250606, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.MAGRAM_CLAN_CENTAUR, REP.HONORED, 253139)
	recipe:AddRepVendor(FAC.GELKIS_CLAN_CENTAUR, REP.EXALTED, 253140)
	recipe:AddQuest(92818)

	-- Mithril Shortsword -- 1252356
	recipe = AddRecipe(1252356, Q.UNCOMMON)
	recipe:SetSkillLevels(180, 180, 200, 210, 220)
	recipe:SetRecipeItem(251459, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250607, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_DAGGER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(4362)

	-- Mithril Warhammer -- 1252357
	recipe = AddRecipe(1252357, Q.UNCOMMON)
	recipe:SetSkillLevels(190, 190, 210, 220, 230)
	recipe:SetRecipeItem(251460, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250608, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(259860, 263440)
	recipe:AddQuest(96026)

	-- Mithril Claws -- 1252358
	recipe = AddRecipe(1252358, Q.UNCOMMON)
	recipe:SetSkillLevels(195, 195, 215, 225, 235)
	recipe:SetRecipeItem(251461, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250609, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CREATED_ITEM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(2893)

	-- Mithril Stiletto -- 1252360
	recipe = AddRecipe(1252360, Q.UNCOMMON)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetRecipeItem(251463, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250611, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_DAGGER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(759)

	-- Anvil -- 1263041
	recipe = AddRecipe(1263041, Q.UNCOMMON)
	recipe:SetSkillLevels(140, 140, 140, 140, 140)
	recipe:SetRecipeItem(273086, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(279988, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CREATED_ITEM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(1763)

	-- Rough Copper Chain Boots -- 1302598
	recipe = AddRecipe(1302598, Q.UNCOMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetRecipeItem(277673, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277672, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddQuest(95217, 96874)


	-- Cracked Blacksmith Hammer -- 1317962
	recipe = AddRecipe(1317962, Q.UNCOMMON)
	recipe:SetSkillLevels(110, 110, 115, 117, 120)
	recipe:SetRecipeItem(285289, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(285279, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_THROWN")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Mithril Blacksmith Hammer -- 1317963
	recipe = AddRecipe(1317963, Q.UNCOMMON)
	recipe:SetSkillLevels(195, 195, 200, 202, 205)
	recipe:SetRecipeItem(285290, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(285280, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_THROWN")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256730)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248197)
	recipe:AddMerchantFavor(60)

	-- Arcanite Blacksmith Hammer -- 1317964
	recipe = AddRecipe(1317964, Q.RARE)
	recipe:SetSkillLevels(270, 270, 275, 277, 280)
	recipe:SetRecipeItem(285291, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(285281, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_THROWN")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddMerchantFavor(90)


	-- Arcanite Rod -- 20201
	recipe = AddRecipe(20201, Q.COMMON)
	recipe:SetSkillLevels(250, 250, 250, 255, 260)
	recipe:SetCraftedItem(16206, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(2836)


	-- Silver Rod -- 7818
	recipe = AddRecipe(7818, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 80, 82, 85)
	recipe:SetCraftedItem(6338, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Golden Rod -- 14379
	recipe = AddRecipe(14379, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 130, 132, 135)
	recipe:SetCraftedItem(11128, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Truesilver Rod -- 14380
	recipe = AddRecipe(14380, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 180, 182, 185)
	recipe:SetCraftedItem(11144, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Gemmed Copper Boots -- 1252229
	recipe = AddRecipe(1252229, Q.RARE)
	recipe:SetRecipeItem(251332, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(35, 35, 40, 40, 40)
	recipe:SetCraftedItem(250620, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Strange Copper Boots -- 1252230
	recipe = AddRecipe(1252230, Q.RARE)
	recipe:SetRecipeItem(251333, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(35, 35, 40, 40, 40)
	recipe:SetCraftedItem(250621, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Glowing Copper Boots -- 1252231
	recipe = AddRecipe(1252231, Q.RARE)
	recipe:SetRecipeItem(251334, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(35, 35, 40, 40, 40)
	recipe:SetCraftedItem(250482, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Officer's Belt -- 1252305
	recipe = AddRecipe(1252305, Q.RARE)
	recipe:SetRecipeItem(251408, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(150, 150, 155, 155, 155)
	recipe:SetCraftedItem(250556, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Sentinel's Belt -- 1252306
	recipe = AddRecipe(1252306, Q.RARE)
	recipe:SetRecipeItem(251409, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(150, 150, 155, 155, 155)
	recipe:SetCraftedItem(250557, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Warder's Belt -- 1252307
	recipe = AddRecipe(1252307, Q.RARE)
	recipe:SetRecipeItem(251410, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(150, 150, 155, 155, 155)
	recipe:SetCraftedItem(250558, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Prefect's Belt -- 1252308
	recipe = AddRecipe(1252308, Q.RARE)
	recipe:SetRecipeItem(251411, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(150, 150, 155, 155, 155)
	recipe:SetCraftedItem(250559, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Justicar's Belt -- 1252309
	recipe = AddRecipe(1252309, Q.RARE)
	recipe:SetRecipeItem(251412, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(150, 150, 155, 155, 155)
	recipe:SetCraftedItem(250560, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Goregasher Grips -- 1297138
	recipe = AddRecipe(1297138, Q.RARE)
	recipe:SetSkillLevels(285, 285, 290, 292, 295)
	recipe:SetRecipeItem(275598, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275622, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.FRIENDLY, 15176)

	-- Goregasher Support -- 1297139
	recipe = AddRecipe(1297139, Q.RARE)
	recipe:SetSkillLevels(290, 290, 295, 297, 300)
	recipe:SetRecipeItem(275599, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275623, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15176)

	-- Goregasher Stompers -- 1297140
	recipe = AddRecipe(1297140, Q.RARE)
	recipe:SetSkillLevels(295, 295, 295, 297, 300)
	recipe:SetRecipeItem(275600, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275624, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15176)

	-- Clutchlord's Grips -- 1297141
	recipe = AddRecipe(1297141, Q.RARE)
	recipe:SetSkillLevels(285, 285, 290, 292, 295)
	recipe:SetRecipeItem(275601, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275625, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.FRIENDLY, 15176)

	-- Clutchlord's Support -- 1297142
	recipe = AddRecipe(1297142, Q.RARE)
	recipe:SetSkillLevels(290, 290, 295, 297, 300)
	recipe:SetRecipeItem(275602, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275626, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15176)

	-- Clutchlord's Stompers -- 1297143
	recipe = AddRecipe(1297143, Q.RARE)
	recipe:SetSkillLevels(295, 295, 295, 297, 300)
	recipe:SetRecipeItem(275603, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275627, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15176)


   	-- Copper Rod -- 1245287
	recipe = AddRecipe(1245287, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 10, 12, 15)
	recipe:SetCraftedItem(6217, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Sharpening Wheel -- 1230171
	recipe = AddRecipe(1230171, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 20, 20, 20)
	recipe:SetCraftedItem(279944, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CREATED_ITEM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Veteran's Boots -- 1252252
	recipe = AddRecipe(1252252, Q.RARE)
	recipe:SetSkillLevels(85, 85, 115, 130, 145)
	recipe:SetRecipeItem(251355, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250503, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Guard's Boots -- 1252253
	recipe = AddRecipe(1252253, Q.RARE)
	recipe:SetSkillLevels(85, 85, 115, 130, 145)
	recipe:SetRecipeItem(251356, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250504, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Protector's Boots -- 1252254
	recipe = AddRecipe(1252254, Q.RARE)
	recipe:SetSkillLevels(85, 85, 115, 130, 145)
	recipe:SetRecipeItem(251357, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250505, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Acolyte's Boots -- 1252255
	recipe = AddRecipe(1252255, Q.RARE)
	recipe:SetSkillLevels(85, 85, 115, 130, 145)
	recipe:SetRecipeItem(251358, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250506, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Crusader's Boots -- 1252256
	recipe = AddRecipe(1252256, Q.RARE)
	recipe:SetSkillLevels(85, 85, 115, 130, 145)
	recipe:SetRecipeItem(251359, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250507, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Veteran's Gloves -- 1252257
	recipe = AddRecipe(1252257, Q.RARE)
	recipe:SetSkillLevels(80, 80, 110, 125, 140)
	recipe:SetRecipeItem(251360, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250508, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES)
	recipe:AddMerchantFavor(30)

	-- Guard's Gloves -- 1252258
	recipe = AddRecipe(1252258, Q.RARE)
	recipe:SetSkillLevels(80, 80, 110, 125, 140)
	recipe:SetRecipeItem(251361, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250509, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES)
	recipe:AddMerchantFavor(30)

	-- Protector's Gloves -- 1252259
	recipe = AddRecipe(1252259, Q.RARE)
	recipe:SetSkillLevels(80, 80, 110, 125, 140)
	recipe:SetRecipeItem(251362, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250510, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES)
	recipe:AddMerchantFavor(30)

	-- Acolyte's Gloves -- 1252260
	recipe = AddRecipe(1252260, Q.RARE)
	recipe:SetSkillLevels(80, 80, 110, 125, 140)
	recipe:SetRecipeItem(251363, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250511, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES)
	recipe:AddMerchantFavor(30)

	-- Crusader's Gloves -- 1252261
	recipe = AddRecipe(1252261, Q.RARE)
	recipe:SetSkillLevels(80, 80, 110, 125, 140)
	recipe:SetRecipeItem(251364, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250512, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES)
	recipe:AddMerchantFavor(30)

	-- Veteran's Chain Belt -- 1252262
	recipe = AddRecipe(1252262, Q.RARE)
	recipe:SetSkillLevels(45, 45, 85, 105, 125)
	recipe:SetRecipeItem(251365, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250513, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Guard's Chain Belt -- 1252263
	recipe = AddRecipe(1252263, Q.RARE)
	recipe:SetSkillLevels(45, 45, 85, 105, 125)
	recipe:SetRecipeItem(251366, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250514, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Protector's Chain Belt -- 1252264
	recipe = AddRecipe(1252264, Q.RARE)
	recipe:SetSkillLevels(45, 45, 85, 105, 125)
	recipe:SetRecipeItem(251367, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250515, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Acolyte's Chain Belt -- 1252265
	recipe = AddRecipe(1252265, Q.RARE)
	recipe:SetSkillLevels(45, 45, 85, 105, 125)
	recipe:SetRecipeItem(251368, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250516, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Crusader's Chain Belt -- 1252266
	recipe = AddRecipe(1252266, Q.RARE)
	recipe:SetSkillLevels(45, 45, 85, 105, 125)
	recipe:SetRecipeItem(251369, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250517, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Veteran's Silvered Chain Shirt -- 1252267
	recipe = AddRecipe(1252267, Q.RARE)
	recipe:SetSkillLevels(110, 110, 140, 155, 170)
	recipe:SetRecipeItem(251370, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250518, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Guard's Silvered Chain Shirt -- 1252268
	recipe = AddRecipe(1252268, Q.RARE)
	recipe:SetSkillLevels(110, 110, 140, 155, 170)
	recipe:SetRecipeItem(251371, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250519, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Protector's Silvered Chain Shirt -- 1252269
	recipe = AddRecipe(1252269, Q.RARE)
	recipe:SetSkillLevels(110, 110, 140, 155, 170)
	recipe:SetRecipeItem(251372, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250520, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Acolyte's Silvered Chain Shirt -- 1252270
	recipe = AddRecipe(1252270, Q.RARE)
	recipe:SetSkillLevels(110, 110, 140, 155, 170)
	recipe:SetRecipeItem(251373, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250521, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Crusader's Silvered Chain Shirt -- 1252271
	recipe = AddRecipe(1252271, Q.RARE)
	recipe:SetSkillLevels(110, 110, 140, 155, 170)
	recipe:SetRecipeItem(251374, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250522, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddMerchantFavor(30)

	-- Veteran's Silvered Chain Leggings -- 1252272
	recipe = AddRecipe(1252272, Q.RARE)
	recipe:SetSkillLevels(125, 125, 155, 170, 185)
	recipe:SetRecipeItem(251375, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250523, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Guard's Silvered Chain Leggings -- 1252273
	recipe = AddRecipe(1252273, Q.RARE)
	recipe:SetSkillLevels(125, 125, 155, 170, 185)
	recipe:SetRecipeItem(251376, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250524, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Guard's Chain Leggings -- 1252243
	recipe = AddRecipe(1252243, Q.RARE)
	recipe:SetSkillLevels(95, 95, 100, 100, 100)
	recipe:SetRecipeItem(251346, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250494, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(1696)

	-- Crusader's Chain Leggings -- 1252246
	recipe = AddRecipe(1252246, Q.RARE)
	recipe:SetSkillLevels(95, 95, 100, 100, 100)
	recipe:SetRecipeItem(251349, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250497, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(1696)

	-- Protector's Silvered Chain Leggings -- 1252274
	recipe = AddRecipe(1252274, Q.RARE)
	recipe:SetSkillLevels(125, 125, 155, 170, 185)
	recipe:SetRecipeItem(251377, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250525, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Acolyte's Silvered Chain Leggings -- 1252275
	recipe = AddRecipe(1252275, Q.RARE)
	recipe:SetSkillLevels(125, 125, 155, 170, 185)
	recipe:SetRecipeItem(251378, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250526, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Crusader's Silvered Chain Leggings -- 1252276
	recipe = AddRecipe(1252276, Q.RARE)
	recipe:SetSkillLevels(125, 125, 155, 170, 185)
	recipe:SetRecipeItem(251379, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250527, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Veteran's Silvered Chain Helm -- 1252277
	recipe = AddRecipe(1252277, Q.RARE)
	recipe:SetSkillLevels(95, 95, 125, 140, 155)
	recipe:SetRecipeItem(251380, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250528, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Guard's Silvered Chain Helm -- 1252278
	recipe = AddRecipe(1252278, Q.RARE)
	recipe:SetSkillLevels(95, 95, 125, 140, 155)
	recipe:SetRecipeItem(251381, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250529, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.SHADOWFANG_KEEP, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Protector's Silvered Chain Helm -- 1252279
	recipe = AddRecipe(1252279, Q.RARE)
	recipe:SetSkillLevels(95, 95, 125, 140, 155)
	recipe:SetRecipeItem(251382, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250530, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Acolyte's Silvered Chain Helm -- 1252280
	recipe = AddRecipe(1252280, Q.RARE)
	recipe:SetSkillLevels(95, 95, 125, 140, 155)
	recipe:SetRecipeItem(251383, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250531, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Crusader's Silvered Chain Helm -- 1252281
	recipe = AddRecipe(1252281, Q.RARE)
	recipe:SetSkillLevels(95, 95, 125, 140, 155)
	recipe:SetRecipeItem(251384, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250532, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248197, 256730)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Officer's Sabatons -- 1252310
	recipe = AddRecipe(1252310, Q.RARE)
	recipe:SetSkillLevels(240, 240, 260, 270, 280)
	recipe:SetRecipeItem(251413, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250561, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Sentinel's Sabatons -- 1252311
	recipe = AddRecipe(1252311, Q.RARE)
	recipe:SetSkillLevels(240, 240, 260, 270, 280)
	recipe:SetRecipeItem(251414, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250562, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Warder's Sabatons -- 1252312
	recipe = AddRecipe(1252312, Q.RARE)
	recipe:SetSkillLevels(240, 240, 260, 270, 280)
	recipe:SetRecipeItem(251415, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250563, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Prefect's Sabatons -- 1252313
	recipe = AddRecipe(1252313, Q.RARE)
	recipe:SetSkillLevels(240, 240, 260, 270, 280)
	recipe:SetRecipeItem(251416, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250564, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Justicar's Sabatons -- 1252314
	recipe = AddRecipe(1252314, Q.RARE)
	recipe:SetSkillLevels(240, 240, 260, 270, 280)
	recipe:SetRecipeItem(251417, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250565, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Officer's Gauntlet -- 1252315
	recipe = AddRecipe(1252315, Q.RARE)
	recipe:SetSkillLevels(175, 175, 200, 212, 225)
	recipe:SetRecipeItem(251418, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250566, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256730)
	recipe:AddMerchantFavor(60)

	-- Sentinel's Gauntlet -- 1252316
	recipe = AddRecipe(1252316, Q.RARE)
	recipe:SetSkillLevels(175, 175, 200, 212, 225)
	recipe:SetRecipeItem(251419, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250567, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256730)
	recipe:AddMerchantFavor(60)

	-- Warder's Gauntlet -- 1252317
	recipe = AddRecipe(1252317, Q.RARE)
	recipe:SetSkillLevels(175, 175, 200, 212, 225)
	recipe:SetRecipeItem(251420, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250568, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256730)
	recipe:AddMerchantFavor(60)

	-- Prefect's Gauntlet -- 1252318
	recipe = AddRecipe(1252318, Q.RARE)
	recipe:SetSkillLevels(175, 175, 200, 212, 225)
	recipe:SetRecipeItem(251421, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250569, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256730)
	recipe:AddMerchantFavor(60)

	-- Justicar's Gauntlet -- 1252319
	recipe = AddRecipe(1252319, Q.RARE)
	recipe:SetSkillLevels(175, 175, 200, 212, 225)
	recipe:SetRecipeItem(251422, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250570, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256730)
	recipe:AddMerchantFavor(60)

	-- Officer's Waistguard -- 1252320
	recipe = AddRecipe(1252320, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(251423, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250571, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Sentinel's Waistguard -- 1252321
	recipe = AddRecipe(1252321, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(251424, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250572, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Warder's Waistguard -- 1252322
	recipe = AddRecipe(1252322, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(251425, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250573, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Prefect's Waistguard -- 1252323
	recipe = AddRecipe(1252323, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(251426, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250574, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Justicar's Waistguard -- 1252324
	recipe = AddRecipe(1252324, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(251427, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250575, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Officer's Pauldrons -- 1252325
	recipe = AddRecipe(1252325, Q.RARE)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetRecipeItem(251428, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250576, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256730)
	recipe:AddMerchantFavor(60)

	-- Sentinel's Pauldrons -- 1252326
	recipe = AddRecipe(1252326, Q.RARE)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetRecipeItem(251429, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250577, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256730)
	recipe:AddMerchantFavor(60)

	-- Warder's Pauldrons -- 1252327
	recipe = AddRecipe(1252327, Q.RARE)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetRecipeItem(251430, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250578, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256730)
	recipe:AddMerchantFavor(60)

	-- Prefect's Pauldrons -- 1252328
	recipe = AddRecipe(1252328, Q.RARE)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetRecipeItem(251431, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250579, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256730)
	recipe:AddMerchantFavor(60)

	-- Justicar's Pauldrons -- 1252329
	recipe = AddRecipe(1252329, Q.RARE)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetRecipeItem(251432, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250580, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256730)
	recipe:AddMerchantFavor(60)

	-- Officer's Wristguards -- 1252330
	recipe = AddRecipe(1252330, Q.RARE)
	recipe:SetSkillLevels(225, 225, 250, 262, 275)
	recipe:SetRecipeItem(251433, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250581, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Sentinel's Wristguards -- 1252331
	recipe = AddRecipe(1252331, Q.RARE)
	recipe:SetSkillLevels(225, 225, 250, 262, 275)
	recipe:SetRecipeItem(251434, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250582, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Warder's Wristguards -- 1252332
	recipe = AddRecipe(1252332, Q.RARE)
	recipe:SetSkillLevels(225, 225, 250, 262, 275)
	recipe:SetRecipeItem(251435, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250583, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Prefect's Wristguards -- 1252333
	recipe = AddRecipe(1252333, Q.RARE)
	recipe:SetSkillLevels(225, 225, 250, 262, 275)
	recipe:SetRecipeItem(251436, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250584, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Justicar's Wristguards -- 1252334
	recipe = AddRecipe(1252334, Q.RARE)
	recipe:SetSkillLevels(225, 225, 250, 262, 275)
	recipe:SetRecipeItem(251437, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250585, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Enriched Thorium Breastplate -- 1252344
	recipe = AddRecipe(1252344, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(251447, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250595, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(120)

	-- Enriched Thorium Leggings -- 1252345
	recipe = AddRecipe(1252345, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(251448, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250596, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(120)

	-- Enriched Thorium Helm -- 1252346
	recipe = AddRecipe(1252346, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(251449, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250597, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(120)

	-- Thorium Greatmace -- 1252362
	recipe = AddRecipe(1252362, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(251465, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250613, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Thorium Cestus -- 1252363
	recipe = AddRecipe(1252363, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(251466, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250614, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_CREATED_ITEM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(90)

	-- Legionite Glaive -- 1252368
	recipe = AddRecipe(1252368, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(251471, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250619, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_POLEARM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248197)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256730)
	recipe:AddMerchantFavor(120)

	-- Azure Skyforged Helm -- 1301534
	recipe = AddRecipe(1301534, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 185, 187, 190)
	recipe:SetRecipeItem(276984, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277048, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.KIRIN_TOR, REP.FRIENDLY, 32287)

	-- Azure Skyforged Pauldrons -- 1301535
	recipe = AddRecipe(1301535, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 185, 187, 190)
	recipe:SetRecipeItem(276985, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277049, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.KIRIN_TOR, REP.FRIENDLY, 32287)

	-- Cloudy Skyforged Helm -- 1301526
	recipe = AddRecipe(1301526, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 185, 187, 190)
	recipe:SetRecipeItem(276976, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277040, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.EARTHEN_RING, REP.FRIENDLY, 264078)

	-- Cloudy Skyforged Pauldrons -- 1301527
	recipe = AddRecipe(1301527, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 185, 187, 190)
	recipe:SetRecipeItem(276977, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277041, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.EARTHEN_RING, REP.FRIENDLY, 264078)

	-- Cloudy Skyforged Chainmail -- 1301421
	recipe = AddRecipe(1301421, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 65, 67, 70)
	recipe:SetRecipeItem(276928, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(276992, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.HONORED, 254151)

	-- Cloudy Skyforged Wristguards -- 1301422
	recipe = AddRecipe(1301422, Q.UNCOMMON)
	recipe:SetSkillLevels(50, 50, 55, 57, 60)
	recipe:SetRecipeItem(276929, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(276993, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Cloudy Skyforged Gauntlets -- 1301423
	recipe = AddRecipe(1301423, Q.UNCOMMON)
	recipe:SetSkillLevels(55, 55, 60, 62, 65)
	recipe:SetRecipeItem(276930, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(276994, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Cloudy Skyforged Chain -- 1301424
	recipe = AddRecipe(1301424, Q.UNCOMMON)
	recipe:SetSkillLevels(50, 50, 55, 57, 60)
	recipe:SetRecipeItem(276931, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(276995, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Cloudy Skyforged Legguards -- 1301425
	recipe = AddRecipe(1301425, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 65, 67, 70)
	recipe:SetRecipeItem(276932, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(276996, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.HONORED, 254151)

	-- Cloudy Skyforged Greaves -- 1301426
	recipe = AddRecipe(1301426, Q.UNCOMMON)
	recipe:SetSkillLevels(55, 55, 60, 62, 65)
	recipe:SetRecipeItem(276933, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(276997, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Azure Skyforged Chainmail -- 1301445
	recipe = AddRecipe(1301445, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 65, 67, 70)
	recipe:SetRecipeItem(276952, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277016, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.HONORED, 254151)

	-- Azure Skyforged Wristguards -- 1301446
	recipe = AddRecipe(1301446, Q.UNCOMMON)
	recipe:SetSkillLevels(50, 50, 55, 57, 60)
	recipe:SetRecipeItem(276953, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277017, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Azure Skyforged Gauntlets -- 1301447
	recipe = AddRecipe(1301447, Q.UNCOMMON)
	recipe:SetSkillLevels(55, 55, 60, 62, 65)
	recipe:SetRecipeItem(276954, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277018, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Azure Skyforged Chain -- 1301448
	recipe = AddRecipe(1301448, Q.UNCOMMON)
	recipe:SetSkillLevels(50, 50, 55, 57, 60)
	recipe:SetRecipeItem(276955, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277019, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Azure Skyforged Legguards -- 1301449
	recipe = AddRecipe(1301449, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 65, 67, 70)
	recipe:SetRecipeItem(276956, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277020, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.HONORED, 254151)

	-- Azure Skyforged Greaves -- 1301450
	recipe = AddRecipe(1301450, Q.UNCOMMON)
	recipe:SetSkillLevels(55, 55, 60, 62, 65)
	recipe:SetRecipeItem(276957, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277021, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	------------------------------------------------------------------------------


    -- Hard Gold Bracers -- 1252284
    recipe = AddRecipe(1252284, Q.UNCOMMON)
    recipe:SetSkillLevels(160, 160, 185, 197, 210)
    recipe:SetRecipeItem(251387, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250535, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_WRIST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(4711)

    -- Hard Gold Leggings -- 1252285
    recipe = AddRecipe(1252285, Q.UNCOMMON)
    recipe:SetSkillLevels(165, 165, 190, 202, 215)
    recipe:SetRecipeItem(251388, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250536, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_LEGS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(937)

    -- Mithril Claymore -- 1252359
    recipe = AddRecipe(1252359, Q.UNCOMMON)
    recipe:SetSkillLevels(195, 195, 215, 225, 235)
    recipe:SetRecipeItem(251462, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250610, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_SWORD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(5249)

    -- Shining Mithril Breastplate -- 1252289
    recipe = AddRecipe(1252289, Q.UNCOMMON)
    recipe:SetSkillLevels(195, 195, 215, 225, 235)
    recipe:SetRecipeItem(251392, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250540, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(11559)

    -- Shining Mithril Pauldrons -- 1252290
    recipe = AddRecipe(1252290, Q.UNCOMMON)
    recipe:SetSkillLevels(195, 195, 215, 225, 235)
    recipe:SetRecipeItem(251393, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250541, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(2596)

    -- Charged Mithril Battleaxe -- 1252361
    recipe = AddRecipe(1252361, Q.UNCOMMON)
    recipe:SetSkillLevels(215, 215, 235, 245, 255)
    recipe:SetRecipeItem(251464, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250612, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_AXE")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(5232)

    -- Shining Mithril Helm -- 1252292
    recipe = AddRecipe(1252292, Q.UNCOMMON)
    recipe:SetSkillLevels(215, 215, 235, 245, 255)
    recipe:SetRecipeItem(251395, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250543, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_HEAD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(1907)

    -- Shining Mithril Gauntlet -- 1252294
    recipe = AddRecipe(1252294, Q.UNCOMMON)
    recipe:SetSkillLevels(220, 220, 240, 250, 260)
    recipe:SetRecipeItem(251397, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250545, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_HANDS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(7855)

    -- Shining Mithril Pants -- 1252293
    recipe = AddRecipe(1252293, Q.UNCOMMON)
    recipe:SetSkillLevels(220, 220, 240, 250, 260)
    recipe:SetRecipeItem(251396, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250544, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_LEGS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(2653)

    -- Blessed Plate Boots -- 1252336
    recipe = AddRecipe(1252336, Q.UNCOMMON)
    recipe:SetSkillLevels(240, 240, 260, 270, 280)
    recipe:SetRecipeItem(251439, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250587, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_FEET")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(8566)

    -- Blessed Plate Pauldrons -- 1252335
    recipe = AddRecipe(1252335, Q.UNCOMMON)
    recipe:SetSkillLevels(240, 240, 260, 270, 280)
    recipe:SetRecipeItem(251438, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250586, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(6117)

    -- Blessed Plate Gauntlet -- 1252337
    recipe = AddRecipe(1252337, Q.UNCOMMON)
    recipe:SetSkillLevels(245, 245, 265, 275, 285)
    recipe:SetRecipeItem(251440, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250588, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_HANDS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(7155)

    -- Blessed Plate Bracers -- 1252339
    recipe = AddRecipe(1252339, Q.UNCOMMON)
    recipe:SetSkillLevels(255, 255, 275, 285, 295)
    recipe:SetRecipeItem(251442, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250590, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_WRIST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(7108)

    -- Imperial Plate Gauntlets -- 1252338
    recipe = AddRecipe(1252338, Q.UNCOMMON)
    recipe:SetSkillLevels(255, 255, 275, 285, 295)
    recipe:SetRecipeItem(251441, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250589, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_HANDS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(6199)

    -- Blessed Plate Belt -- 1252341
    recipe = AddRecipe(1252341, Q.UNCOMMON)
    recipe:SetSkillLevels(270, 270, 290, 300, 310)
    recipe:SetRecipeItem(251444, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250592, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_WAIST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(8600)

    -- Blessed Plate Leggings -- 1252340
    recipe = AddRecipe(1252340, Q.UNCOMMON)
    recipe:SetSkillLevels(270, 270, 290, 300, 310)
    recipe:SetRecipeItem(251443, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250591, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_LEGS")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(7451)

    -- Blessed Plate Helm -- 1252342
    recipe = AddRecipe(1252342, Q.UNCOMMON)
    recipe:SetSkillLevels(275, 275, 295, 305, 315)
    recipe:SetRecipeItem(251445, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250593, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_HEAD")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(1834)

    -- Blessed Plate Chest -- 1252343
    recipe = AddRecipe(1252343, Q.UNCOMMON)
    recipe:SetSkillLevels(280, 280, 300, 310, 320)
    recipe:SetRecipeItem(251446, "BIND_ON_PICKUP")
    recipe:SetCraftedItem(250594, "BIND_ON_EQUIP")
    recipe:SetItemFilterType("BLACKSMITHING_CHEST")
    recipe:AddFilters(F.ALLIANCE, F.HORDE)
    recipe:AddMobDrop(249220)

	-- Crusader's Chain Shirt -- 1252241
	recipe = AddRecipe(1252241, Q.RARE)
	recipe:SetSkillLevels(80, 80, 85, 85, 85)
	recipe:SetRecipeItem(251344, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250492, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(646, 3671, 3864, 3865, 11518, 11519, 11520)

	-- Veteran's Chain Leggings -- 1252242
	recipe = AddRecipe(1252242, Q.RARE)
	recipe:SetSkillLevels(95, 95, 100, 100, 100)
	recipe:SetRecipeItem(251345, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250493, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(3670, 3927)

	-- Protector's Chain Leggings -- 1252244
	recipe = AddRecipe(1252244, Q.RARE)
	recipe:SetSkillLevels(95, 95, 100, 100, 100)
	recipe:SetRecipeItem(251347, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250495, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(3674, 3872, 3886, 4274, 4275, 4279)

	-- Acolyte's Chain Leggings -- 1252245
	recipe = AddRecipe(1252245, Q.RARE)
	recipe:SetSkillLevels(95, 95, 100, 100, 100)
	recipe:SetRecipeItem(251348, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250496, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(3670, 3673, 3886, 5775)

	-- Veteran's Chain Helm -- 1252247
	recipe = AddRecipe(1252247, Q.RARE)
	recipe:SetSkillLevels(125, 125, 130, 130, 130)
	recipe:SetRecipeItem(251350, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250498, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(1717, 3983, 4428, 6235, 7800, 12902)

	-- Guard's Chain Helm -- 1252248
	recipe = AddRecipe(1252248, Q.RARE)
	recipe:SetSkillLevels(125, 125, 130, 130, 130)
	recipe:SetRecipeItem(251351, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250499, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(1716, 4421, 4428, 6168, 7079)

	-- Protector's Chain Helm -- 1252249
	recipe = AddRecipe(1252249, Q.RARE)
	recipe:SetSkillLevels(125, 125, 130, 130, 130)
	recipe:SetRecipeItem(251352, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250500, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(3974, 4424, 4830, 6229, 7361, 12876)

	-- Acolyte's Chain Helm -- 1252250
	recipe = AddRecipe(1252250, Q.RARE)
	recipe:SetSkillLevels(125, 125, 130, 130, 130)
	recipe:SetRecipeItem(251353, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250501, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(1666, 3974, 4424, 4829, 6229, 12902)

	-- Crusader's Chain Helm -- 1252251
	recipe = AddRecipe(1252251, Q.RARE)
	recipe:SetSkillLevels(125, 125, 130, 130, 130)
	recipe:SetRecipeItem(251354, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250502, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(4420, 4422, 4830, 4832, 12876, 12902)

	-- Officer's Boots -- 1252295
	recipe = AddRecipe(1252295, Q.RARE)
	recipe:SetSkillLevels(200, 200, 205, 205, 205)
	recipe:SetRecipeItem(251398, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250546, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6910, 7355)

	-- Sentinel's Boots -- 1252296
	recipe = AddRecipe(1252296, Q.RARE)
	recipe:SetSkillLevels(200, 200, 205, 205, 205)
	recipe:SetRecipeItem(251399, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250547, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7206)

	-- Warder's Boots -- 1252297
	recipe = AddRecipe(1252297, Q.RARE)
	recipe:SetSkillLevels(200, 200, 205, 205, 205)
	recipe:SetRecipeItem(251400, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250548, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(3976, 4542)

	-- Prefect's Boots -- 1252298
	recipe = AddRecipe(1252298, Q.RARE)
	recipe:SetSkillLevels(200, 200, 205, 205, 205)
	recipe:SetRecipeItem(251401, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250549, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6487, 7604)

	-- Justicar's Boots -- 1252299
	recipe = AddRecipe(1252299, Q.RARE)
	recipe:SetSkillLevels(200, 200, 205, 205, 205)
	recipe:SetRecipeItem(251402, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250550, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(3977)

	-- Officer's Gloves -- 1252300
	recipe = AddRecipe(1252300, Q.RARE)
	recipe:SetSkillLevels(250, 250, 255, 255, 255)
	recipe:SetRecipeItem(251403, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250551, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(12201, 12225, 13596)

	-- Sentinel's Gloves -- 1252301
	recipe = AddRecipe(1252301, Q.RARE)
	recipe:SetSkillLevels(250, 250, 255, 255, 255)
	recipe:SetRecipeItem(251404, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250552, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7267, 7271, 7273, 9537, 12236)

	-- Warder's Gloves -- 1252302
	recipe = AddRecipe(1252302, Q.RARE)
	recipe:SetSkillLevels(250, 250, 255, 255, 255)
	recipe:SetRecipeItem(251405, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250553, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(2748, 5709, 5710, 5715, 5719, 5721, 7267, 7271, 7272, 7273, 7275, 7796, 7797, 8127, 8440, 8580, 9018, 9024, 9025, 9056, 9319, 9499, 9502, 9537, 9543, 12201, 12203, 12225, 12236, 12237, 12258, 13282, 13596, 13601)

	-- Prefect's Gloves -- 1252303
	recipe = AddRecipe(1252303, Q.RARE)
	recipe:SetSkillLevels(250, 250, 255, 255, 255)
	recipe:SetRecipeItem(251406, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250554, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7797)

	-- Justicar's Gloves -- 1252304
	recipe = AddRecipe(1252304, Q.RARE)
	recipe:SetSkillLevels(250, 250, 255, 255, 255)
	recipe:SetRecipeItem(251407, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250555, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(9024, 9319, 12203, 13596)

	-- Thorium Poleaxe -- 1252364
	recipe = AddRecipe(1252364, Q.RARE)
	recipe:SetSkillLevels(260, 260, 280, 292, 305)
	recipe:SetRecipeItem(251467, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250615, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_POLEARM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(8893)

	-- Bold Dirk -- 1252365
	recipe = AddRecipe(1252365, Q.RARE)
	recipe:SetSkillLevels(270, 270, 290, 300, 310)
	recipe:SetRecipeItem(251468, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250616, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_DAGGER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(266901)
	recipe:AddQuest(92189)

	-- Stalwart Helm -- 1252348
	recipe = AddRecipe(1252348, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(251451, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250599, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(9583)

	-- Martyr's Legplates -- 1252349
	recipe = AddRecipe(1252349, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(251452, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250600, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(11441)

	-- Breastplate of Salvation -- 1252350
	recipe = AddRecipe(1252350, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(251453, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(250601, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(247248)

	-- Master Forge -- 1263073
	recipe = AddRecipe(1263073, Q.UNCOMMON)
	recipe:SetSkillLevels(300, 300, 300, 300, 300)
	recipe:SetRecipeItem(273113, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(279955, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CREATED_ITEM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(8983)


	-- Classic
	------------------------------------------------------------------------------

	-- Rough Sharpening Stone -- 2660
	recipe = AddRecipe(2660, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 15, 35, 55)
	recipe:SetCraftedItem(2862, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Copper Chain Belt -- 2661
	recipe = AddRecipe(2661, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 70, 90, 110)
	recipe:SetCraftedItem(2851, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Copper Chain Pants -- 2662
	recipe = AddRecipe(2662, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 50, 70, 90)
	recipe:SetCraftedItem(2852, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Copper Bracers -- 2663
	recipe = AddRecipe(2663, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 20, 40, 60)
	recipe:SetCraftedItem(2853, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Runed Copper Bracers -- 2664
	recipe = AddRecipe(2664, Q.COMMON)
	recipe:SetSkillLevels(65, 65, 90, 102, 115)
	recipe:SetCraftedItem(2854, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Coarse Sharpening Stone -- 2665
	recipe = AddRecipe(2665, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 40, 47, 55)
	recipe:SetCraftedItem(2863, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Runed Copper Belt -- 2666
	recipe = AddRecipe(2666, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 85, 105, 125)
	recipe:SetCraftedItem(2857, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Runed Copper Breastplate -- 2667
	recipe = AddRecipe(2667, Q.UNCOMMON)
	recipe:SetSkillLevels(55, 80, 95, 115, 135)
	recipe:SetRecipeItem(2881, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(2864, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Rough Bronze Leggings -- 2668
	recipe = AddRecipe(2668, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 120, 135, 150)
	recipe:SetCraftedItem(2865, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Rough Bronze Cuirass -- 2670
	recipe = AddRecipe(2670, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 120, 135, 150)
	recipe:SetCraftedItem(2866, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Patterned Bronze Bracers -- 2672
	recipe = AddRecipe(2672, Q.COMMON)
	recipe:SetSkillLevels(95, 95, 125, 140, 155)
	recipe:SetCraftedItem(2868, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Silvered Bronze Breastplate -- 2673
	recipe = AddRecipe(2673, Q.UNCOMMON)
	recipe:SetSkillLevels(105, 130, 135, 150, 165)
	recipe:SetRecipeItem(5578, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(2869, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Heavy Sharpening Stone -- 2674
	recipe = AddRecipe(2674, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 100, 107, 115)
	recipe:SetCraftedItem(2871, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Shining Silver Breastplate -- 2675
	recipe = AddRecipe(2675, Q.COMMON)
	recipe:SetSkillLevels(120, 120, 150, 165, 180)
	recipe:SetCraftedItem(2870, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Copper Mace -- 2737
	recipe = AddRecipe(2737, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 55, 75, 95)
	recipe:SetCraftedItem(2844, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Copper Axe -- 2738
	recipe = AddRecipe(2738, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 60, 80, 100)
	recipe:SetCraftedItem(2845, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Copper Shortsword -- 2739
	recipe = AddRecipe(2739, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 65, 85, 105)
	recipe:SetCraftedItem(2847, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Bronze Mace -- 2740
	recipe = AddRecipe(2740, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 115, 130, 145)
	recipe:SetCraftedItem(2848, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Bronze Axe -- 2741
	recipe = AddRecipe(2741, Q.COMMON)
	recipe:SetSkillLevels(90, 90, 120, 135, 150)
	recipe:SetCraftedItem(2849, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Bronze Shortsword -- 2742
	recipe = AddRecipe(2742, Q.COMMON)
	recipe:SetSkillLevels(95, 95, 125, 140, 155)
	recipe:SetCraftedItem(2850, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Rough Weightstone -- 3115
	recipe = AddRecipe(3115, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 15, 35, 55)
	recipe:SetCraftedItem(3239, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Coarse Weightstone -- 3116
	recipe = AddRecipe(3116, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 40, 47, 55)
	recipe:SetCraftedItem(3240, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Heavy Weightstone -- 3117
	recipe = AddRecipe(3117, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 100, 107, 115)
	recipe:SetCraftedItem(3241, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Heavy Copper Broadsword -- 3292
	recipe = AddRecipe(3292, Q.COMMON)
	recipe:SetSkillLevels(70, 70, 110, 130, 150)
	recipe:SetCraftedItem(3487, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Copper Battle Axe -- 3293
	recipe = AddRecipe(3293, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 70, 90, 110)
	recipe:SetCraftedItem(3488, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Thick War Axe -- 3294
	recipe = AddRecipe(3294, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 85, 105, 125)
	recipe:SetCraftedItem(3489, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Deadly Bronze Poniard -- 3295
	recipe = AddRecipe(3295, Q.UNCOMMON)
	recipe:SetSkillLevels(100, 125, 130, 145, 160)
	recipe:SetRecipeItem(2883, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3490, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_DAGGER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Heavy Bronze Mace -- 3296
	recipe = AddRecipe(3296, Q.COMMON)
	recipe:SetSkillLevels(105, 105, 135, 150, 165)
	recipe:SetCraftedItem(3491, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Mighty Iron Hammer -- 3297
	recipe = AddRecipe(3297, Q.UNCOMMON)
	recipe:SetSkillLevels(120, 145, 150, 165, 180)
	recipe:SetRecipeItem(3608, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3492, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Copper Chain Boots -- 3319
	recipe = AddRecipe(3319, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 60, 80, 100)
	recipe:SetCraftedItem(3469, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Rough Grinding Stone -- 3320
	recipe = AddRecipe(3320, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 45, 65, 85)
	recipe:SetCraftedItem(3470, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Copper Chain Vest -- 3321
	recipe = AddRecipe(3321, Q.UNCOMMON)
	recipe:SetSkillLevels(30, 30, 70, 90, 110)
	recipe:SetRecipeItem(3609, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3471, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddQuest(1578)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Runed Copper Gauntlets -- 3323
	recipe = AddRecipe(3323, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 75, 95, 115)
	recipe:SetCraftedItem(3472, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Runed Copper Pants -- 3324
	recipe = AddRecipe(3324, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 75, 95, 115)
	recipe:SetCraftedItem(3473, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Gemmed Copper Gauntlets -- 3325
	recipe = AddRecipe(3325, Q.UNCOMMON)
	recipe:SetSkillLevels(35, 35, 75, 95, 115)
	recipe:SetRecipeItem(3610, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3474, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.RUINS_OF_LORDAERON, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Coarse Grinding Stone -- 3326
	recipe = AddRecipe(3326, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 50, 70, 90)
	recipe:SetCraftedItem(3478, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Rough Bronze Shoulders -- 3328
	recipe = AddRecipe(3328, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 115, 130, 145)
	recipe:SetCraftedItem(3480, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Silvered Bronze Shoulders -- 3330
	recipe = AddRecipe(3330, Q.UNCOMMON)
	recipe:SetSkillLevels(100, 125, 130, 145, 160)
	recipe:SetRecipeItem(2882, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3481, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Silvered Bronze Boots -- 3331
	recipe = AddRecipe(3331, Q.COMMON)
	recipe:SetSkillLevels(105, 105, 135, 150, 165)
	recipe:SetCraftedItem(3482, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Silvered Bronze Gauntlets -- 3333
	recipe = AddRecipe(3333, Q.COMMON)
	recipe:SetSkillLevels(110, 110, 140, 155, 170)
	recipe:SetCraftedItem(3483, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Green Iron Boots -- 3334
	recipe = AddRecipe(3334, Q.UNCOMMON)
	recipe:SetSkillLevels(120, 145, 150, 165, 180)
	recipe:SetRecipeItem(3611, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3484, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Green Iron Gauntlets -- 3336
	recipe = AddRecipe(3336, Q.UNCOMMON)
	recipe:SetSkillLevels(125, 150, 155, 170, 185)
	recipe:SetRecipeItem(3612, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3485, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.ULDAMAN, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Heavy Grinding Stone -- 3337
	recipe = AddRecipe(3337, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 100, 112, 125)
	recipe:SetCraftedItem(3486, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Big Bronze Knife -- 3491
	recipe = AddRecipe(3491, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 110, 125, 140)
	recipe:SetCraftedItem(3848, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_DAGGER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Hardened Iron Shortsword -- 3492
	recipe = AddRecipe(3492, Q.COMMON)
	recipe:SetSkillLevels(135, 160, 160, 172, 185)
	recipe:SetRecipeItem(12162, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3849, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddLimitedVendor(2843, 1, 3356, 1, 5512, 1)

	-- Jade Serpentblade -- 3493
	recipe = AddRecipe(3493, Q.UNCOMMON)
	recipe:SetSkillLevels(150, 175, 175, 187, 200)
	recipe:SetRecipeItem(3866, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3850, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_STOCKADE, Z.ULDAMAN, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Solid Iron Maul -- 3494
	recipe = AddRecipe(3494, Q.COMMON)
	recipe:SetSkillLevels(130, 155, 155, 167, 180)
	recipe:SetRecipeItem(10858, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(3851, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddLimitedVendor(1471, 1, 8878, 1, 9179, 1)

	-- Golden Iron Destroyer -- 3495
	recipe = AddRecipe(3495, Q.UNCOMMON)
	recipe:SetSkillLevels(145, 170, 170, 182, 195)
	recipe:SetRecipeItem(3867, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3852, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_STOCKADE, Z.ULDAMAN, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Moonsteel Broadsword -- 3496
	recipe = AddRecipe(3496, Q.COMMON)
	recipe:SetSkillLevels(155, 180, 180, 192, 205)
	recipe:SetRecipeItem(12163, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(3853, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddLimitedVendor(2482, 1)

	-- Frost Tiger Blade -- 3497
	recipe = AddRecipe(3497, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 200, 200, 212, 225)
	recipe:SetRecipeItem(3868, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3854, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Massive Iron Axe -- 3498
	recipe = AddRecipe(3498, Q.COMMON)
	recipe:SetSkillLevels(160, 185, 185, 197, 210)
	recipe:SetRecipeItem(12164, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(3855, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddLimitedVendor(1146, 1, 2483, 1)

	-- Shadow Crescent Axe -- 3500
	recipe = AddRecipe(3500, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 200, 200, 212, 225)
	recipe:SetRecipeItem(3869, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3856, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Green Iron Bracers -- 3501
	recipe = AddRecipe(3501, Q.COMMON)
	recipe:SetSkillLevels(140, 140, 165, 177, 190)
	recipe:SetCraftedItem(3835, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Green Iron Helm -- 3502
	recipe = AddRecipe(3502, Q.COMMON)
	recipe:SetSkillLevels(145, 145, 170, 182, 195)
	recipe:SetCraftedItem(3836, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Golden Scale Coif -- 3503
	recipe = AddRecipe(3503, Q.COMMON)
	recipe:SetSkillLevels(165, 190, 190, 202, 215)
	recipe:SetRecipeItem(6047, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(3837, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddLimitedVendor(5411, 1)

	-- Green Iron Shoulders -- 3504
	recipe = AddRecipe(3504, Q.UNCOMMON)
	recipe:SetSkillLevels(135, 160, 160, 172, 185)
	recipe:SetRecipeItem(3870, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3840, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_STOCKADE, Z.ULDAMAN, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Golden Scale Shoulders -- 3505
	recipe = AddRecipe(3505, Q.RARE)
	recipe:SetSkillLevels(150, 175, 175, 187, 200)
	recipe:SetRecipeItem(3871, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3841, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Green Iron Leggings -- 3506
	recipe = AddRecipe(3506, Q.COMMON)
	recipe:SetSkillLevels(130, 130, 155, 167, 180)
	recipe:SetCraftedItem(3842, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836, 3355, 4258, 28694)
	-- Golden Scale Leggings -- 3507
	recipe = AddRecipe(3507, Q.UNCOMMON)
	recipe:SetSkillLevels(145, 170, 170, 182, 195)
	recipe:SetRecipeItem(3872, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3843, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_STOCKADE, Z.ULDAMAN, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Green Iron Hauberk -- 3508
	recipe = AddRecipe(3508, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 180, 192, 205)
	recipe:SetCraftedItem(3844, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Golden Scale Cuirass -- 3511
	recipe = AddRecipe(3511, Q.UNCOMMON)
	recipe:SetSkillLevels(170, 195, 195, 207, 220)
	recipe:SetRecipeItem(3873, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3845, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Polished Steel Boots -- 3513
	recipe = AddRecipe(3513, Q.UNCOMMON)
	recipe:SetSkillLevels(160, 185, 185, 197, 210)
	recipe:SetRecipeItem(3874, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3846, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Golden Scale Boots -- 3515
	recipe = AddRecipe(3515, Q.RARE)
	recipe:SetSkillLevels(175, 200, 200, 212, 225)
	recipe:SetRecipeItem(3875, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(3847, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.ALTERAC_MOUNTAINS, Z.BADLANDS, Z.GNOMEREGAN, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Pearl-handled Dagger -- 6517
	recipe = AddRecipe(6517, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 115, 130, 145)
	recipe:SetCraftedItem(5540, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_DAGGER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Iridescent Hammer -- 6518
	recipe = AddRecipe(6518, Q.UNCOMMON)
	recipe:SetSkillLevels(115, 140, 145, 160, 175)
	recipe:SetRecipeItem(5543, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(5541, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Iron Shield Spike -- 7221
	recipe = AddRecipe(7221, Q.UNCOMMON)
	recipe:SetSkillLevels(125, 150, 155, 170, 185)
	recipe:SetRecipeItem(6044, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(6042, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Iron Counterweight -- 7222
	recipe = AddRecipe(7222, Q.UNCOMMON)
	recipe:SetSkillLevels(140, 165, 165, 177, 190)
	recipe:SetRecipeItem(6045, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(6043, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_STOCKADE, Z.ULDAMAN, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Golden Scale Bracers -- 7223
	recipe = AddRecipe(7223, Q.COMMON)
	recipe:SetSkillLevels(160, 160, 185, 197, 210)
	recipe:SetCraftedItem(6040, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(2836, 3355, 4258, 28694)
	-- Steel Weapon Chain -- 7224
	recipe = AddRecipe(7224, Q.UNCOMMON)
	recipe:SetSkillLevels(165, 190, 190, 202, 215)
	recipe:SetRecipeItem(6046, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(6041, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.BADLANDS, Z.DUSTWALLOW_MARSH, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.ULDAMAN)

	-- Heavy Copper Maul -- 7408
	recipe = AddRecipe(7408, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 80, 100, 120)
	recipe:SetCraftedItem(6214, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 5513, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Rough Bronze Boots -- 7817
	recipe = AddRecipe(7817, Q.COMMON)
	recipe:SetSkillLevels(70, 70, 100, 115, 130)
	recipe:SetCraftedItem(6350, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Ironforge Breastplate -- 8367
	recipe = AddRecipe(8367, Q.UNCOMMON)
	recipe:SetSkillLevels(100, 100, 115, 135, 155)
	recipe:SetRecipeItem(6735, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(6731, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.DPS)
	recipe:AddQuest(1618)

	-- Iron Buckle -- 8768
	recipe = AddRecipe(8768, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 125, 127, 130)
	recipe:SetCraftedItem(7071, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Copper Dagger -- 8880
	recipe = AddRecipe(8880, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 65, 85, 105)
	recipe:SetCraftedItem(7166, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_DAGGER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Barbaric Iron Shoulders -- 9811
	recipe = AddRecipe(9811, Q.UNCOMMON)
	recipe:SetSkillLevels(135, 160, 160, 172, 185)
	recipe:SetRecipeItem(7978, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7913, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddQuest(2752)

	-- Barbaric Iron Breastplate -- 9813
	recipe = AddRecipe(9813, Q.UNCOMMON)
	recipe:SetSkillLevels(135, 160, 160, 172, 185)
	recipe:SetRecipeItem(7979, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7914, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.HORDE, F.DPS)
	recipe:AddQuest(2751)

	-- Barbaric Iron Helm -- 9814
	recipe = AddRecipe(9814, Q.UNCOMMON)
	recipe:SetSkillLevels(150, 175, 175, 187, 200)
	recipe:SetRecipeItem(7980, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7915, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddQuest(2754)

	-- Barbaric Iron Boots -- 9818
	recipe = AddRecipe(9818, Q.UNCOMMON)
	recipe:SetSkillLevels(155, 180, 180, 192, 205)
	recipe:SetRecipeItem(7981, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7916, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddQuest(2753)

	-- Barbaric Iron Gloves -- 9820
	recipe = AddRecipe(9820, Q.UNCOMMON)
	recipe:SetSkillLevels(160, 185, 185, 197, 210)
	recipe:SetRecipeItem(7982, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7917, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.HORDE, F.DPS)
	recipe:AddQuest(2755)

	-- Steel Breastplate -- 9916
	recipe = AddRecipe(9916, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 200, 212, 225)
	recipe:SetCraftedItem(7963, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Solid Sharpening Stone -- 9918
	recipe = AddRecipe(9918, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 175, 180, 185)
	recipe:SetCraftedItem(7964, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Solid Grinding Stone -- 9920
	recipe = AddRecipe(9920, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 175, 180, 185)
	recipe:SetCraftedItem(7966, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Solid Weightstone -- 9921
	recipe = AddRecipe(9921, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 175, 180, 185)
	recipe:SetCraftedItem(7965, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Heavy Mithril Shoulder -- 9926
	recipe = AddRecipe(9926, Q.COMMON)
	recipe:SetSkillLevels(180, 180, 200, 210, 220)
	recipe:SetCraftedItem(7918, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Heavy Mithril Gauntlet -- 9928
	recipe = AddRecipe(9928, Q.COMMON)
	recipe:SetSkillLevels(180, 180, 200, 210, 220)
	recipe:SetCraftedItem(7919, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Mithril Scale Pants -- 9931
	recipe = AddRecipe(9931, Q.COMMON)
	recipe:SetSkillLevels(185, 185, 205, 215, 225)
	recipe:SetCraftedItem(7920, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Heavy Mithril Pants -- 9933
	recipe = AddRecipe(9933, Q.UNCOMMON)
	recipe:SetSkillLevels(185, 185, 210, 215, 225)
	recipe:SetRecipeItem(7975, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7921, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Steel Plate Helm -- 9935
	recipe = AddRecipe(9935, Q.COMMON)
	recipe:SetSkillLevels(190, 190, 210, 220, 230)
	recipe:SetCraftedItem(7922, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Mithril Scale Bracers -- 9937
	recipe = AddRecipe(9937, Q.COMMON)
	recipe:SetSkillLevels(190, 190, 215, 220, 230)
	recipe:SetRecipeItem(7995, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(7924, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddLimitedVendor(8161, 1, 8176, 1)

	-- Mithril Shield Spike -- 9939
	recipe = AddRecipe(9939, Q.RARE)
	recipe:SetSkillLevels(190, 190, 215, 220, 230)
	recipe:SetRecipeItem(7976, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7967, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKWING_LAIR, Z.GNOMEREGAN, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.STORM_CLIFFS, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Ornate Mithril Pants -- 9945
	recipe = AddRecipe(9945, Q.UNCOMMON)
	recipe:SetSkillLevels(195, 195, 215, 225, 235)
	recipe:SetRecipeItem(7983, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(7926, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddQuest(2761)


	-- Ornate Mithril Gloves -- 9950
	recipe = AddRecipe(9950, Q.UNCOMMON)
	recipe:SetSkillLevels(195, 195, 220, 225, 235)
	recipe:SetRecipeItem(7984, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(7927, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddQuest(2762)


	-- Ornate Mithril Shoulder -- 9952
	recipe = AddRecipe(9952, Q.UNCOMMON)
	recipe:SetSkillLevels(200, 200, 225, 230, 240)
	recipe:SetRecipeItem(7985, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(7928, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddQuest(2763)


	-- Truesilver Gauntlets -- 9954
	recipe = AddRecipe(9954, Q.COMMON)
	recipe:SetSkillLevels(200, 200, 220, 230, 240)
	recipe:SetCraftedItem(7938, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(5164, 7230, 11177)


	-- Orcish War Leggings -- 9957
	recipe = AddRecipe(9957, Q.COMMON)
	recipe:SetSkillLevels(230, 230, 230, 235, 245)
	recipe:SetRecipeItem(7994, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(7929, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.HORDE, F.DPS)
	recipe:AddQuest(2756)

	-- Heavy Mithril Breastplate -- 9959
	recipe = AddRecipe(9959, Q.COMMON)
	recipe:SetSkillLevels(205, 205, 225, 235, 245)
	recipe:SetCraftedItem(7930, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(2836, 3355, 4258)

	-- Mithril Coif -- 9961
	recipe = AddRecipe(9961, Q.COMMON)
	recipe:SetSkillLevels(205, 205, 225, 235, 245)
	recipe:SetCraftedItem(7931, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836)

	-- Mithril Spurs -- 9964
	recipe = AddRecipe(9964, Q.UNCOMMON)
	recipe:SetSkillLevels(210, 210, 235, 240, 250)
	recipe:SetRecipeItem(7989, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7969, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.DIRE_MAUL, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_MONASTERY, Z.STRATHOLME, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Mithril Scale Shoulders -- 9966
	recipe = AddRecipe(9966, Q.RARE)
	recipe:SetSkillLevels(210, 210, 235, 240, 250)
	recipe:SetRecipeItem(7991, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7932, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.STORM_CLIFFS, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Heavy Mithril Boots -- 9968
	recipe = AddRecipe(9968, Q.COMMON)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetCraftedItem(7933, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836)

	-- Heavy Mithril Helm -- 9970
	recipe = AddRecipe(9970, Q.UNCOMMON)
	recipe:SetSkillLevels(220, 220, 220, 245, 250) -- need updating
	recipe:SetRecipeItem(7990, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7934, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.DIRE_MAUL, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_MONASTERY, Z.STRATHOLME, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Ornate Mithril Breastplate -- 9972
	recipe = AddRecipe(9972, Q.UNCOMMON)
	recipe:SetSkillLevels(240, 240, 240, 245, 255)
	recipe:SetCraftedItem(7935, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER, F.TANK)
	recipe:AddQuest(2773)


	-- Truesilver Breastplate -- 9974
	recipe = AddRecipe(9974, Q.COMMON)
	recipe:SetSkillLevels(220, 220, 240, 250, 260)
	recipe:SetCraftedItem(7939, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(5164, 7230, 11177)


	-- Ornate Mithril Boots -- 9979
	recipe = AddRecipe(9979, Q.UNCOMMON)
	recipe:SetSkillLevels(245, 245, 245, 250, 260)
	recipe:SetCraftedItem(7936, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
	recipe:AddQuest(2772)


	-- Ornate Mithril Helm -- 9980
	recipe = AddRecipe(9980, Q.UNCOMMON)
	recipe:SetSkillLevels(245, 245, 245, 250, 260)
	recipe:SetCraftedItem(7937, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddQuest(2771)


	-- Copper Claymore -- 9983
	recipe = AddRecipe(9983, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 65, 85, 105)
	recipe:SetCraftedItem(7955, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(514, 957, 1241, 1383, 2836, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 6299, 10266, 10276, 10277, 10278, 28694, 251913, 252479, 256658, 259250, 276067)

	-- Bronze Warhammer -- 9985
	recipe = AddRecipe(9985, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 155, 170, 185)
	recipe:SetCraftedItem(7956, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Bronze Greatsword -- 9986
	recipe = AddRecipe(9986, Q.COMMON)
	recipe:SetSkillLevels(105, 105, 135, 150, 165)
	recipe:SetCraftedItem(7957, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Bronze Battle Axe -- 9987
	recipe = AddRecipe(9987, Q.COMMON)
	recipe:SetSkillLevels(110, 110, 140, 155, 170)
	recipe:SetCraftedItem(7958, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Heavy Mithril Axe -- 9993
	recipe = AddRecipe(9993, Q.COMMON)
	recipe:SetSkillLevels(185, 185, 210, 222, 235)
	recipe:SetCraftedItem(7941, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Blue Glittering Axe -- 9995
	recipe = AddRecipe(9995, Q.UNCOMMON)
	recipe:SetSkillLevels(195, 220, 220, 232, 245)
	recipe:SetRecipeItem(7992, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7942, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Wicked Mithril Blade -- 9997
	recipe = AddRecipe(9997, Q.UNCOMMON)
	recipe:SetSkillLevels(200, 225, 225, 237, 250)
	recipe:SetRecipeItem(8029, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(7943, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Big Black Mace -- 10001
	recipe = AddRecipe(10001, Q.COMMON)
	recipe:SetSkillLevels(205, 205, 230, 242, 255)
	recipe:SetCraftedItem(7945, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836, 3355, 4258)

	-- The Shatterer -- 10003
	recipe = AddRecipe(10003, Q.COMMON)
	recipe:SetSkillLevels(210, 210, 235, 247, 260)
	recipe:SetCraftedItem(7954, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(7231, 7232, 11146, 11178)


	-- Dazzling Mithril Rapier -- 10005
	recipe = AddRecipe(10005, Q.UNCOMMON)
	recipe:SetSkillLevels(215, 240, 240, 252, 265)
	recipe:SetRecipeItem(7993, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7944, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.DIRE_MAUL, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Phantom Blade -- 10007
	recipe = AddRecipe(10007, Q.RARE)
	recipe:SetSkillLevels(220, 220, 245, 257, 270)
	recipe:SetRecipeItem(74274, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(7961, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(7231, 7232, 11146, 11178)
	recipe:AddWorldDrop(Z.STRATHOLME)

	-- Runed Mithril Hammer -- 10009
	recipe = AddRecipe(10009, Q.RARE)
	recipe:SetSkillLevels(220, 245, 245, 257, 270)
	recipe:SetRecipeItem(8028, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7946, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Blight -- 10011
	recipe = AddRecipe(10011, Q.RARE)
	recipe:SetSkillLevels(225, 225, 250, 262, 275)
	recipe:SetRecipeItem(142337, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7959, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_POLEARM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(7231, 7232, 11146, 11178)
	recipe:AddWorldDrop(Z.STRATHOLME)

	-- Ebon Shiv -- 10013
	recipe = AddRecipe(10013, Q.COMMON)
	recipe:SetSkillLevels(230, 255, 255, 267, 280)
	recipe:SetRecipeItem(8030, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(7947, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_DAGGER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddVendor(11278)

	-- Truesilver Champion -- 10015
	recipe = AddRecipe(10015, Q.COMMON)
	recipe:SetSkillLevels(235, 235, 260, 272, 285)
	recipe:SetCraftedItem(7960, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(7231, 7232, 11146, 11178)


	-- Inlaid Mithril Cylinder -- 11454
	recipe = AddRecipe(11454, Q.COMMON)
	recipe:SetSkillLevels(200, 200, 200, 212, 225)
	recipe:SetRecipeItem(10713, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(9060, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddCustom("CRAFTED_ENGINEERS")

	-- Golden Scale Gauntlets -- 11643
	recipe = AddRecipe(11643, Q.UNCOMMON)
	recipe:SetSkillLevels(180, 180, 205, 210, 220)
	recipe:SetRecipeItem(9367, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(9366, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.DPS)
	recipe:AddQuest(2758)


	-- Silvered Bronze Leggings -- 12259
	recipe = AddRecipe(12259, Q.UNCOMMON)
	recipe:SetSkillLevels(130, 155, 155, 167, 180)
	recipe:SetRecipeItem(10424, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(10423, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.ULDAMAN, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Rough Copper Vest -- 12260
	recipe = AddRecipe(12260, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 15, 35, 55)
	recipe:SetCraftedItem(10421, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Dark Iron Pulverizer -- 15292
	recipe = AddRecipe(15292, Q.RARE)
	recipe:SetSkillLevels(240, 240, 265, 270, 280)
	recipe:SetRecipeItem(11610, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(11608, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(9028)

	-- Dark Iron Mail -- 15293
	recipe = AddRecipe(15293, Q.UNCOMMON)
	recipe:SetSkillLevels(245, 245, 270, 275, 285)
	recipe:SetRecipeItem(11614, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(11606, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddCustom("BRD_MAIL")
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS)

	-- Dark Iron Sunderer -- 15294
	recipe = AddRecipe(15294, Q.RARE)
	recipe:SetSkillLevels(250, 250, 275, 280, 290)
	recipe:SetRecipeItem(11611, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(11607, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
	recipe:AddMobDrop(9554, 10043)

	-- Dark Iron Shoulders -- 15295
	recipe = AddRecipe(15295, Q.UNCOMMON)
	recipe:SetSkillLevels(255, 255, 280, 285, 295)
	recipe:SetRecipeItem(11615, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(11605, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddCustom("BRD_SHOULDERS")
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS)

	-- Dark Iron Plate -- 15296
	recipe = AddRecipe(15296, Q.RARE)
	recipe:SetSkillLevels(260, 260, 285, 290, 300)
	recipe:SetRecipeItem(11612, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(11604, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(9543)

	-- Glinting Steel Dagger -- 15972
	recipe = AddRecipe(15972, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 180, 192, 205)
	recipe:SetCraftedItem(12259, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_DAGGER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Searing Golden Blade -- 15973
	recipe = AddRecipe(15973, Q.UNCOMMON)
	recipe:SetSkillLevels(165, 190, 190, 202, 215)
	recipe:SetRecipeItem(12261, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12260, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_DAGGER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.DUSTWALLOW_MARSH, Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.STRANGLETHORN_VALE, Z.TANARIS, Z.ULDAMAN, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Dense Grinding Stone -- 16639
	recipe = AddRecipe(16639, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 230, 232, 235)
	recipe:SetCraftedItem(12644, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(2836)

	-- Dense Weightstone -- 16640
	recipe = AddRecipe(16640, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 230, 232, 235)
	recipe:SetCraftedItem(12643, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836)

	-- Dense Sharpening Stone -- 16641
	recipe = AddRecipe(16641, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 230, 232, 235)
	recipe:SetCraftedItem(12404, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(2836)

	-- Thorium Armor -- 16642
	recipe = AddRecipe(16642, Q.COMMON)
	recipe:SetRecipeItem(12682, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(225, 225, 250, 255, 265)
	recipe:SetCraftedItem(12405, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Thorium Belt -- 16643
	recipe = AddRecipe(16643, Q.COMMON)
	recipe:SetRecipeItem(12683, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(225, 225, 250, 255, 265)
	recipe:SetCraftedItem(12406, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.RUINS_OF_AHNQIRAJ, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Thorium Bracers -- 16644
	recipe = AddRecipe(16644, Q.COMMON)
	recipe:SetRecipeItem(12684, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(230, 230, 255, 260, 270)
	recipe:SetCraftedItem(12408, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Radiant Belt -- 16645
	recipe = AddRecipe(16645, Q.UNCOMMON)
	recipe:SetSkillLevels(235, 235, 260, 265, 275)
	recipe:SetRecipeItem(12685, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12416, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Imperial Plate Shoulders -- 16646
	recipe = AddRecipe(16646, Q.COMMON)
	recipe:SetRecipeItem(12687, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(240, 240, 265, 270, 280)
	recipe:SetCraftedItem(12428, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddQuest(7659)

	-- Imperial Plate Belt -- 16647
	recipe = AddRecipe(16647, Q.COMMON)
	recipe:SetRecipeItem(12688, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(240, 240, 265, 270, 280)
	recipe:SetCraftedItem(12424, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddQuest(7653)

	-- Radiant Breastplate -- 16648
	recipe = AddRecipe(16648, Q.UNCOMMON)
	recipe:SetSkillLevels(245, 245, 270, 275, 285)
	recipe:SetRecipeItem(12689, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12415, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.RUINS_OF_AHNQIRAJ, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Imperial Plate Bracers -- 16649
	recipe = AddRecipe(16649, Q.COMMON)
	recipe:SetRecipeItem(12690, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(245, 245, 270, 275, 285)
	recipe:SetCraftedItem(12425, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddQuest(7655)


	-- Thorium Shield Spike -- 16651
	recipe = AddRecipe(16651, Q.UNCOMMON)
	recipe:SetSkillLevels(250, 250, 275, 280, 290)
	recipe:SetRecipeItem(12692, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12645, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.ULDAMAN, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Thorium Boots -- 16652
	recipe = AddRecipe(16652, Q.COMMON)
	recipe:SetRecipeItem(12693, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(255, 255, 280, 285, 295)
	recipe:SetCraftedItem(12409, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Thorium Helm -- 16653
	recipe = AddRecipe(16653, Q.COMMON)
	recipe:SetRecipeItem(12694, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(255, 255, 280, 285, 295)
	recipe:SetCraftedItem(12410, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Radiant Gloves -- 16654
	recipe = AddRecipe(16654, Q.UNCOMMON)
	recipe:SetSkillLevels(260, 260, 285, 290, 300)
	recipe:SetRecipeItem(12695, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12418, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Fiery Plate Gauntlets -- 16655
	recipe = AddRecipe(16655, Q.RARE)
	recipe:SetSkillLevels(265, 265, 290, 295, 305)
	recipe:SetRecipeItem(12699, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12631, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddQuest(5124)


	-- Radiant Boots -- 16656
	recipe = AddRecipe(16656, Q.UNCOMMON)
	recipe:SetSkillLevels(265, 265, 290, 295, 305)
	recipe:SetRecipeItem(12697, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12419, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Imperial Plate Boots -- 16657
	recipe = AddRecipe(16657, Q.COMMON)
	recipe:SetRecipeItem(12700, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(270, 270, 295, 300, 310)
	recipe:SetCraftedItem(12426, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddQuest(7654)

	-- Imperial Plate Helm -- 16658
	recipe = AddRecipe(16658, Q.COMMON)
	recipe:SetRecipeItem(12701, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(270, 270, 295, 300, 310)
	recipe:SetCraftedItem(12427, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddQuest(7657)

	-- Radiant Circlet -- 16659
	recipe = AddRecipe(16659, Q.UNCOMMON)
	recipe:SetSkillLevels(270, 270, 295, 300, 310)
	recipe:SetRecipeItem(12702, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12417, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MOLTEN_CORE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Dawnbringer Shoulders -- 16660
	recipe = AddRecipe(16660, Q.RARE)
	recipe:SetSkillLevels(265, 265, 290, 295, 305)
	recipe:SetRecipeItem(12698, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12625, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
	recipe:AddRepVendor(FAC.ARGENT_DAWN, REP.REVERED, 10856, 10857, 11536)


	-- Thorium Leggings -- 16662
	recipe = AddRecipe(16662, Q.COMMON)
	recipe:SetRecipeItem(12704, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(275, 275, 300, 305, 315)
	recipe:SetCraftedItem(12414, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Imperial Plate Chest -- 16663
	recipe = AddRecipe(16663, Q.COMMON)
	recipe:SetRecipeItem(12705, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(275, 275, 300, 305, 315)
	recipe:SetCraftedItem(12422, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddQuest(7656)

	-- Runic Plate Shoulders -- 16664
	recipe = AddRecipe(16664, Q.UNCOMMON)
	recipe:SetSkillLevels(275, 275, 300, 305, 315)
	recipe:SetRecipeItem(12706, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12610, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(4366)

	-- Runic Plate Boots -- 16665
	recipe = AddRecipe(16665, Q.COMMON)
	recipe:SetSkillLevels(275, 275, 300, 305, 315)
	recipe:SetRecipeItem(12707, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12611, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(1836)

	-- Demon Forged Breastplate -- 16667
	recipe = AddRecipe(16667, Q.RARE)
	recipe:SetSkillLevels(260, 260, 285, 290, 300)
	recipe:SetRecipeItem(12696, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12628, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddQuest(5127)


	-- Whitesoul Helm -- 16724
	recipe = AddRecipe(16724, Q.RARE)
	recipe:SetSkillLevels(290, 300, 310, 320, 330)
	recipe:SetRecipeItem(12711, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12633, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Radiant Leggings -- 16725
	recipe = AddRecipe(16725, Q.UNCOMMON)
	recipe:SetSkillLevels(280, 300, 300, 310, 320)
	recipe:SetRecipeItem(12713, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12420, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Runic Plate Helm -- 16726
	recipe = AddRecipe(16726, Q.UNCOMMON)
	recipe:SetSkillLevels(280, 300, 300, 310, 320)
	recipe:SetRecipeItem(12714, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12612, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(4364)


	-- Lionheart Helm -- 16729
	recipe = AddRecipe(16729, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(12717, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12640, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.KARAZHAN_CRYPTS, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Imperial Plate Leggings -- 16730
	recipe = AddRecipe(16730, Q.COMMON)
	recipe:SetRecipeItem(12715, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(280, 300, 300, 310, 320)
	recipe:SetCraftedItem(12429, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddQuest(7658)

	-- Runic Breastplate -- 16731
	recipe = AddRecipe(16731, Q.UNCOMMON)
	recipe:SetSkillLevels(285, 300, 305, 315, 325)
	recipe:SetRecipeItem(12718, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12613, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(4368, 16072)


	-- Runic Plate Leggings -- 16732
	recipe = AddRecipe(16732, Q.COMMON)
	recipe:SetSkillLevels(285, 300, 305, 315, 325)
	recipe:SetRecipeItem(12719, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12614, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(1885, 240792)

	-- Stronghold Gauntlets -- 16741
	recipe = AddRecipe(16741, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(12720, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12639, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER, F.TANK)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKWING_LAIR, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.STORM_CLIFFS, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Enchanted Thorium Helm -- 16742
	recipe = AddRecipe(16742, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(12725, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12620, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddQuest(7651)


	-- Enchanted Thorium Leggings -- 16744
	recipe = AddRecipe(16744, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(12726, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12619, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddQuest(7650)


	-- Enchanted Thorium Breastplate -- 16745
	recipe = AddRecipe(16745, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(12727, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12618, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddQuest(7649)



	-- Ornate Thorium Handaxe -- 16969
	recipe = AddRecipe(16969, Q.UNCOMMON)
	recipe:SetSkillLevels(250, 275, 275, 287, 300)
	recipe:SetRecipeItem(12819, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12773, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddVendor(11278)

	-- Dawn's Edge -- 16970
	recipe = AddRecipe(16970, Q.RARE)
	recipe:SetSkillLevels(250, 275, 275, 287, 300)
	recipe:SetRecipeItem(12821, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12774, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddQuest(5306)

	-- Huge Thorium Battleaxe -- 16971
	recipe = AddRecipe(16971, Q.COMMON)
	recipe:SetSkillLevels(255, 280, 280, 292, 305)
	recipe:SetRecipeItem(12823, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12775, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(11278)

	-- Enchanted Battlehammer -- 16973
	recipe = AddRecipe(16973, Q.UNCOMMON)
	recipe:SetSkillLevels(255, 280, 280, 292, 305)
	recipe:SetRecipeItem(12824, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12776, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER, F.TANK)
	recipe:AddQuest(5305, 8869)


	-- Blazing Rapier -- 16978
	recipe = AddRecipe(16978, Q.UNCOMMON)
	recipe:SetSkillLevels(255, 280, 280, 292, 305)
	recipe:SetRecipeItem(12825, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12777, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddQuest(5307)

	-- Serenity -- 16983
	recipe = AddRecipe(16983, Q.UNCOMMON)
	recipe:SetSkillLevels(260, 285, 285, 297, 310)
	recipe:SetRecipeItem(12827, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12781, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddCustom("STRATH_BS_PLANS")
	recipe:AddWorldDrop(Z.STRATHOLME)

	-- Volcanic Hammer -- 16984
	recipe = AddRecipe(16984, Q.UNCOMMON)
	recipe:SetSkillLevels(265, 290, 290, 302, 315)
	recipe:SetRecipeItem(12828, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12792, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(10119)

	-- Corruption -- 16985
	recipe = AddRecipe(16985, Q.COMMON)
	recipe:SetSkillLevels(265, 290, 290, 302, 315)
	recipe:SetRecipeItem(12830, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12782, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddCustom("STRATH_BS_PLANS")
	recipe:AddWorldDrop(Z.STRATHOLME)

	-- Hammer of the Titans -- 16988
	recipe = AddRecipe(16988, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(12833, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12796, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(10438)

	-- Arcanite Champion -- 16990
	recipe = AddRecipe(16990, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(12834, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12790, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(10899)

	-- Annihilator -- 16991
	recipe = AddRecipe(16991, Q.RARE)
	recipe:SetSkillLevels(300, 300, 300, 305, 315)
	recipe:SetRecipeItem(12835, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12798, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
	recipe:AddMobDrop(9736)

	-- Frostguard -- 16992
	recipe = AddRecipe(16992, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(12836, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12797, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(1844)

	-- Masterwork Stormhammer -- 16993
	recipe = AddRecipe(16993, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(12837, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12794, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(10899)


	-- Arcanite Reaper -- 16994
	recipe = AddRecipe(16994, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(12838, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12784, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(9596)

	-- Heartseeker -- 16995
	recipe = AddRecipe(16995, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(12839, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12783, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_DAGGER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddMobDrop(10997)

	-- Silver Skeleton Key -- 19666
	recipe = AddRecipe(19666, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 75, 85, 95)
	recipe:SetCraftedItem(15869, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SKELETON_KEY")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Golden Skeleton Key -- 19667
	recipe = AddRecipe(19667, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 125, 135, 145)
	recipe:SetCraftedItem(15870, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SKELETON_KEY")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1383, 2836, 2998, 3136, 3355, 3478, 4258, 4596, 5511, 10276, 28694, 252479, 276067)

	-- Truesilver Skeleton Key -- 19668
	recipe = AddRecipe(19668, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 175, 185, 195)
	recipe:SetCraftedItem(15871, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SKELETON_KEY")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(2836, 3355, 4258, 28694)

	-- Arcanite Skeleton Key -- 19669
	recipe = AddRecipe(19669, Q.COMMON)
	recipe:SetSkillLevels(250, 250, 250, 255, 260)
	recipe:SetCraftedItem(15872, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SKELETON_KEY")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(2836)

	-- Fiery Chain Girdle -- 20872
	recipe = AddRecipe(20872, Q.RARE)
	recipe:SetSkillLevels(270, 270, 295, 300, 310)
	recipe:SetRecipeItem(17049, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(16989, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.HONORED, 12944)

	-- Fiery Chain Shoulders -- 20873
	recipe = AddRecipe(20873, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(17053, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(16988, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.HEALER)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

	-- Dark Iron Bracers -- 20874
	recipe = AddRecipe(20874, Q.RARE)
	recipe:SetSkillLevels(270, 270, 295, 300, 310)
	recipe:SetRecipeItem(17051, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(17014, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.FRIENDLY, 12944)

	-- Dark Iron Leggings -- 20876
	recipe = AddRecipe(20876, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(17052, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(17013, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

	-- Dark Iron Reaver -- 20890
	recipe = AddRecipe(20890, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(17059, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(17015, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.HONORED, 12944)

	-- Dark Iron Destroyer -- 20897
	recipe = AddRecipe(20897, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(17060, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(17016, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.HONORED, 12944)

	-- Sulfuron Hammer -- 21161
	recipe = AddRecipe(21161, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 325, 337, 350)
	recipe:SetRecipeItem(18592, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(17193, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddQuest(7604)

	-- Edge of Winter -- 21913
	recipe = AddRecipe(21913, Q.UNCOMMON)
	recipe:SetSkillLevels(165, 190, 190, 202, 215)
	recipe:SetRecipeItem(17706, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(17704, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldEvent("WINTER_VEIL")

	-- Elemental Sharpening Stone -- 22757
	recipe = AddRecipe(22757, Q.RARE)
	recipe:SetSkillLevels(300, 300, 300, 300, 300) -- need updating
	recipe:SetRecipeItem(18264, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(18262, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.MOLTEN_CORE, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Girdle of the Dawn -- 23632
	recipe = AddRecipe(23632, Q.COMMON)
	recipe:SetSkillLevels(265, 265, 290, 295, 305)
	recipe:SetRecipeItem(19203, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19051, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddRepVendor(FAC.ARGENT_DAWN, REP.HONORED, 10856, 10857, 11536)

	-- Gloves of the Dawn -- 23633
	recipe = AddRecipe(23633, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19205, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19057, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddRepVendor(FAC.ARGENT_DAWN, REP.REVERED, 10856, 10857, 11536)

	-- Dark Iron Helm -- 23636
	recipe = AddRecipe(23636, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19206, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19148, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.HONORED, 12944)

	-- Dark Iron Gauntlets -- 23637
	recipe = AddRecipe(23637, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19207, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19164, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

	-- Black Amnesty -- 23638
	recipe = AddRecipe(23638, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19208, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19166, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_DAGGER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

	-- Blackfury -- 23639
	recipe = AddRecipe(23639, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19209, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19167, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_POLEARM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

	-- Ebon Hand -- 23650
	recipe = AddRecipe(23650, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 300, 305, 315)
	recipe:SetRecipeItem(19210, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19170, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.EXALTED, 12944)

	-- Blackguard -- 23652
	recipe = AddRecipe(23652, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 300, 305, 315)
	recipe:SetRecipeItem(19211, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19168, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.EXALTED, 12944)

	-- Nightfall -- 23653
	recipe = AddRecipe(23653, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 300, 305, 315)
	recipe:SetRecipeItem(19212, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19169, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_TWO_HAND_AXE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.EXALTED, 12944)

	-- Bloodsoul Breastplate -- 24136
	recipe = AddRecipe(24136, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19776, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19690, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.REVERED, 14921)


	-- Bloodsoul Shoulders -- 24137
	recipe = AddRecipe(24137, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19777, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19691, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.HONORED, 14921)


	-- Bloodsoul Gauntlets -- 24138
	recipe = AddRecipe(24138, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19778, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19692, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.FRIENDLY, 14921)


	-- Darksoul Breastplate -- 24139
	recipe = AddRecipe(24139, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19779, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19693, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER, F.TANK)
	recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.REVERED, 14921)


	-- Darksoul Leggings -- 24140
	recipe = AddRecipe(24140, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19780, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19694, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER, F.TANK)
	recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.HONORED, 14921)


	-- Darksoul Shoulders -- 24141
	recipe = AddRecipe(24141, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19781, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19695, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER, F.TANK)
	recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.FRIENDLY, 14921)


	-- Dark Iron Boots -- 24399
	recipe = AddRecipe(24399, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(20040, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(20039, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.EXALTED, 12944)

	-- Darkrune Gauntlets -- 24912
	recipe = AddRecipe(24912, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(20553, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(20549, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)

	-- Darkrune Helm -- 24913
	recipe = AddRecipe(24913, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(20555, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(20551, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.SILITHUS)

	-- Darkrune Breastplate -- 24914
	recipe = AddRecipe(24914, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(20554, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(20550, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)

	-- Heavy Obsidian Belt -- 27585
	recipe = AddRecipe(27585, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22209, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(22197, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.FRIENDLY, 15176)

	-- Jagged Obsidian Shield -- 27586
	recipe = AddRecipe(27586, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22219, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(22198, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHIELD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.REVERED, 15471)

	-- Thick Obsidian Breastplate -- 27587
	recipe = AddRecipe(27587, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22222, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(22196, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(15263)

	-- Light Obsidian Belt -- 27588
	recipe = AddRecipe(27588, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22214, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(22195, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15176)

	-- Black Grasp of the Destroyer -- 27589
	recipe = AddRecipe(27589, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22220, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(22194, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddMobDrop(15340)

	-- Obsidian Mail Tunic -- 27590
	recipe = AddRecipe(27590, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22221, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(22191, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.EXALTED, 15471)

	-- Titanic Leggings -- 27829
	recipe = AddRecipe(27829, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22388, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(22385, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.KARAZHAN_CRYPTS, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Persuader -- 27830
	recipe = AddRecipe(27830, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22390, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(22384, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_MACE")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.KARAZHAN_CRYPTS, Z.NAXXRAMAS, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.THE_TAINTED_SCAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Sageblade -- 27832
	recipe = AddRecipe(27832, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22389, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(22383, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_ONE_HAND_SWORD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CASTER, F.DPS, F.HEALER)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Icebane Breastplate -- 28242
	recipe = AddRecipe(28242, Q.EPIC)
	recipe:SetRecipeItem(22703, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetCraftedItem(22669, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)


	-- Icebane Gauntlets -- 28243
	recipe = AddRecipe(28243, Q.EPIC)
	recipe:SetRecipeItem(22704, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetCraftedItem(22670, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)


	-- Icebane Bracers -- 28244
	recipe = AddRecipe(28244, Q.EPIC)
	recipe:SetRecipeItem(22705, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetCraftedItem(22671, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)


	-- Ironvine Breastplate -- 28461
	recipe = AddRecipe(28461, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22766, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(22762, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.REVERED, 15176)

	-- Ironvine Gloves -- 28462
	recipe = AddRecipe(28462, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22767, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(22763, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15176)

	-- Ironvine Belt -- 28463
	recipe = AddRecipe(28463, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22768, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(22764, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.FRIENDLY, 15176)

	-- Justice Leggings -- 1292945
	recipe = AddRecipe(1292945, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273976, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273908, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.PALADIN)
	recipe:AddCustom("HYJAL_FRIENDLY_ADVICE")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Justice Gauntlets -- 1292946
	recipe = AddRecipe(1292946, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273977, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273909, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.PALADIN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_GLOVES_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Justice Spaulders -- 1292947
	recipe = AddRecipe(1292947, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273978, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273910, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.PALADIN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_SHOULDERS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Justice Greaves -- 1292948
	recipe = AddRecipe(1292948, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273979, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273911, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.PALADIN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_BOOTS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Justice Legplates -- 1292949
	recipe = AddRecipe(1292949, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273980, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273912, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.PALADIN)
	recipe:AddCustom("HYJAL_FRIENDLY_ADVICE")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Justice Gloves -- 1292950
	recipe = AddRecipe(1292950, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273981, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273913, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.PALADIN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_GLOVES_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Justice Epaulets -- 1292951
	recipe = AddRecipe(1292951, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273982, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273914, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.PALADIN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_SHOULDERS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Justice Treads -- 1292952
	recipe = AddRecipe(1292952, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273983, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273915, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.PALADIN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_BOOTS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Justice Legguards -- 1292953
	recipe = AddRecipe(1292953, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273984, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273916, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.PALADIN)
	recipe:AddCustom("HYJAL_FRIENDLY_ADVICE")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Justice Handguards -- 1292954
	recipe = AddRecipe(1292954, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273985, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273917, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.PALADIN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_GLOVES_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Justice Pauldrons -- 1292955
	recipe = AddRecipe(1292955, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273986, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273918, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.PALADIN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_SHOULDERS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Justice Sabatons -- 1292956
	recipe = AddRecipe(1292956, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273987, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273919, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.PALADIN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_BOOTS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Legplates of Glory -- 1292981
	recipe = AddRecipe(1292981, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274012, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273944, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.WARRIOR)
	recipe:AddCustom("HYJAL_FRIENDLY_ADVICE")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Gauntlets of Glory -- 1292982
	recipe = AddRecipe(1292982, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274013, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273945, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.WARRIOR)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_GLOVES_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Shoulders of Glory -- 1292983
	recipe = AddRecipe(1292983, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274014, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273946, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.WARRIOR)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_SHOULDERS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Greaves of Glory -- 1292984
	recipe = AddRecipe(1292984, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274015, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273947, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.WARRIOR)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_BOOTS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Legguards of Glory -- 1292985
	recipe = AddRecipe(1292985, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274016, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273948, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.WARRIOR)
	recipe:AddCustom("HYJAL_FRIENDLY_ADVICE")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Handguards of Glory -- 1292986
	recipe = AddRecipe(1292986, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274017, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273949, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.WARRIOR)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_GLOVES_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Pauldrons of Glory -- 1292987
	recipe = AddRecipe(1292987, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274018, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273950, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.WARRIOR)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_SHOULDERS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Sabatons of Glory -- 1292988
	recipe = AddRecipe(1292988, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274019, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273951, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("BLACKSMITHING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.WARRIOR)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_BOOTS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	self.InitializeRecipes = nil
end
