//Auto Speichern alle 10 Min

while {true} do {
 sleep 600; 
 if (alive player) then 
 {
 [false] call SOCK_fnc_syncData;; 
 hint "Spiel automatisch gespeichert.";
 diag_log "Spiel automatisch gespeichert.";
 };
};