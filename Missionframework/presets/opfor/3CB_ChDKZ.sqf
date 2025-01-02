/*
    Needed Mods:
    - 3CB Factions

    Optional Mods:
    - None
*/

// Enemy infantry classes
opfor_officer = "UK3CB_CHD_O_OFF";              // Officer
opfor_squad_leader = "UK3CB_CHD_O_SF_SL";          // Squad Leader
opfor_team_leader = "UK3CB_CHD_O_SF_TL";           // Team Leader
opfor_sentry = "UK3CB_CHD_O_SF_RIF_2";             // Rifleman (Lite)
opfor_rifleman = "UK3CB_CHD_O_SF_RIF_1";           // Rifleman
opfor_rpg = "UK3CB_CHD_O_SF_LAT";                  // Rifleman (LAT)
opfor_grenadier = "UK3CB_CHD_O_SF_GL";             // Grenadier
opfor_machinegunner = "UK3CB_CHD_O_SF_AR";         // Autorifleman
opfor_heavygunner = "UK3CB_CHD_O_SF_MG";           // Heavy Gunner
opfor_marksman = "UK3CB_CHD_O_SF_MK";              // Marksman
opfor_sharpshooter = "UK3CB_CHD_O_SF_SPOT";         // Sharpshooter
opfor_sniper = "UK3CB_CHD_O_SF_SNI";            // Sniper
opfor_at = "UK3CB_CHD_O_SF_AT";                    // AT Specialist
opfor_aa = "UK3CB_CHD_O_SF_AA";                    // AA Specialist
opfor_medic = "UK3CB_CHD_O_SF_MD";                 // Medic
opfor_engineer = "UK3CB_CHD_O_SF_ENG";             // Engineer
opfor_paratrooper = "UK3CB_CHD_O_SF_RIF_2";     // Paratrooper

// Enemy vehicles used by secondary objectives.
opfor_mrap = "UK3CB_CHD_O_LR_Closed";                                  // Land Rover 110 (Transport)
opfor_mrap_armed = "UK3CB_CHD_O_LR_M2";                                   // Land Rover 110 (M2)
opfor_transport_helo = "UK3CB_CHD_O_Mi8";                                // UH-1H
opfor_transport_truck = "UK3CB_CHD_O_Ural";                               // Ural
opfor_ammobox_transport = "UK3CB_CHD_O_Ural_Open";                        // Ural (Open) -> Has to be able to transport resource crates!
opfor_fuel_truck = "UK3CB_CHD_O_Ural_Fuel";                             // Ural (Refuel)
opfor_ammo_truck = "UK3CB_CHD_O_Ural_Ammo";                             // Ural (Ammo)
opfor_fuel_container = "B_Slingload_01_Fuel_F";                         // Huron Fuel Container
opfor_ammo_container = "B_Slingload_01_Ammo_F";                         // Huron Ammo Container
opfor_flag = "Flag_CHD_Red_Star";                                 // Flag

/* Adding a value to these arrays below will add them to a one out of however many in the array, random pick chance.
Therefore, adding the same value twice or three times means they are more likely to be chosen more often. */

/* Militia infantry. Lightweight soldier classnames the game will pick from randomly as sector defenders.
Think of them like garrison or military police forces, which are more meant to control the local population instead of fighting enemy armies. */
militia_squad = [
    "UK3CB_CHD_O_SL",       // Section leader
    "UK3CB_CHD_O_TL",       // Team leader
    "UK3CB_CHD_O_RIF_1",    // Rifleman AKM
    "UK3CB_CHD_O_RIF_2",    // Rifleman AK-74
    "UK3CB_CHD_O_MD",       // Medic
    "UK3CB_CHD_O_MK",       // Marksman
    "UK3CB_CHD_O_MG",       // Machinegunner
    "UK3CB_CHD_O_ENG",      // Engineer
    "UK3CB_CHD_O_AR",       // Autorifleman
    "UK3CB_CHD_O_AT"        // Antitank (RPG-7)
];

// Militia vehicles. Lightweight vehicle classnames the game will pick from randomly as sector defenders. Can also be empty for only infantry milita.
militia_vehicles = [
    "UK3CB_CHD_O_Hilux_Dshkm",  // Hilux DSHKM
    "UK3CB_CHD_O_Hilux_M2",     // Hilux M2
    "UK3CB_CHD_O_Hilux_Zu23",   // Hilux ZU-23
    "UK3CB_CHD_O_Hilux_Spg9",   // Hilux SPG-9
    "UK3CB_CHD_O_LR_M2",     // Range rover M2
    "UK3CB_CHD_O_BTR60",        // BTR-60
    "UK3CB_CHD_O_MTLB_PKT"      // MT-LB PKT
];

// All enemy vehicles that can spawn as sector defenders and patrols at high enemy combat readiness (aggression levels).
opfor_vehicles = [
    "UK3CB_CHD_O_Hilux_Dshkm",  // Hilux DSHKM
    "UK3CB_CHD_O_Hilux_M2",     // Hilux M2
    "UK3CB_CHD_O_Hilux_Zu23",   // Hilux ZU-23
    "UK3CB_CHD_O_Hilux_Spg9",   // Hilux SPG-9
    "UK3CB_CHD_O_BTR60",        // BTR-80
    "UK3CB_CHD_O_BTR70",       // BTR-80A
    "UK3CB_CHD_O_BMP1",         // BMP-1
    "UK3CB_CHD_O_BMP2",         // BMP-2
    "UK3CB_CHD_O_BMP2K",         // BMP-2
    "UK3CB_CHD_O_BMP2K",        // BMP-2K
    "UK3CB_CHD_O_ZsuTank",      // ZSU-23-4 Shilka
    "UK3CB_CHD_O_ZsuTank",      // ZSU-23-4 Shilka
    "UK3CB_CHD_O_T55",          // T-55
    "UK3CB_CHD_O_T72A",         // T-72A
    "UK3CB_CHD_O_T72B",         // T-72AV
    "UK3CB_CHD_O_T72BA",         // T-72AV
    "UK3CB_CHD_O_T72BB"         // T-72B
];

