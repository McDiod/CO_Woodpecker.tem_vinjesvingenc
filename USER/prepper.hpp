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

class prepper {
    class AllUnits {
        uniform[] = 
		{
			"rds_uniform_citizen1",
            "rds_uniform_citizen2",
            "rds_uniform_citizen3",
            "rds_uniform_citizen4",
            "rds_uniform_Functionary1",
            "rds_uniform_Profiteer1",
            "rds_uniform_Profiteer2",
            "rds_uniform_Profiteer3",
            "rds_uniform_Profiteer4",
            "rds_uniform_Rocker2",
            "rds_uniform_schoolteacher",
            "rds_uniform_Villager1",
            "rds_uniform_Villager2",
            "rds_uniform_Villager3",
            "rds_uniform_Villager4",
            "rds_uniform_Woodlander1",
            "rds_uniform_Woodlander2",
            "rds_uniform_Woodlander3",
            "rds_uniform_Woodlander4",
            "rds_uniform_Worker1",
            "rds_uniform_Worker2",
            "rds_uniform_Worker3",
            "rds_uniform_Worker4",
			
			"gm_gc_civ_uniform_man_01_80_blk",
			"gm_gc_civ_uniform_man_01_80_blu",
			"gm_gc_civ_uniform_man_02_80_brn",
			"gm_ge_civ_uniform_blouse_80_gry",
			"U_C_Uniform_Farmer_01_F",
			"U_I_L_Uniform_01_tshirt_black_F",
			"U_I_L_Uniform_01_tshirt_skull_F",
			"U_I_L_Uniform_01_tshirt_sport_F",
			"U_C_Mechanic_01_F"
		};
        vest[] = 
		{
			""
		};
        backpack = "";
        headgear[] = 
		{
			"",
			"rds_Profiteer_cap4",
            "",
			"rds_Profiteer_cap2",
            "",
			"rds_Woodlander_cap1",
            "",
			"rds_Woodlander_cap3",
            "",
			"rds_Villager_cap1",
            "",
			"rds_Villager_cap4",
            "",
			"rds_worker_cap3",
            "",
			"rds_worker_cap4",
            "",
			"H_Cap_blk",
            "",
			"H_Cap_grn",
            "",
			"H_Cap_red",
            "",
			"H_Hat_blue",
            "",
			"H_Hat_brown",
            "",
			"H_Hat_grey"
		};
        primaryWeapon[] = 
		{
			"rhs_weap_aks74n_2_npz",
			"rhs_weap_aks74n_npz",
			"rhs_weap_aks74n_gp25_npz",
			"rhs_weap_ak74n_2_npz",
			"rhs_weap_ak74n_npz",
			"rhs_weap_ak74mr",
			"rhs_weap_ak74m_zenitco01_b33",
			"rhs_weap_ak74m_fullplum_npz",
			"rhs_weap_ak74m_desert_npz",
			"rhs_weap_ak74m_npz",
			"rhs_weap_ak105_zenitco01_b33",
			"rhs_weap_ak105_npz"
		};
        primaryWeaponMagazine[] = 
		{
			"rhs_30Rnd_545x39_7N10_AK"
		};
        primaryWeaponMuzzle = "";
        primaryWeaponPointer = "";
        primaryWeaponOptics[] =
		{
			"",
			"rhs_acc_ekp8_18",
			"",
			"rhs_acc_1p87",
			"",
			"rhs_acc_rakurspm",
			"",
			"rhsusf_acc_t1_low",
			"",
			"rhsusf_acc_rx01",
			"",
			"rhsusf_acc_rm05"
			};
		primaryWeaponUnderbarrel = "";
		primaryWeaponUnderbarrelMagazine = "";
        secondaryWeapon = "";
        secondaryWeaponMagazine = "";
        handgunWeapon[] = 
		{
			""
		};
		handgunWeaponMuzzle = "";
        handgunWeaponMagazine = "";
        binoculars = "";
        map = "";
        compass = "";
        watch = "";
        gps = "";
        radio = "";
        nvgoggles = NVITEM;
		faces[] = {
            "WhiteHead_01",
            "WhiteHead_02",
            "WhiteHead_03",
            "WhiteHead_04",
            "WhiteHead_05",
            "WhiteHead_06",
            "WhiteHead_07",
            "WhiteHead_08",
            "WhiteHead_09",
            "WhiteHead_10",
            "WhiteHead_11",
            "WhiteHead_12",
            "WhiteHead_13"
        };

