#ifdef NIGHTVISION
  #define NVITEM ""
#else
  #define NVITEM ""
#endif

#ifdef LASERS
  #define LLITEM ""
  #define LLITEM_MG "rhsusf_acc_anpeq15side_bk"
#else
  #define LLITEM ""
  #define LLITEM_MG ""
#endif

#ifdef GUNLIGHTS
  #define LLITEM "rhsusf_acc_anpeq15_bk_light"
#endif

#ifdef SUPPRESSORS
  #define SUPPRESSORITEM ""
  #define SUPPRESSORITEM_MARKSMAN ""
#else
  #define SUPPRESSORITEM ""
  #define SUPPRESSORITEM_MARKSMAN ""
#endif

class pmc {
    class AllUnits {
        uniform[] = 
		{
			"U_B_CombatUniform_mcam_tshirt",
			"U_B_CTRG_2",
			"U_BG_Guerilla2_3",
			"U_BG_Guerilla2_2",
			"U_I_G_Story_Protagonist_F",
			"U_B_T_Soldier_AR_F",
			"U_B_CTRG_Soldier_2_F",
			"U_B_CTRG_Soldier_urb_2_F",
			"U_B_CombatUniform_tshirt_mcam_wdL_f",
			"SMM_Uniform_BW_FT_TS",
			"SMM_Uniform_BW_MC_TS"
		};
        vest[] = 
		{
			"V_PlateCarrier1_blk",
			"V_PlateCarrier2_blk",
			"V_PlateCarrier1_rgr_noflag_F",
			"V_PlateCarrier2_rgr_noflag_F",
			"V_CarrierRigKBT_01_heavy_Olive_F",
			"V_CarrierRigKBT_01_light_Olive_F",
			"V_CarrierRigKBT_01_Olive_F",
		};
        backpack = "";
        headgear[] = 
		{
			"H_Cap_blk",
			"H_HelmetB",
			"H_HelmetB_black",
			"H_HelmetHBK_F",
			"rhsusf_opscore_mar_fg_pelt",
			"rhsusf_opscore_mar_fg",
			"H_Watchcap_blk",
			"H_Watchcap_camo",
			"H_Booniehat_oli",
			"H_Booniehat_khk",
			"H_Cap_blk",
			"H_Bandanna_khk",
			"H_Bandanna_sgg",
			"H_PASGT_basic_black_F"
		};
        primaryWeapon[] = 
		{
			"rhs_weap_hk416d10",
			"rhs_weap_hk416d10_LMT_wd",
			"rhs_weap_hk416d145",
			"rhs_weap_hk416d145_wd",
			"rhs_weap_m16a4_carryhandle",
			"rhs_weap_m16a4_imod",
			"rhs_weap_m27iar",
			"rhs_weap_m4_carryhandle",
			"rhs_weap_m4_mstock",
			"rhs_weap_m4a1_carryhandle",
			"rhs_weap_m4a1_blockII",
			"rhs_weap_m4a1_blockII_KAC_wd",
			"rhs_weap_m4a1_wd_mstock",
			"rhs_weap_mk18",
			"rhs_weap_mk18_KAC_wd"
		};
        primaryWeaponMagazine[] = 
		{
			"rhs_mag_30Rnd_556x45_M855_PMAG"
		};
        primaryWeaponMuzzle = SUPPRESSORITEM;
        primaryWeaponPointer[] = 
		{
			"rhsusf_acc_m952v", 
			"rhsusf_acc_wmx_bk", 
			"rhsusf_acc_anpeq15_bk_light", 
			"rhsusf_acc_anpeq15_light"
		};
        primaryWeaponOptics[] =
		{
			"rhsusf_acc_m2a1",
			"rhsusf_acc_eotech_552",
			"rhsusf_acc_eotech_552_wd",
			"rhsusf_acc_compm4",
			"rhsusf_acc_mrds",
			"rhsusf_acc_rm05",
			"rhsusf_acc_t1_low",
			"rhsusf_acc_t1_high",
			"rhsusf_acc_eotech_xps3",
			"optic_holosight_lush_f",
			"fhq_optic_ac11704",
			"fhq_optic_ac12136"
			};
		primaryWeaponUnderbarrel = "rhsusf_acc_grip3";
		primaryWeaponUnderbarrelMagazine = "";
        secondaryWeapon = "";
        secondaryWeaponMagazine = "";
        handgunWeapon[] = 
		{
			"hgun_Rook40_F",
			"hgun_P07_F",
			"hgun_P07_khk_F"
		};
		handgunWeaponMuzzle = "";
        handgunWeaponMagazine = "16Rnd_9x21_Mag";
        binoculars = "ACE_Vector";
        map = "ItemMap";
        compass = "ItemCompass";
        watch = "ACE_Altimeter";
        gps = "ItemGPS";
        radio = "tfar_anprc152";
        nvgoggles = NVITEM;
    };
    class Type {
        //Rifleman
        class Soldier_F {
            addItemsToUniform[] = {
                LIST_1("ACE_MapTools"),
                LIST_1("ACE_DefusalKit"),
                LIST_2("ACE_CableTie"),
                LIST_1("ACE_Flashlight_MX991"),
                LIST_1("ACE_key_lockpick"),

                LIST_4("ACE_packingBandage"),
                LIST_4("ACE_elasticBandage"),
                LIST_4("ACE_quikclot"),
                LIST_4("ACE_tourniquet"),
                LIST_2("ACE_morphine"),
                LIST_2("ACE_epinephrine")
            };
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_1("16Rnd_9x21_Mag"),
                LIST_10("rhs_mag_30Rnd_556x45_M855_PMAG")
            };
        };

        //Combat Life Saver
        class medic_F: Soldier_F {
			vest = "V_TacVestIR_blk";
            backpack[] = 
			{
				"ga_kitbag_black_medic",
				"B_Kitbag_sgg",
				"B_Kitbag_rgr"
			};
            addItemsToUniform[] = {
                "ACE_MapTools",
                "ACE_Flashlight_MX991"
            };
            class Rank {
                class PRIVATE {
                    GRAD_FACTIONS_MEDICITEMS_CFR
                };
                class CORPORAL {
                    GRAD_FACTIONS_MEDICITEMS_SQ
                };
                class SERGEANT {
                    GRAD_FACTIONS_MEDICITEMS_PT
                };
                class LIEUTENANT: SERGEANT {};
                class CAPTAIN: SERGEANT {};
                class MAJOR: SERGEANT {};
                class COLONEL: SERGEANT {};
            };
        };

        //Squad Leader
        class Soldier_SL_F: Soldier_F {
			vest = "V_PlateCarrier1_blk";
            backpack[] = 
			{
				"ga_kitbag_black",
				"B_RadioBag_01_black_F",
				"B_RadioBag_01_wdl_F"
			};
            addItemsToBackpack[] = {
                LIST_2("SmokeShellBlue"),
                LIST_2("SmokeShellGreen"),
                LIST_2("SmokeShellOrange"),
                LIST_2("SmokeShellPurple"),
                LIST_2("SmokeShellRed"),
                LIST_2("SmokeShell")
            };
        };

        //Team Leader
        class Soldier_TL_F: Soldier_F {
            addItemsToVest[] = {
                LIST_2("HandGrenade"),
                LIST_2("SmokeShell"),
                LIST_1("16Rnd_9x21_Mag"),
                LIST_7("rhs_mag_30Rnd_556x45_M855_PMAG"),
                LIST_2("SmokeShellRed"),
                LIST_2("SmokeShellGreen"),
                LIST_2("SmokeShellBlue"),

            };
        };

    };
};
