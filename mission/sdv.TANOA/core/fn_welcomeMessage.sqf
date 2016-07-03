// FILENAME: server_WelcomeCredits.sqf
// =====
// SCRIPT NAME: Server Intro Credits Script by IT07
// SCRIPT VERSION: v1.3.7 BETA
// Credits for original script: Bohemia Interactive http://bistudio.com
// ========== SCRIPT CONFIG ============
_onScreenTime = 10; //how long one role should stay on screen. Use value from 0 to 10 where 0 is almost instant transition to next role

uisleep 12; //Wait in seconds before the credits start after player IS ingame

_role1 = "Willkommen auf dem";
_role1names = ["Staat der Visonäre Server"];
_role2 = "Polizei News";
_role2names = ["Wir suchen immer neue Polizistinnen und Polizisten ab 16 Jahre","Bewerbung unter board.pc-gamercom.de"];
_role3 = "Rettungsdienst";
_role3names = ["Egal ob Feuerwehr- oder Pannendienst. Wir suchen fähige Mitarbeiter","Bewerbung unter board.pc-gamercom.de"];
_role4 = "Features";
_role4names = ["Deutsche Polizeikräfte"];
_role5 = "TeamSpeak 3";
_role5names = ["pc-gamercom.de:9999"];
_role6 = "Anti Hack";
_role6names = ["Wir nutzen das PlayerIndex Ban System"];
_role7 = "Lest euch die Regeln durch";
_role7names = ["Die Regeln findet Ihr im Forum","Unwissenheit schützt nicht!"];
_role8 = "Projektleitung - Präsident";
_role8names = ["Big Mike"];
_role9 = "Admins";
_role9names = ["Dr. Hippel", "Fettfingaz"];
_role10 = "Support-Leitung";
_role10names = ["Bewerb Dich dazu im Forum","Bewerbung unter board.pc-gamercom.de"];
_role11 = "Supporter";
_role11names = ["Bewerb Dich dazu im Forum","Bewerbung unter board.pc-gamercom.de"];
_role12 = "Community Team";
_role12names = ["Bewerb Dich dazu im Forum","Bewerbung unter board.pc-gamercom.de"];
_role13 = "besonderer Dank geht an";
_role13names = ["PC-Gamercom.de","Speed-Domains.eu","Unsere Unterstützer","und viele mehr, welche uns noch andersweitig supporten"];
_role14 = "Polizeipräsident";
_role14names = ["Fettfingaz"];
_role15 = "Feuerwehrpräsident";
_role15names = ["Ness"];

{
uisleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t font='PuristaBold' size='0.50' shadow='1' shadowColor='#FFFFFF' color='#2055a4' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t font='PuristaBold' size='0.65' shadow='2' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50],
[safezoneY + safezoneH - 0.8,0.7],
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
uisleep (_onScreenTime);
} forEach [
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names],
[_role10, _role10names],
[_role11, _role11names],
[_role12, _role12names],
[_role13, _role13names],
[_role14, _role13names],
[_role15, _role13names]
];