        goggles[] = {
			"",
            "G_Aviator",
			"",
            "G_Shades_Black",
			"",
            "G_Shades_Green",
			"",
            "G_Spectacles",
			"",
            "G_Sport_Blackred",
			"",
            "G_Squares_Tinted",
			"",
            "G_Spectacles_Tinted",
			"",
			"G_WirelessEarpiece_F",
			
			"",
			"G_Bandanna_aviator",
			"",
			"G_Bandanna_oli",
			"",
			"G_Bandanna_sport"
			
        };
    };
		
    class Type {
        //Rifleman
        class Soldier_F {
            addItemsToUniform[] = {
                LIST_2("ACE_CableTie"),
                LIST_4("ACE_packingBandage"),
                LIST_4("ACE_elasticBandage"),
                LIST_4("ACE_quikclot"),
				LIST_3("rhs_30Rnd_545x39_7N10_AK")
            };
        };
		

        //Team Leader
        class Soldier_TL_F: Soldier_F {
			primaryWeapon[] = 
			{
				"rhs_weap_mk18_KAC_wd",
				"rhs_weap_mk18_wd",
				"rhs_weap_m4a1_wd_mstock",
				"rhs_weap_m4a1_wd",
				"rhs_weap_m4a1_blockII_KAC_wd",
				"rhs_weap_m4a1_blockII_wd"
			};
			primaryWeaponMagazine = "rhs_mag_30Rnd_556x45_M855_PMAG";
			primaryWeaponMuzzle[] =
			{
				"",
				"ace_muzzle_mzls_l",
				"",
				"muzzle_snds_m_khk_f",
				""
			};
			primaryWeaponOptics[] =
			{
				"",
				"rhsusf_acc_eotech_552_wd",
				"rhsusf_acc_t1_high",
				"rhsusf_acc_t1_low",
				"rhsusf_acc_mrds"
			};
			
			
			
			uniform[] = 
			{
				"U_I_FullGhillie_lsh",
				"U_B_FullGhillie_lsh",
				"U_I_GhillieSuit",
				"U_I_FullGhillie_sard",
				"U_B_FullGhillie_sard",
				"U_B_T_FullGhillie_tna_F"
			};
			vest = "V_CarrierRigKBT_01_EAF_F";
			headgear = "H_HelmetB_camo";
			goggles[] = 
			{
				"G_Bandanna_oli",
				"G_Bandanna_blk",
				"G_Balaclava_oli",
				"G_Balaclava_blk",
				"G_AirPurifyingRespirator_02_olive_F",
				"rhssaf_veil_Green",
				"Mask_M40_OD"
			};
			addItemsToUniform[] = {
                LIST_2("ACE_packingBandage"),
                LIST_2("ACE_elasticBandage"),
                LIST_2("ACE_quikclot"),
                LIST_2("ACE_tourniquet"),
                LIST_1("ACE_morphine"),
                LIST_1("ACE_epinephrine")
            };
            addItemsToVest[] = {
                LIST_2("SmokeShell"),
                LIST_3("rhs_mag_30Rnd_556x45_M855_PMAG"),
                LIST_1("SmokeShellRed"),
                LIST_1("SmokeShellGreen"),
            };
        };
		
		//Squad Leader
        class Soldier_SL_F: Soldier_TL_F {
			handgunWeapon = "rhsusf_weap_m1911a1";
			handgunWeaponMagazine = "rhsusf_mag_7x45acp_MHP";
			headgear = "H_Beret_EAF_01_F";
			goggles = "";
			uniform[] = 
			{
				"U_I_E_Uniform_01_sweater_F",
				"U_I_E_Uniform_01_tanktop_F",
				"U_I_L_Uniform_01_deserter_F"
			};
			vest[] = 
			{
				"V_SmershVest_01_F",
				"V_SmershVest_01_radio_F"
			};
            backpack = "B_RadioBag_01_eaf_F";
            addItemsToBackpack[] = {
                LIST_2("SmokeShellBlue"),
                LIST_2("SmokeShellGreen"),
                LIST_2("SmokeShellOrange"),
                LIST_2("SmokeShellPurple"),
                LIST_2("SmokeShellRed"),
				LIST_1("HandGrenade"),
                LIST_2("SmokeShell")
            };
        };

    };
};