// All enemy vehicles that can spawn as sector defenders and patrols but at a lower enemy combat readiness (aggression levels).
opfor_vehicles_low_intensity = [
    "UK3CB_CHD_O_Hilux_Dshkm",  // Hilux DSHKM
    "UK3CB_CHD_O_Hilux_M2",     // Hilux M2
    "UK3CB_CHD_O_Hilux_Zu23",   // Hilux ZU-23
    "UK3CB_CHD_O_Hilux_Spg9",   // Hilux SPG-9
    "UK3CB_CHD_O_LR_M2",     // Range rover M2
    "UK3CB_CHD_O_MTLB_PKT",      // MT-LB PKT
    "UK3CB_CHD_O_Ural_Zu23",        // Ural (ZU-23)
    "UK3CB_CHD_O_Ural_Zu23",        // Ural (ZU-23)
    "UK3CB_CHD_O_BTR70",            // BTR-70
    "UK3CB_CHD_O_BRDM2",            // BRDM-2
    "UK3CB_CHD_O_BRDM2",            // BRDM-2
    "UK3CB_CHD_O_BMP1",             // BMP-1
    "UK3CB_CHD_O_BMP1"              // BMP-1
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at high enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles = [
    "UK3CB_CHD_O_Hilux_Dshkm",  // Hilux DSHKM
    "UK3CB_CHD_O_Hilux_M2",     // Hilux M2
    "UK3CB_CHD_O_Hilux_Zu23",   // Hilux ZU-23
    "UK3CB_CHD_O_Hilux_Spg9",   // Hilux SPG-9
    "UK3CB_CHD_O_BTR60",        // BTR-80
    "UK3CB_CHD_O_BTR70",       // BTR-80A
    "UK3CB_CHD_O_BMP1",         // BMP-1
    "UK3CB_CHD_O_BMP2",         // BMP-2
    "UK3CB_CHD_O_BMP2K",         // BMP-2
    "UK3CB_CHD_O_BMP2K",        // BMP-2K
    "UK3CB_CHD_O_ZsuTank",      // ZSU-23-4 Shilka
    "UK3CB_CHD_O_ZsuTank",      // ZSU-23-4 Shilka
    "UK3CB_CHD_O_T55",          // T-55
    "UK3CB_CHD_O_T72A",         // T-72A
    "UK3CB_CHD_O_T72B",         // T-72AV
    "UK3CB_CHD_O_T72BA",         // T-72AV
    "UK3CB_CHD_O_T72BB",         // T-72B
    "UK3CB_CHD_O_Mi8AMTSh"
];

// All enemy vehicles that can spawn as battlegroups, either assaulting or as reinforcements, at lower enemy combat readiness (aggression levels).
opfor_battlegroup_vehicles_low_intensity = [
    "UK3CB_CHD_O_Hilux_Dshkm",  // Hilux DSHKM
    "UK3CB_CHD_O_Hilux_M2",     // Hilux M2
    "UK3CB_CHD_O_Hilux_Zu23",   // Hilux ZU-23
    "UK3CB_CHD_O_Hilux_Spg9",   // Hilux SPG-9
    "UK3CB_CHD_O_LR_M2",     // Range rover M2
    "UK3CB_CHD_O_MTLB_PKT",      // MT-LB PKT
    "UK3CB_CHD_O_Ural_Zu23",        // Ural (ZU-23)
    "UK3CB_CHD_O_Ural_Zu23",        // Ural (ZU-23)
    "UK3CB_CHD_O_BTR70",            // BTR-70
    "UK3CB_CHD_O_BRDM2",            // BRDM-2
    "UK3CB_CHD_O_BRDM2",            // BRDM-2
    "UK3CB_CHD_O_BMP1",             // BMP-1
    "UK3CB_CHD_O_BMP1",              // BMP-1
    "UK3CB_CHD_O_Mi8AMTSh"
];

/* All vehicles that spawn within battlegroups (see the above 2 arrays) and also hold 8 soldiers as passengers.
If something in this array can't hold all 8 soldiers then buggy behaviours may occur.   */
opfor_troup_transports = [
    "UK3CB_CHD_O_BMP1",                 // BMP-1
    "UK3CB_CHD_O_BMP2",                 // BMP-2
    "UK3CB_CHD_O_BMP2K",                // BMP-2K
    "UK3CB_CHD_O_BRDM2",                // BRDM-2
    "UK3CB_CHD_O_MTLB_PKT",             // MT-LB PKT
    "UK3CB_CHD_O_BTR70"
];

// Enemy rotary-wings that will need to spawn in flight.
opfor_choppers = [
    "UK3CB_CHD_O_Mi8AMTSh"
];

// Enemy fixed-wings that will need to spawn in the air.
opfor_air = [
    "UK3CB_CHD_O_Su25SM",                      // L-39 CAS
    "UK3CB_CHD_O_Su25SM_CAS",    // AN-2 Rockets
    "UK3CB_CHD_O_Su25SM_KH29",                     // Mig-21 AT
    "UK3CB_CHD_O_Antonov_AN2_Armed_Rockets"
];

// Enemy AA turrets that will be spawned in the back country
KPLIB_o_turretsAA = [
	["O_SAM_System_04_F", "O_Radar_System_02_F"]
];
