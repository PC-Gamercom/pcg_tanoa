/*
	COP UNIFORM SCRIPT
	Author: coldgas (http://altis.newhopeoutfit.de)
	Created for www.altisliferpg.com
*/

	#define __GETC__(var) (call var)
	
	// Standard Cop Uniforms by coplevel. Create new 'if' for every coplevel you want to have a special uniform. (e.G. if(__GETC__(life_coplevel) == 1) then {... )
	if (__GETC__(life_coplevel) > 1)  then {
		player setObjectTextureGlobal [0, "textures\cop_uniform.jpg"]; // this is for all cops whitelisted or public.
	};

		/* Einfügen Rucksack weg */
		if (backpack player == "B_Carryall_cbr") then {
			(backpackContainer player) setObjectTextureGlobal[0,""];
		};
	// Special Uniforms cops can buy in shops. Add new 'if' for every classname you want the skin to be overwritten. (warning, does NOT work with every class!)
	
	if ((uniform player) == "U_B_CombatUniform_mcam")  then {
		player setObjectTextureGlobal [0, "textures\swat_shirt.paa"];
	};
	if ((uniform player) == "H_HelmetB_light_black")  then {
		player setObjectTextureGlobal [0, "textures\swat_helmet.paa"];
	};
	if ((uniform player) == "H_Cap_blk")  then {
		player setObjectTextureGlobal [0, "textures\swat_s_cap.paa"];
	};
	if ((uniform player) == "V_TacVest_blk")  then {
		player setObjectTextureGlobal [0, "textures\uniforms\police_veste.paa"];
	};
// call this script in as many files as possible, especially init_cop, init_civ and all files related to the cop-shop.