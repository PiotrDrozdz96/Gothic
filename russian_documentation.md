+-- AI
|   +-- AI_Intern
|   |   +-- AI_Constans
|   |   |    // Dodanie dodatkowych AIV_AR(AttackReason)
|   |   |    // Dodanie dodatkowych AIV_L(LOCATION)
|   |   +-- AI_MM_Constans
|   |   |    // Dodanie dodatkowych ID (40 i wy¿ej)
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
|   |    // Mst_OrcShaman - Zwiêkszenie many do 200, 6 kr¹g magii
|   +-- Orc
|   |    // Usuniêcie B_InitOrcAttitudes, bo przesz³y do B_InitMonsterAttitudes
|   |    // Usuniêcie TestOrc i TestOrcSlave bo s¹ nie potrzebne, a korzysta³y z B_InitOrcAttitudes
|   |    // Zmiana B_Orc_AssessDamage z fixModa
|   |    // Zmiana B_Orc_AssessMurder z fixModa
|   |    // Zmiana B_Orc_SmartTurn z fixModa
|   |    // Zmiana B_Orc_AssessWarn z fixModa z pominiêciem reagowania na partymember
|   |    // Zmiana B_Orc_DrawWeapon z fixModa
|   |    // Usuniêcie B_Orc_AssessDefeat
|   |    // Usuniêcie B_Orc_AssessSomethingEvil
|   |    // Usuniêcie B_Orc_CheerFight
|   |    // Usuniêcie B_OrcSlave_Quicklook
|   |    // Zmiana Orc_Perc z fixModa
|   |    // Usuniêcie OrcSlave_Perc, by³ pusty
|   |    // Zmiana TA_Orc z fixModa
|   |    // Zmiana ZS_Orc_Attack z fixmoda, zakomentowanie motywu z slave i master
|   |    // dodanie ZS_Orc_AttackMage.d
|   |    // dodanie ZS_Orc_FollowPC.d
|   |    // dodanie ZS_Orc_ObservePC.d
|   |    // Usuniêcie ZS_Orc_ObserveItruder
|   |    // Zmiana ZS_Orc_TA z fixmoda z pliku b_orc_removeweapon
|   |    // dodanie ZS_Orc_Upset.d
|   |    // Zmiana ZS_Orc_WatchFight z fixmoda
|   |    // Usuniêcie ZS_OrcSlave_AssessDamage
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
|    // Wywalenie testowych orków z parsowania
|    // Zmiany kolejnoœci AI\Orc i Story\ZS, drobne wykasowania
+-- Zauwa¿one b³êdy
|    // Orkowie nie jedz¹ i nie pij¹ choæ nie by³o to zmienianie problem z "POTION/0/1" i "FOODHUGE/0/1"
|    // Orkowi Szamani nie atakuj¹ magi¹ tylko tym swoim kijaszkiem, jeœli w nich wbiegamy. Przy ostrym wkuriwe jest ok.
|    // Trzeba chyba odwróciæ model orkowej laski bo przy czarowaniu trzyma j¹ chyba na odwrót
|    // Ludzie atakuj¹ orka, jednak bo zabiciu orka atakuj¹ bohatera
