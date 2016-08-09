waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["credits","Credits"];
//player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];
//player createDiarySubject ["policerules","Police Procedures/Rules"];
//player createDiarySubject ["safezones","Safe Zones (No Killing)"];
//player createDiarySubject ["civrules","Civilian Rules"];
//player createDiarySubject ["illegalitems","Illegal Activity"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
					TEXT HERE<br/><br/>
				"
		]
	];
*/

	player createDiaryRecord ["credits",
		[
			" Staat der Visionäre Life",
				"
					 Staat der Visionäre Life ist ein RP Server geschrieben von Big Mike, aufgrund der Grundlage von Tonic.<br/><br/>
				"
		]
	];

	player createDiaryRecord["changelog",
		[
			"Altis Life Change Log",
				"
					The official change log can be found in ArmaLife github.<br/><br/>

					v4.3 release 4!<br/>
					by: danielstuart14<br/>
					31. January 2016<br/><br/>

					v4.3.2 release!<br/>
					by: danielstuart14<br/>
					22. January 2016<br/><br/>

					v4.3.1 release!<br/>
					by: danielstuart14<br/>
					19. January 2016<br/><br/>
				"
		]
	];

	player createDiaryRecord["changelog",
		[
			"Server Change Log",
				"
					This section is meant for people doing their own edits to the mission, DO NOT REMOVE THE ABOVE.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"§1 Verhaltensregeln",
			"
			<br/>
			Keine Beleidigungen, rassistische Äußerungen, Parolen oder anderweitige destruktive Kommunikation (dieses gilt auch für Spielernamen)
			(Ausnahme: Beleidigungen mit RP-Hintergrund im Spiel)<br/>
			Kein Spammen
			Jeder Spieler sollte zwischen Ingame Feindseeligkeiten und persönlichen Hintergründen im Ts bzw. im realen Leben differenzieren können.
			Mit sofortiger Wirkung hat die Aussage “Allahu Akbar” und sämtliche weitere Aussagen, die mit solch extremer Gewalt (durch Religion)<br/> in der realen Welt verbunden sind hier nichts mehr zu suchen!<br/> Ein unmittelbarer Perm Ban kann als Konsequenz gezogen werden.<br/>
			<br/>
			Teamspeak
			<br/>
			Informationen aus dem Teamspeak dürfen nicht zu Spielzwecken genutzt werden<br/>
			(z.B. “Polizist X” bekommt im Teamspeak mit, dass “Gang Y” beim Drogendealer ist.<br/> Polizist darf diese Information nicht nutzen / an seine Kollegen weitergeben)<br/>
			Ausnahme: Kommunikation einzelner Gruppen untereinander (Zivilisten, Polizei, Feuerwehr)<br/>
			Polizisten haben sich während ihres Dienstes grds. nicht in Zivilisten-/Gangchanneln aufzuhalten.<br/>
			<br/>
			Spiel
			<br/>
			Die Kommunikation via SMS ist grundsätzlich nicht RP-tüchtig,<br/> da nicht davon ausgegangen werden kann, dass der andere ein Handy besitzt<br/> (Ausnahmen sind hier in den Regeln aufgeführt).<br/> Zudem besitzt der Staat kein öffentliches Telefonbuch. Drohungen via SMS sind somit ungültig.<br/>
<br/>

			"
				
		]
	];


