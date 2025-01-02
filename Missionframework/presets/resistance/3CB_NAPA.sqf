/*
    Needed Mods:
    - CUP Weapons
    - CUP Vehicles
    - CUP Units

    Optional Mods:
    - Project Infinite AIO
*/

/* Classnames of the guerilla faction which is friendly or hostile, depending on the civil reputation
Standard loadout of the units will be replaced with a scripted one, which depends on the guerilla strength, after spawn */
KP_liberation_guerilla_units = [
    "UK3CB_NAP_I_MG",
    "UK3CB_NAP_I_ENG",
    "UK3CB_NAP_I_SEN_1",
    "UK3CB_NAP_I_MD",
    "UK3CB_NAP_I_RIF_1",
    "UK3CB_NAP_I_AT",
    "UK3CB_NAP_I_SNI",
    "UK3CB_NAP_I_TL"
];

// Armed vehicles
KP_liberation_guerilla_vehicles = [
    "UK3CB_NAP_I_Hilux_Dshkm",
    "UK3CB_NAP_I_Hilux_M2",
    "UK3CB_NAP_I_Hilux_Pkm",
    "UK3CB_NAP_I_Hilux_Rocket",
    "UK3CB_NAP_I_Hilux_Spg9",
    "UK3CB_NAP_I_Hilux_Zu23",
    "UK3CB_NAP_I_BRDM2",
    "UK3CB_NAP_I_BMP1",
    "UK3CB_NAP_I_BTR60",
    "UK3CB_NAP_I_MTLB_PKT",
    "UK3CB_NAP_I_T34",
    "UK3CB_NAP_I_T55"
];

/* Guerilla Equipment
There are 3 tiers for every category. If the strength of the guerillas will increase, they'll have higher tier equipment. */

/* Weapons - You've to add the weapons as array like
["Weaponclassname","Magazineclassname","magazine amount","optic","tripod"]
You can leave optic and tripod empty with "" */
KP_liberation_guerilla_weapons_1 = [
    ["uk3cb_ak47", "UK3CB_AK47_30Rnd_Magazine", 8, "", ""],
    ["UK3CB_CZ550", "UK3CB_CZ550_5rnd_Mag", 8, "uk3cb_optic_sro", ""],
    ["uk3cb_enfield_l8", "uk3cb_l42_enfield_762_10Rnd_magazine", 8, "", ""],
    ["uk3cb_enfield_no3t", "uk3cb_no4_enfield_303_10Rnd_magazine", 8, "uk3cb_optic_no32", ""],
    ["uk3cb_ppsh41", "uk3cb_PPSH_71rnd_magazine", 8, "", ""],
    ["UK3CB_Sten", "UK3CB_Sten_34Rnd_Magazine", 8, "", ""]
];

KP_liberation_guerilla_weapons_2 = [
    ["uk3cb_enfield_no3t", "uk3cb_no4_enfield_303_10Rnd_magazine", 8, "uk3cb_optic_no32", ""],
    ["rhs_weap_pm63", "rhs_30Rnd_762x39mm", 8, "", ""],
    ["uk3cb_ak47n", "UK3CB_AK47_30Rnd_Magazine", 6, "rhs_acc_ekp1", ""],
    ["uk3cb_ak47n", "UK3CB_AK47_30Rnd_Magazine", 6, "rhs_acc_ekp8_02", ""],
    ["UK3CB_RPK", "rhs_75Rnd_762x39mm", 3, "", ""]
];

KP_liberation_guerilla_weapons_3 = [
    ["UK3CB_FNFAL_FULL", "UK3CB_FNFAL_20rnd_762x51", 8, "", ""],
    ["rhs_weap_pm63", "rhs_30Rnd_762x39mm", 8, "", ""],
    ["uk3cb_ak47n", "UK3CB_AK47_30Rnd_Magazine", 6, "rhs_acc_ekp1", ""],
    ["uk3cb_ak47n", "UK3CB_AK47_30Rnd_Magazine", 6, "rhs_acc_ekp8_02", ""],
    ["UK3CB_UKM2000P", "UK3CB_UKM_100rnd_762x51", 3, "", ""],
    ["UK3CB_SVD_OLD", "rhs_10Rnd_762x54mmR_7N1", 6, "rhs_acc_pso1m2", ""],
    ["UK3CB_M14_Railed", "UK3CB_M14_20rnd_762x51", 6, "optic_khs_old", ""]
];

// Uniforms
KP_liberation_guerilla_uniforms_1 = [
    "UK3CB_NAP_B_U_CombatUniform_FLK",
    "UK3CB_NAP_B_U_CombatUniform_WDL",
    "UK3CB_NAP_B_U_Tshirt_FLK",
    "UK3CB_NAP_B_U_Tshirt_BLK",
    "UK3CB_NAP_I_U_Tshirt_FLK",
    "UK3CB_NAP_B_U_Tshirt_FLR",
    "UK3CB_NAP_I_U_CombatUniform_01_FLK"
];

