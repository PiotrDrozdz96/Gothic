+-- AI
|   +-- AI_Intern
|   |   +-- AI_Constans
|   |   |    // Dodanie dodatkowych AIV_AR(AttackReason)
|   |   |    // Dodanie dodatkowych AIV_L(LOCATION)
|   |   +-- AI_MM_Constans
|   |   |    // Dodanie dodatkowych ID (40 i wy�ej)
|   |   +-- perceptions
|   |   |    // dodanie funkcji b_clearperceptions
|   |   |    // dodanie funkcji monsterrtnperception
|   +-- B_Monster
|   |   +-- B_InitMonsterAttitudes
|   |   |    // Dodanie Attitudes ork�w
|   |   +-- B_SetGuildAttitude
|   |   |    // Usprawnienie funkcji poprzez dodanie GIL_SEPERATOR_ORC
|   +-- Monster
|   |    // Mst_OrcScout/Mst_OrcWarrior - Dodanie aivar[AIV_IMPORTANT], czasami zmiana start_aistate
|   |    // Mst_OrcShaman - Zwi�kszenie many do 200, 6 kr�g magii
|   +-- Orc
|   |    // Usuni�cie B_InitOrcAttitudes, bo przesz�y do B_InitMonsterAttitudes
|   |    // Usuni�cie TestOrc i TestOrcSlave bo s� nie potrzebne, a korzysta�y z B_InitOrcAttitudes
|   |    // Zmiana B_Orc_AssessDamage z fixModa
|   |    // Zmiana B_Orc_AssessMurder z fixModa
|   |    // Zmiana B_Orc_SmartTurn z fixModa
|   |    // Zmiana B_Orc_AssessWarn z fixModa z pomini�ciem reagowania na partymember
|   |    // Zmiana B_Orc_DrawWeapon z fixModa
|   |    // Usuni�cie B_Orc_AssessDefeat
|   |    // Usuni�cie B_Orc_AssessSomethingEvil
|   |    // Usuni�cie B_Orc_CheerFight
|   |    // Usuni�cie B_OrcSlave_Quicklook
|   |    // Zmiana Orc_Perc z fixModa
|   |    // Usuni�cie OrcSlave_Perc, by� pusty
|   |    // Zmiana TA_Orc z fixModa
|   |    // Zmiana ZS_Orc_Attack z fixmoda, zakomentowanie motywu z slave i master
|   |    // dodanie ZS_Orc_AttackMage.d
|   |    // dodanie ZS_Orc_FollowPC.d
|   |    // dodanie ZS_Orc_ObservePC.d
|   |    // Usuni�cie ZS_Orc_ObserveItruder
|   |    // Zmiana ZS_Orc_TA z fixmoda z pliku b_orc_removeweapon
|   |    // dodanie ZS_Orc_Upset.d
|   |    // Zmiana ZS_Orc_WatchFight z fixmoda
|   |    // Usuni�cie ZS_OrcSlave_AssessDamage
|   |    // dodanie ZS_OrcSlave_ReactToDamage.d
|   +-- ZS_Monster
|   |    // Zmiana ZS_MM_Master z fixmoda, dodanie zmiennej MASTER
+-- _Intern/constans
|   |    // dodanie ITEM_DROPPED = 1 << 24
+-- Story
|   +-- B
|   |    // dodanie B_IamInWater.d
|   +-- StoryGlobals
|   |    // dodanie dodatkowych zmiennych
+-- Gothic.src
|    // Dodanie do parsowania B_IamInWater
|    // Wywalenie testowych ork�w z parsowania
|    // Zmiany kolejno�ci AI\Orc i Story\ZS, drobne wykasowania
+-- Zauwa�one b��dy
|    // Orkowie nie jedz� i nie pij� cho� nie by�o to zmienianie problem z "POTION/0/1" i "FOODHUGE/0/1"
|    // Orkowi Szamani nie atakuj� magi� tylko tym swoim kijaszkiem, je�li w nich wbiegamy. Przy ostrym wkuriwe jest ok.
|    // Trzeba chyba odwr�ci� model orkowej laski bo przy czarowaniu trzyma j� chyba na odwr�t
|    // Ludzie atakuj� orka, jednak bo zabiciu orka atakuj� bohatera
