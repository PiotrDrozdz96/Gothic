# Gothic Mod Fix
+-- AI
|   +-- AI_Intern
|   |   +-- AI_Constans
|   |   |    // Dodanie PLAYER_MOBSI_PRODUCTION do obsługi obiektów interaktywnych
|   |   |    // Dodanie dodatkowych AIV_AR(AttackReason)
|   |   |    // Dodanie dodatkowych AIV_L(LOCATION)
|   |   |    // Dodanie AIV_DIALOGFLAGS aby móc rozmawiać z kobietami
|   |   +-- AI_MM_Constans
|   |   |    // Dodanie dodatkowych ID (40 i wyżej)
|   |   |    // Dodanie ID dzika
|   |   +-- perceptions
|   |   |    // dodanie funkcji b_clearperceptions
|   |   |    // dodanie funkcji monsterrtnperception
|   +-- B_Monster
|   |   +-- B_InitMonsterAttitudes
|   |   |    // Dodanie Attitudes orków
|   |   +-- B_SetGuildAttitude
|   |   |    // Usprawnienie funkcji poprzez dodanie GIL_SEPERATOR_ORC
|   +-- Monster
|   |    // Mst_OrcScout/Mst_OrcWarrior - Dodanie aivar[AIV_IMPORTANT], czasami zmiana start_aistate
|   +-- Orc
|   |    // Usunięcie B_InitOrcAttitudes, bo przeszły do B_InitMonsterAttitudes
|   |    // Usunięcie TestOrc i TestOrcSlave bo są nie potrzebne, a korzystały z B_InitOrcAttitudes
|   |    // Zmiana B_Orc_AssessDamage z fixModa
|   |    // Zmiana B_Orc_AssessMurder z fixModa
|   |    // Zmiana B_Orc_SmartTurn z fixModa
|   |    // Zmiana B_Orc_AssessWarn z fixModa z pominięciem reagowania na partymember
|   |    // Zmiana B_Orc_DrawWeapon z fixModa
|   |    // Usunięcie B_Orc_AssessDefeat
|   |    // Usunięcie B_Orc_AssessSomethingEvil
|   |    // Usunięcie B_Orc_CheerFight
|   |    // Usunięcie B_OrcSlave_Quicklook
|   |    // Zmiana Orc_Perc z fixModa
|   |    // Usunięcie OrcSlave_Perc, był pusty
|   |    // Zmiana TA_Orc z fixModa
|   |    // Zmiana ZS_Orc_Attack z fixmoda, zakomentowanie motywu z slave i master, zmiana AI_DrawWeapon na B_SelectWeapon aby szamani działali poprawnie
|   |    // dodanie ZS_Orc_AttackMage.d
|   |    // dodanie ZS_Orc_FollowPC.d
|   |    // dodanie ZS_Orc_ObservePC.d
|   |    // Usunięcie ZS_Orc_ObserveItruder
|   |    // Zmiana ZS_Orc_TA z fixmoda z pliku b_orc_removeweapon, bez zmiany funkcji ZS_Orc_EatAndDrink
|   |    // dodanie ZS_Orc_Upset.d
|   |    // Zmiana ZS_Orc_WatchFight z fixmoda
|   |    // Usunięcie ZS_OrcSlave_AssessDamage
|   |    // dodanie ZS_OrcSlave_ReactToDamage.d
|   +-- ZS_Babe
|   |    // Zmiana w B_Babe_RefuseTalk, aby móc rozmawiać z kobietami
|   +-- ZS_Monster
|   |    // Zmiana ZS_MM_Master z fixmoda, dodanie zmiennej MASTER
|   +-- ZS_Human
|   |   +-- ZS_Dead | ZS_Unconscious
|   |   |    // odpalenie funkcji B_ClearDeadTrader
|   |   |    // oznaczenie self.aivar[ AIV_WASDEFEATEDBYSC ] = TRUE;
|   |   |    // Odpalenie funkcji B_ClearRuneInv
+-- _Intern/constans
|   |    // dodanie ITEM_DROPPED = 1 << 24
+-- Story
|   +-- B
|   |    // dodanie B_IamInWater.d
|   +-- StoryGlobals
|   |    // dodanie dodatkowych zmiennych