KP_liberation_guerilla_uniforms_2 = [
    "UK3CB_NAP_B_U_CombatUniform_FLK",
    "UK3CB_NAP_B_U_CombatUniform_WDL",
    "UK3CB_NAP_B_U_Tshirt_FLK",
    "UK3CB_NAP_B_U_Tshirt_BLK",
    "UK3CB_NAP_I_U_Tshirt_FLK",
    "UK3CB_NAP_B_U_Tshirt_FLR",
    "UK3CB_NAP_I_U_CombatUniform_01_FLK",
    "UK3CB_CW_SOV_O_Early_U_Spetsnaz_Uniform_01_Ghillie_KHK",
    "UK3CB_NAP_B_U_CombatUniform_Ghillie_BRN",
    "UK3CB_ADM_B_U_CombatUniform_01_WDL_CC",
    "UK3CB_ADM_B_U_CombatUniform_01_WDL_DDPM",
    "UK3CB_ADM_B_U_CombatUniform_01_WDL_MAR_DES",
    "UK3CB_ADM_B_U_CombatUniform_01_WDL_TCC",
    "UK3CB_ADM_B_U_CombatUniform_01_WDL_ALT_MAR",
    "UK3CB_ADM_B_U_CombatUniform_01_WDL_ALT",
    "UK3CB_ADM_B_U_CombatUniform_01_WDL"
];

KP_liberation_guerilla_uniforms_3 = [
    "UK3CB_NAP_B_U_CombatUniform_Ghillie_BRN",
    "UK3CB_ADM_B_U_CombatUniform_01_WDL_CC",
    "UK3CB_ADM_B_U_CombatUniform_01_WDL_DDPM",
    "UK3CB_ADM_B_U_CombatUniform_01_WDL_MAR_DES",
    "UK3CB_ADM_B_U_CombatUniform_01_WDL_TCC",
    "UK3CB_ADM_B_U_CombatUniform_01_WDL_ALT_MAR",
    "UK3CB_ADM_B_U_CombatUniform_01_WDL_ALT",
    "UK3CB_ADM_B_U_CombatUniform_01_WDL"
];

// Vests
KP_liberation_guerilla_vests_1 = [
    "UK3CB_V_Invisible"
];

KP_liberation_guerilla_vests_2 = [
    "UK3CB_V_Invisible",
    "UK3CB_V_Invisible_Plate"
];

KP_liberation_guerilla_vests_3 = [
    "UK3CB_V_Chicom_Brown",
    "UK3CB_V_Chicom_Desert",
    "UK3CB_V_PlateCarrier2_brn",
    "UK3CB_V_PlateCarrier2_des",
    "UK3CB_V_PlateCarrier2_khk",
    "UK3CB_V_PlateCarrier2_oli"
];

// Headgear
KP_liberation_guerilla_headgear_1 = [
    "H_Shemag_olive_hs"
];

KP_liberation_guerilla_headgear_2 = [
    "UK3CB_H_Beanie_01",
    "UK3CB_H_Beanie_02_BLK",
    "UK3CB_H_Beanie_02_BRN",
    "UK3CB_H_Beanie_02_Camo",
    "UK3CB_H_Beanie_02_GRY",
    "rhs_beanie_green"
];

KP_liberation_guerilla_headgear_3 = [
    "UK3CB_TKA_I_H_SSh68_Oli",
    "UK3CB_TKA_I_H_SSh68_Oli",
    "UK3CB_TKA_I_H_SSh68_Oli",
    "UK3CB_TKA_I_H_SSh68_Oli",
    "UK3CB_TKA_I_H_SSh68_Oli",
    "UK3CB_TKA_I_H_SSh68_Oli",
    "UK3CB_H_Beanie_01",
    "UK3CB_H_Beanie_02_BLK",
    "UK3CB_H_Beanie_02_BRN",
    "UK3CB_H_Beanie_02_Camo",
    "UK3CB_H_Beanie_02_GRY",
    "rhs_beanie_green"
];

// Facegear. Applies for tier 2 and 3.
KP_liberation_guerilla_facegear = [
    "UK3CB_G_Balaclava_DES",
    "UK3CB_G_Balaclava",
    "UK3CB_G_Balaclava2_BLK",
    "UK3CB_G_Balaclava2_DES",
    "UK3CB_G_Bandanna_aviator_brown_check",
    "UK3CB_G_Bandanna_aviator_flora_alt",
    "UK3CB_G_Bandanna_aviator_green_check",
    "UK3CB_G_Bandanna_aviator_red_check",
    "UK3CB_G_Bandanna_aviator_white_check",
    "UK3CB_G_Face_Wrap_01",
    "rhs_scarf",
    "rhsusf_shemagh2_grn",
    "rhsusf_shemagh2_od",
    "rhsusf_shemagh2_tan",
    "rhsusf_shemagh2_white",
    "rhsusf_shemagh2_gogg_grn",
    "rhsusf_shemagh2_gogg_od",
    "rhsusf_shemagh2_gogg_tan",
    "rhsusf_shemagh2_gogg_white"
];