// Server
	player createDiaryRecord ["serverrules",
		[
			"§2 Banngründe",
			"
			<br/>
			Supporter bzw. Admins entscheiden über passende Konsequenzen / Strafen.
			<br/>
			Hacken / Cheaten
			<br/>
			Hacker und Cheater werden mit einem permanenten Ban bestraft<br/>
			Combatlogging<br/>
			Spiel beenden/ Ausloggen während einer Kampf-/Rollenspielsituation oder im Todesbildschirm<br/>
			Fremdwerbung<br/>
			Werbung für andere TANOA Life Server auf dem Spielserver, im Forum oder auf dem Teamspeak wird mit einem permanenten Ban bestraft.<br/>
			<br/>
			Bugusing 
			<br/>
			·         z.B. Money/ Itemduping, Wall Glitch, aussteigen aus Fahrzeugen oder einsteigen mit Handschellen, Fasttravel, Waffen von Leichen Looten (auch von eigenen Gangmitgliedern ist Verboten) , Aus dem Fahrzeug heraus zu tanken oder auch sachen zu kaufen bzw. verkaufen 24H Ban<br/>
			·         Das Schießen in/aus Schilfs ist verboten und wird als Bugusing geahndet!<br/>
			<br/>
			Random Deathmatch (RDM)
			<br/>

			·         Töten ohne Rollenspielhintergrund.<br/>
			·         Kollateralschäden im Kreuzfeuer gelten nicht als RDM. Töten in Selbstverteidigung (z.B., wenn man überfallen wird) gilt nicht als RDM.<br/>
			·         Das Töten von kooperativen Opfern ist untersagt. Es sei denn die Gangmitglieder/ Mitarbeiter schreiten zu einer Befreiungsaktion ein.<br/>
			·         Situationen werden von Fall zu Fall beurteilt.<br/>


			Die Entgültige Strafe liegt nichts desto trotz im Ermessen des Supporters/Admin! (Bei jedem Ban.)
			<br/>

			"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"§3 Safezones",
				"
				
				<br/>
				Safezones sind alle auf der Map (grün) markierten Bereiche.
				<br/>
				· In Safezones darf niemand überfallen oder getötet werden, ebenso ist der Diebstahl & Aufbrechen von Fahrzeugen verboten.<br/>
				· Die Flucht, in eine Safezone ist Verboten.<br/>
				· Safezones sind in einem Radius von 50 Metern um folgende Bereiche:<br/>
				- Jeder auf der Karte Markierte ATM!<br/>
				- Jeder offizielle Fahr-/ Flugzeugspawn (Shop/Garage)<br/>
				- Händler (Markt, Gemischtwarenhändler, Kleidungshändler, Fahrzeughändler, Waffenhändler)<br/>
				- Alle Polizei HQ´s und Checkpoints<br/>
				- Jedes Krankenhaus ist eine Safezone, aus welcher nicht gespottet werden darf.<br/>
				<br/>
				·Das dauerhafte Schweben & Überfliegen über Polizeigelände ist untersagt, bei Zuwiderhandlung darf die Polizei das Feuer eröffnen!<br/>
				·Katkoula, Georgtown, Tuvanka, Balavu und Moddergat sind Safezones, in diesen Städten ist erlaubt: Einbruch in Häuser und das Verteidigen <br/>von eignen Häusern durch Schusswaffengebrauch. Jeder andere Diebstahl in diesen Städten (Autos knacken usw.) ist Verboten..<br/>
				·Bei einer Hausdurchsuchung von der Polizei in einer Safezone dürfen der Hausbesitzer und die zugehörige Gang (und keine andere Partei) das<br/> Haus mit Waffengewalt verteidigen. Sollte bei einem solchen Schusswechsel eine unbeteiligte Person zu Schaden kommen ist<br/> der Schaden durch den Auslöser komplett zu ersetzen, wird dies nicht getan wird der Vorfall als RDM gewertet.<br/>
				·(kommt bald) Das Polizei Trainingsgelände ist absolutes Sperrgebiet, die Polizei besitzt sofortige Schießerlaubnis bei unbefugtem Betreten <br/>des Geländes, die Unbefugten, welche das Gelände betreten, sind nicht dazu befugt das Feuer zu erwidern.<br/>
				<br/>
				In Savezones ist folgendes NICHT gestattet:<br/>

				·         Diebstahl von Fahrzeugen<br/>
				·         Niederschlagen/Ausrauben anderer Personen<br/>
				·         RDM/VDM<br/>
				·         Das Zünden/Anbringen von Bomben<br/>
				·         Entführen von Personen<br/>
				·         Lösegeldübergabe<br/>
				·         Trolling<br/>
				<br/>
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"§4 Luft- und Bodenfahrzeuge",
				"
				<br/>
				· Absichtliches vor Fahrzeuge laufen kann zu einem Kick oder bei wiederholtem Male zum Ban führen. (Trolling)<br/>
				· Absichtliches Überfahren von anderen Spielern ist verboten (VDM).<br/>
				· Das Überfahren von Personen in Kampfsituationen ist erlaubt.<br/>
				· Das Rammen von Fluggeräten ist verboten.<br/>
				· Gepanzerte Fahrzeuge dürfen sich gegenseitig rammen<br/>
				· Bei ein und aussteigen eines Fahrzeugs muss mindestens 10 Sek. Zeit gelassen werden um dieses abzuschließen.<br/>
				· Das absichtliche Zerstören von gestohlenen Fahrzeugen jeglicher Art ist untersagt.<br/>
				· Bei Ankündigung (Halt stehen bleiben etc.) darf erst dann auf die Reifen des flüchtenden Fahrzeuges geschossen <br/>werden wenn dieser nicht sofort anhält.<br/>
				· Illegale Landfahrzeuge ( Ifrit, sowie bewaffnete Fahrzeuge) dürfen bei sofortiger Sichtung lahmgelegt werden.( Nur von der Polizei ! )<br/>
				<br/>
				<br/>
				· In einer Verfolgungsjagd ist es erlaubt ein Fahrzeug von der Seite zu rammen, man darf sich auch vor ein Fahrzeug setzen und abrupt abbremsen.<br/>
				· Jedoch nicht erlaubt ist es ein Fahrzeug frontal zu rammen und mit erhöhter Geschwindigkeit von hinten zu rammen. Es sollte versucht werden, <br/>das Fahrzeug zu stoppen und nicht zum explodieren zu bringen.<br/>
				· Sollten bei diesem handeln eines der beiden bzw. alle Fahrzeuge in die Luft gehen, wird dies nicht ersetzt. Beide Parteien sollten wissen, <br/>ab wann eine Verfolgungsjagd im Gange ist.<br/>
				<br/><br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"§5 Kommunikation",
				"
				·Rollenspiel heißt Kommunikation und dafür spielen wir TANOA Life, also Sprich mit den Leuten!<br/>
				·Spammen in jeglicher Form ist verboten.<br/>
				·Beleidigungen etc. im Direktchat sind verboten!<br/>
				·Jegliche SMS, welche eine Gewaltandrohung beinhaltet, wird nicht als RP-Eröffnung gewertet. <br/>[Ausnahmen: Banküberfall, Geiselnahme, Checkpoint/Stadteinnahme, Krieg]<br/>
				<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"§6 New Life Regel",
				"
				
				<br/>
				·Die New Life Regel gilt für alle Fraktionen und wird nur durch eine RP- Situation ausgelöst.<br/>
				·Beginnt ein neues Leben, sind alle vorherigen Straftaten, Drohungen etc. nur vergessen, wenn man durch einen Polizisten zu Tode kommt.<br/>
				·Hat man vor dem Tod eine Morddrohung o.Ä. einer Gruppe bzw. einer Einzelperson erhalten, sollte man diese über sein New Life informieren.<br/>
				·Wenn du getötet wurdest, darfst du dich dem Ort deines Todes 30 Minuten höchstens auf 2500m (2,5km) nähern. Wobei ein einmaliges schnelles<br/> daran vorbei fahren / fliegen erlaubt ist.<br/>
				·Bei einen Banküberfall darf ein verstorbener nicht mehr in das Geschehen eingreifen. ( Funk, Gruppenchannel, Spielgeschehen).<br/>
				·Die Verbrecherkartei kann nur durch die Tötung eines Polizisten oder eine Strafe der Cops gelöscht werden oder wenn man die Strafe im Gefängniss abgesessen hat.<br/>
				·Sterben durch Bugs, löst die New Life Regel nicht aus(es muss ein Video vorliegen.<br/>
				·Durch die Reanimation eines Medic tritt die New Life Regel nicht in Kraft. Der Feuerwehr/ Feuerwehr-beamte muss die Person zur Versorgung ins Krankenhaus mitnehmen.<br/>
				·Liegt die Spielerzahl der Polizei bei unter 6 (Anzahl <= 6), und das Geschehen hat sich nicht zum Großteil aufgelöst, darf die Polizei nach 15 Minuten wieder ins Geschehen eingreifen.<br/>
				·Wenn eine Person im Zuge eines Überfalls an der Mine/Verarbeiter stirbt, ist es dieser Person verboten am Ort des Todes und des folgenden Verarbeiter/Händler erneut in das Geschehen einzugreifen<br/> ( hierbei gillt ein Richtwert von 30Min ). Dies wird als New-Life-Bruch gewertet und entsprechend bestraft. <br/>(Beispiel1: Person X überfällt am Metallverarbeiter und stirbt. Es ist ihm verboten am Metallhändler die selbe Person noch einmal zu überfallen. Beispiel 2: Person X wird an der Mine überfallen und stirbt.<br/> Es ist dieser Person im Anschluss verboten ein geklautes Fahrzeug am Verarbeiter oder dem Händler zurückzuerobern.) <br/>Ist der Richtwert von 30 Min erreicht so darf man sich wieder ohne Probleme dem Ort nähern.<br/>
				<br/>
				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"§7 Die Zentralbank",
				"
				Zahl der benötigten Polizisten: 8<br/>
				<br/>
				<br/>
				·Die Sperrzone um die Zentralbank (falls ausgeraubt) beträgt 1500 Meter (1,5 km).<br/>
				·Die Zentralbank ist eine Sperrzone für Zivilisten.<br/>
				·Sollten Zivilisten auf dem Gelände angetroffen werden, muss mit Verhaftung gerechnet werden, die Schussfreigabe muss vom Einsatzleiter genehmigt werden.<br/>
				·Um die Zentralbank ausrauben zu können müssen min. 8 Polizisten im Dienst gemeldet sein.<br/>
				·Fahrzeuge welche als Sperre dienen oder den Einsatz der Polizei gefährden/ behindern, dürfen in Gewahrsam genommen werden.<br/>
				·Ab dem ersten Alarm besteht eine Sperrzone im Umkreis von 1,5km der Bank, welche erst nach Benachrichtigung durch die Polizei aufgehoben wird.<br/>
				·Diese Sperrzone muss nicht zusätzlich von der Polizei angekündigt werden.<br/>
				·Außerhalb der Rot markierten Zone ( Rote Linie ) ist es erlaubt , wenn eine ankündigung erfolgt , ein eingriff durch Dritte zu starten .<br/>
				<br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"§8 Gang",
				"
				
				<br/>
				Bei Polizeieinsätzen in Ganggebieten, entscheiden die Beamten selbst, welche Mittel genutzt werden, um Bedrohungen zu kontrollieren. Zudem dürfen auch Unbewaffnete überwältigt werden.<br/>

				Eine Gruppenzugehörigkeit kann grds. nicht herausgefunden werden (RP z.B. Datenbank-Polizei).<br/>
				Ausnahme: Truppenbild auf Fahrzeugen (squad.xml)<br/>
				Ein Clan-Tag ist Pflicht, das Clantag kann aus z.B [UPV]Test oder Test van darwin bestehen, d.h. entweder vor oder hinter dem Namen in Klammern[ ] oder einen gleichen Hausnamen. Überfälle <br/>oder Tötungen ohne Clan-Tag in einer Situation der Gang werden bestraft. Wenn ihr einen Rang habt z.B. Major,Leutnant etc. <br/>Müssen diese außerhalb der Klammer oder vor dem Hausnamen stehen. Denn sonst gilt das als anderes Clantag oder es Geht auch z.B so :<br/> |TST|General| oder [TST]Generall] die Hauptsache ist, dass das Clantag alleine steht.<br/>
				Wenn ein Gangversteck eingenommen wird/ist , und eine andere Fraktion dort hin kommt heißt es nicht Direkt feuer Frei ,<br/>
				macht RP Sprecht mit den Leuten das ihr das eingenommen habt und die sich verziehen soll . Wird dem nicht Folge geleistet und ihr habt den personen genügend Zeit gegeben so dürft Ihr Reagieren.<br/>

				Ausgehend von Beschlüssen aus dem Servermeeting 15.02.2015 werden Bündnisse unter Gangs untersagt, sowie das Gangmitglieder Limit auf 10 (+/- 2) gesetzt<br/>
				(bezieht sich nur auf die Zahl der Personen, welche gleichzeitig online sind).<br/>
				Gemeinsames farmen ist ebenfalls nicht erlaubt, da dieses für Bündnisse untereinander ausgenutzt wurde.<br/>
				Eine Gang hat sich im Forum anzukündigen.<br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"§9 Geiselnahmen",
				"

				<br/>
				Zahl der benötigten Polizisten: 5<br/>


				·Der Polizei muss mind. zehn Minuten zur Antwort auf die erste Nachricht gegeben werden.<br/>


				·Geiseln dürfen nicht aus eigenen Reihen stammen.<br/>
				·Bei Geldforderungen, Geiselnahmen & Freikaufen von gestohlenen Fahrzeugen werden Gelder nicht auf das Konto überwiesen.<br/> Diese Forderungen müssen immer in Bar mit einem Verhandlungspartner oder einem gewählten Vertreter<br/>, an einem Ort der Übergabe, geregelt werden.<br/>
				·Eine Forderung darf folgendes nicht beinhalten: Polizeifunkgeräte überhebliche Foderrungen (z.B 20 Millionen Euro). Alle anderen Forderungen sind mit einem Beamten vor Ort zu klären.<br/>
				·Die Polizei hat jederzeit das Recht einen Zugriff zu durchzuführen. (Bei einem Zugriff muss das Hauptziel sein die Geisel lebend zu retten)<br/>
				·Eine Geiselnahme muss mindestens 1 Stunde vor Server Restart beginnen. (Durch den Server Restart ist das Roleplay beendet)<br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"§10 Spielgeschehen",
				"

				<br/>
				Spieler und Fahrzeug Inventar<br/>

				·         Wenn ein Fahrzeug von der Polizei beschlagnahmt wird, hat der Spieler keinen Anspruch auf Ersatz des Fahrzeuginventars.<br/>
				·         Nach Aufforderung durch Polizeibeamte ist jeder dazu verpflichtet, sich komplett zu entkleiden (inklusive Westen, <br/>dieses ist nur auf Polizeigelände auszuführen).<br/>

				<br/>
				Schießereien
				<br/>

				·         Taxi / Feuerwehr / Eventteam sind neutral d.h. Beschuss und der Diebstahl deren Fahrzeuge ist untersagt und wird geahndet <br/>(bis zum Permanent-Bann ist alles möglich).<br/>
				·         Eine Ausnahme stellt das Verhalten dar indem er sich in die direkte Schusslinie begibt.<br/>
				·         Bei Ankündigung (Halt stehen bleiben etc.) darf erst dann auf die Reifen des flüchtenden Fahrzeuges geschossen werden wenn<br/> dieser nicht sofort anhält.<br/>
				·         Man darf auf Helikopter Schiessen sofern keine Person dabei getötet wird oder der Heli abstürzt durch diese Schüsse.<br/> Wird die Person ausversehen erschossen oder ist der Heli<br/> abgestürzt ist mit der betroffenen Person Kontakt herzustellen um über Ausfall,<br/> Preise etc. zu sprechen. Zurückgeschossen werden darf nur sofern die gestoppte<br/>Person / Gruppe / Partei das Feuer eröffnet! Wenn der Pilot nicht nach 3 min abdreht, <br/>darf das Feuer auf den Heli ( Personen ) eröffnet werden.<br/>
				·         Direktes schießen auf Personen ist nur gestattet, wenn man ihn laut und deutlich vorgewarnt hat.<br/>
				·         Wenn Fahrzeuge gewaltsam gestoppt werden, (Nagelband, usw.) gilt dies NICHT als RP-Eröffnung<br/>
				·         Wird ein Spieler ermordet, erschossen oder Stirbt aus irgendwelchen gründen, und wird wiederbelebt, so hat er dem Feuerwehr ins nächste Krankenhaus zu begleiten um das Roleplay fortzusetzen.<br/> Das nicht befolgen, sei es von Polizei, Feuerwehr oder Zivilist führt nach der ersten Verwarnung zu einem Ban von 4 Stunden.<br/>


				<br/>
				Rebellen Regeln
				<br/>
				·         Ein Rebell ist ein Zivilist der sich als Gegner des Systems erklärt und gegen dieses Widerstand ausübt.<br/>
				·         Sei kreativ. Finde Gründe dafür gegen das System zu sein und erfinde kreative Möglichkeiten des Widerstands.<br/>
				·         Jede Aktion benötigt einen guten Rollenspielhintergrund.<br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"§10.1 Spielgeschehen Feuerwehr",
				"

				<br/>
				Wird ein Spieler ermordet, erschossen oder Stirbt aus irgendwelchen gründen, und wird wiederbelebt,<br/> 
				so hat er dem Feuerwehr ins nächste Krankenhaus zu begleiten um das Roleplay fortzusetzen.<br/>
				Der Patient / Spieler, darf den Ort nach<br/>

				"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"§11 Geldwäsche",
				"


				Das Überweisen von Geldern zu bestehenen Spielern ist auf einer Summe von 150.000 $ Dollar begrenzt.<br/>
				Das Überweisen von Mehr als 30.000 $ an neuen Spielern führt zum Geldreset.<br/>

				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Use of Non-Lethal Force",
				"
				At this time the Taser (Silenced P07) is the only form of Non-Lethal Force.<br/><br/>

				1. Taser should be used to incapacitate non complying civilians in order to restrain them.<br/>
				2. Do not discharge your Taser unless you intend to incapacitate a civilian, randomly discharging your weapon will result in your suspension.<br/>
				3. Only use your Taser in compliance with the laws and the rules, do NOT enforce your will on others.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Raiding/Camping",
				"
				Raiding is defined as a squad of police officers invading an area of high criminal activity in order to stop the criminals in illegal acts.<br/><br/>

				1. In order to raid an area, the cops must have at least 4 officers involved, one of which must be a Sergeant or above.<br/>
				2. All civilians in a raid area may be restrained and searched. If nothing illegal is found, you must let them go.<br/>
				3. If illegals are found during a search, you may proceed to arrest or fine as usual.<br/>
				5. Lethal force is only authorized as described under 'Use of Lethal Force'.<br/>
				6. After the area is secure, the officers must leave the area.<br/>
				7. An area cannot be raided again for 20 minutes after a previous raid.<br/>
				8. If the raid is a failure (All officers die), the 20 minute timer still applies to those officers.<br/>
				9. Backup may be called in, but it may not consist of fallen officers (see 'New Life Rule').<br/><br/>

				Camping is defined as the prolong stay of an officer in an area.<br/><br/>

				1. Checkpoints are not considered camping. See Checkpoint section for a definition of proper checkpoint procedures.<br/>
				2. See Bank Robbery and Agia Marina Protocol sections for more info on camping in the main town.<br/>
				3. Camping of illegal areas is staying longer than needed after a raid, or if officers do not conduct a raid but continue to watch and take action against civilians entering the area.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Chain of Command",
				"
				The highest ranking officer on duty is in charge of the police force outside of admins currently online. The high ranking officer is expected to follow the rules and guidelines of his/her rank, and must report to the admin in case any action need be taken.<br/><br/>

				Police Chain of Command:<br/>
				1. Chief<br/>
				2. Deputy Chief<br/>
				3. Superintendent<br/>
				4. Captain<br/>
				5. Lieutenant<br/>
				6. Sergeant<br/>
				7. Senior Patrol Officer<br/>
				8. Patrol Officer<br/>
				9. Cadet<br/><br/>

				Cops in game who are not enrolled/accepted into the SPD are the lowest tier and have no say in police operations.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Use of Lethal Force",
				"
				1. Use of Lethal force is only permitted for the protection of your life, another officers life, or a civilians life, if and only if non-lethal force would not be effective.<br/>
				2. Discharging of a weapon when not under threat or not during training exercises is not allowed. Officers caught in violation of this rule will be removed from the server and suspended from the SPD.<br/>
				3. Failure to follow proper weapons discipline and procedure will get you removed from the server and suspended from the SPD.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Teamspeak Rule",
				"
				1. All cops must be on Teamspeak 3 in a designated cop channel. Failure to be on Teamspeak during an admin check will result in your immediate dismissal from the server.<br/>
				2. Please join Teamspeak BEFORE you spawn in as a cop, heck, join Teamspeak before you even join the server.<br/><br/>
				"
		]
	];



// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebel Rules",
				"
				A rebel is one who rises in armed resistance against a government. In this case it would be the police. However, due to the small amount of police compared to the possible amount of rebels, do not attack the police without a reason, please be civil and use common sense, and don't take the word rebel literally, but instead how it will make this server fun for all.<br/><br/>
				1. A rebel must first form a gang, and then declare intentions.<br/>
				2. Resistance does not excuse RDMing (See RDMing in General Rules)<br/>
				3. Resistance roleplay should be conducted in more ways than constantly robbing the bank or shooting police officers.<br/>
				4. Resistance must be coordinated.<br/>
				5. A PROPER reason must be behind each and every attack.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang Rules",
				"
				1. Being in a gang is not illegal. Only when illegal crimes are committed.<br/>
				2. Being in a gang area is not illegal. Only when partaking in illegal activities.<br/>
				3. Gangs may hold and control gang areas. Other gangs may attack a controlling gang to compete for control of a gang area.<br/>
				4. To declare war on another gang, the leader must announce it in global and all gang members of both gangs must be notified. For a more long term gang war, a declaration should be made on the forums.<br/>
				5. Gangs may not kill unarmed civilians, unless said civilian is part of a rival gang and in your gangs controlled area.<br/>
				6. Gangs may not kill civilians, unless they are under threat. Killing unarmed civilians because they do not comply is considered RDM, but you can injure/damage.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Vehicles",
				"
				A civilian in control of the following prohibited vehicles is subject to the consequences defined in the unauthorized control of a prohibited vehicle law.<br/><br/>

				1. Ifrit<br/>
				2. Speedboat<br/>
				3. Hunter<br/>
				4. Police Offroad<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Weapons",
				"
				A civilian in possession of the following is subject to the consequences as defined in the illegal possession of a firearm law.<br/><br/>

				1. MX Series<br/>
				2. Katiba Series<br/>
				3. TRG Series<br/>
				4. Mk.20 Series<br/>
				5. Mk.18 ABR<br/>
				6. SDAR Rifle<br/>
				7. Sting SMG<br/>
				8. Silenced P07 (Taser)<br/>
				9. Any explosives<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegal Items",
				"
				The following items are illegal to posses:<br/><br/>
				1. Turtle<br/>
				2. Cocaine<br/>
				3. Heroin<br/>
				4. Cannabis<br/>
				5. Marijuana<br/><br/>
				"
		]
	];


// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Y: Spieler Menü öffnen<br/>
				U: Öffnen und Schließen von Fahrzeugen, Häusern <br/>
				F: Polizei oder Sanitäter Sirene ( wenn man in der Fraktion ist)<br/>
				T: Kofferraum<br/>
				Left Shift + B: Aufgeben<br/>
				Left Shift + R: Verhaften ( Polizei )<br/>
				Left Shift + G: Niederschlagen ( nur für Zivilisten, ausrauben )<br/>
				Left Windows: Aktionstaste für vieles<br/>
				Left Windows + T: Sachen aufsammeln und Farmen<br/>
				Left Shift + L: Aktiviert die Rundumluchte ( Polizei und Sanitäter )<br/>
				Left Shift + H: Waffe holstern
				"
		]
	];
