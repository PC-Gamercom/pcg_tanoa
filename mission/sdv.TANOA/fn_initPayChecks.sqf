#include "..\script_macros.hpp"
/*
	File: fn_initPayChecks.sqf
	Author: ScarsoLP

    Created: 15th September 2015
    Last Modified: 25th March 2016

	Description:
	Changes The Player(s) paycheck depending on what rank/level they are in the Police/NHS/Donator. 
    Also changes the palyer(s) paycheck depending on what licenses they have.
*/

/* Changes The Paycheck Depending On Levels */

switch (playerSide) do
{
	case west:
	{
		switch(FETCH_CONST(life_coplevel)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;};
			case 1: {life_paycheck = life_paycheck + 200;}; 
			case 2: {life_paycheck = life_paycheck + 450;}; 
			case 3: {life_paycheck = life_paycheck + 950;}; 
			case 4: {life_paycheck = life_paycheck + 1250;}; 
			case 5: {life_paycheck = life_paycheck + 1550;}; 
			case 6: {life_paycheck = life_paycheck + 2122;}; 
			case 7: {life_paycheck = life_paycheck + 2450;};
			case 8: {life_paycheck = life_paycheck + 2650;}; 
			case 9: {life_paycheck = life_paycheck + 2799;}; 
			case 10: {life_paycheck = life_paycheck + 3119;}; 
			case 11: {life_paycheck = life_paycheck + 3450;}; 
			case 12: {life_paycheck = life_paycheck + 3650;}; 	
			case 13: {life_paycheck = life_paycheck + 3850;};
		};
		switch(FETCH_CONST(life_donator)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 0;};
			case 2: {life_paycheck = life_paycheck + 0;}; 
			case 3: {life_paycheck = life_paycheck + 0;}; 
			case 4: {life_paycheck = life_paycheck + 0;}; 
			case 5: {life_paycheck = life_paycheck + 0;}; 
		};
	};

	case independent:
	{
		switch(FETCH_CONST(life_mediclevel)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 400;}; 
			case 2: {life_paycheck = life_paycheck + 600;}; 
			case 3: {life_paycheck = life_paycheck + 1900;};
			case 4: {life_paycheck = life_paycheck + 2100;};
			case 5: {life_paycheck = life_paycheck + 2800;};
			case 6: {life_paycheck = life_paycheck + 3850;};
		};
		switch(FETCH_CONST(life_donator)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 0;};
			case 2: {life_paycheck = life_paycheck + 0;}; 
			case 3: {life_paycheck = life_paycheck + 0;}; 
			case 4: {life_paycheck = life_paycheck + 0;}; 
			case 5: {life_paycheck = life_paycheck + 0;}; 
		};
	};
	
	case civilian:
	{
		switch(FETCH_CONST(life_donator)) do
		{
			case 0: {life_paycheck = life_paycheck + 0;}; 
			case 1: {life_paycheck = life_paycheck + 0;};
			case 2: {life_paycheck = life_paycheck + 0;}; 
			case 3: {life_paycheck = life_paycheck + 0;}; 
			case 4: {life_paycheck = life_paycheck + 0;}; 
			case 5: {life_paycheck = life_paycheck + 0;}; 
		};
	};
};

/* Changes The Paycheck Depending On Licenses */

/* Police Changes */

if(license_civ_cAir) then
{
	life_paycheck = life_paycheck + 0;
};

/* NHS Changes */

if(license_civ_mAir) then
{
	life_paycheck = life_paycheck + 0;
};

/* Civilian Changes */

if(license_civ_rebel) then
{
	life_paycheck = life_paycheck + 0;
};