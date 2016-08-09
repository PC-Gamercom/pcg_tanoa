/*
	COP UNIFORM SCRIPT
	Author: coldgas (http://altis.newhopeoutfit.de)
	Created for www.altisliferpg.com
*/

	#define __GETC__(var) (call var)
	
	// Standard Cop Uniforms by coplevel. Create new 'if' for every coplevel you want to have a special uniform. (e.G. if(__GETC__(life_coplevel) == 1) then {... )
	if (__GETC__(life_mediclevel) > 1)  then {
		player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; // this is for all cops whitelisted or public.
	};

	
	
	// Special Uniforms cops can buy in shops. Add new 'if' for every classname you want the skin to be overwritten. (warning, does NOT work with every class!)
		if(uniform player == "U_Rangemaster") then {
			player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"];
		};
		if(uniform player == "U_B_CombatUniform_mcam") then {
			player setObjectTextureGlobal [0, "textures\FW_Uniform.jpg"];
		};
		if(uniform player == "U_I_CombatUniform") then {
			player setObjectTextureGlobal [0, "textures\MED_Uniform.jpg"];
		};
		if (backpack player == "B_Carryall_cbr") then {
			(backpackContainer player) setObjectTextureGlobal[0,""];
		};
		if (backpack player == "B_FieldPack_oli") then {
			(backpackContainer player) setObjectTextureGlobal[0,""];
		};
// call this script in as many files as possible, especially init_cop, init_civ and all files related to the cop-shop.