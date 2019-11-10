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

class prepperCivs {
    class AllUnits {
        uniform[] = {
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
        vest = "";
        backpack = "";
        headgear[] = {
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
        primaryWeapon = "";
        secondaryWeapon = "";
        secondaryWeaponMagazine = "";
        handgunWeapon = "";
        binoculars = "";
        map = "";
        compass = "";
        watch = "";
        gps = "";
        radio = "";
        nvgoggles = NVITEM;
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
};
