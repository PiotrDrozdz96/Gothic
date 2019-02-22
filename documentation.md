+--B
|   +--|-- B_BuyAtrributePoints
|   |   //Uwzględnie tarcz przy nauce siły
|	+--|-- B_Give(Darrion/Fisk/Scorpio/Sharky/Skip/Wolf)ChapterWeapons
|   |   //Zmiany w sprzedawanych broniach z powodu zmian parametrów, oraz dodanie tarcz
|   +--|-- B_GiveSkill
|   |   // Dodanie tarcz
|   |   // Przebudowa nauki walki na 11 etapów
|   +--|-- B_Kapitelwechsel
|   |   // Kapitel 4 - Nie tracimy gildii Mag Ognia
|   |   // Kapitel 4 - EBR_105_Raven,GRD_(200/210/233/255),STT_(311/329),VLK_(538,581) - Wywalenie za barierę
|   |   // Kapitel 6 - Dostajemy naładowany Uriziel(1H/2H) w zależności od wcześniej posiadanego
|   +--|-- B_Story_AccesToXardas
|   |   // Otrzymanie runy teleportacyjnej na parter Wieży Xardasa
|/*******************************************B END***********************************************************
+--Dialogs
|   +--|-- DIA_EBR_100_Gomez
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu cieniem
|   +--|-- DIA_GRD_200_Thorus
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu strażnikiem
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Poprawa informacji w dzienniku po zostaniu strażnikiem z "Smitha" na "Kowala" /*Nieoficjalny Patch by Marev*/
|   |   // Nauka broni 2H po zabiciu Mordraga
|   +--|-- DIA_GRD_205_Scorpio
|   |   // Przebudowa nauki walki na 11 etapów
|   +--|-- DIA_GRD_210_Scatty
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Nauka walki tarczą
|	+--|-- DIA_GUR_1201_CorKalom
|   |   // Możliwość zostania guru
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu nowicjuszem/guru
|   +--|-- DIA_GUR_1202_CorAngar
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Uwzględnie guru w nauce walki broni 2H
|   |   // Zdobycie szaty arcyguru 
|   +--|-- DIA_GUR_1211_BallLukor
|   |   // Dodanie tarczy ITSH_R_ROUND
|   +--|-- DIA_KDF_402_Corristo
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu magiem Ognia
|   |   // Zwiększenie restrykcji przy zostaniu arcymagiem
|   +--|-- DIA_KDF_404_Xardas
|   |   // Nauka 6 kręgu niezależnie czy jesteśmy KDF,KDW,GUR
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu nekromantą
|   |   // Różne szaty gdy jesteśmy guru lub magiem Ognia
|   |   // Zwraca Uriziel_1H gdy lepiej posługujemy się bronią jednoręczną
|   +--|-- DIA_KDW_600_Saturas
|   |   // Zwiększenie restrykcji przy zostaniu arcymagiem
|   |   // Zmiany w dialogach o Xardasie
|   |   // Zmiany w zostaniu magiem wody, możemy zostać wcześniej
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu magiem wody
|   +--|-- DIA_ORG_801_Lares
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu szkodnikiem
|   +--|-- DIA_ORG_819_Drax -- by marev
|   |   // Uczy polowania dopiero gdy otrzyma piwo
|   +--|-- DIA_ORG_826_Mordrag -- by marev
|   |   // Nie zaprowadzi nas do obozu jeśli go pobiliśmy
|   +--|-- DIA_ORG_833_Buster -- by marev
|   |   // Uczy akrobatyki tylko raz
|   +--|-- DIA_ORG_841_Silas
|   |   // Naprawa handlu, był jednorazowy
|   +--|-- DIA_ORG_842_Shrike
|   |   // Poprawiona quest "Chata Krzykacza"
|   +--|-- DIA_ORG_855_Wolf
|   |   // Zmiany w sprzedawanych pancerzach
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Odsprzedawanie skór po normalnych cenach
|   +--|-- DIA_PC_Fighter
|   |   // Nauka walki bronią 2H po zostaniu szkodnikiem w systemie 11 etapowym
|   |   // Quest "Zawalona Wieża", zmiana rutyny na MeetFriend
|   +--|-- DIA_PC_Mage
|   |   // Quest "Zawalona Wieża", zmiana rutyny na MeetFriend
|   +--|-- DIA_PC_Psionic
|   |   // Quest "Zawalona Wieża", zmiana rutyny na MeetFriend
|   +--|-- DIA_PC_Thief
|   |   // Quest "Zawalona Wieża", zmiana rutyny na MeetFriend
|   |   // Odsprzedawanie starych monet
|   +--|-- DIA_SLD_700_Lee
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu najemnikiem
|   |   // Inny pancerz po zostaniu najemnikiem
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Informowanie Lee o przełomie w bractwie
|   +--|-- DIA_SLD_709_Cord
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Nauka walki tarczą
|   +--|-- DIA_STT_309_Whistler -- by marev
|   |   // Świstak odzyskuje 110 bryłek jeśli gracz poprosił o dadatkowe 10 bryłek
|   +--|-- DIA_STT_311_Fisk -- by marev
|   |   // Zadanie "Nowy paser dla Fiska" jest aktywowane niezależnie od sposobu pozbycia się Mordraga
|   |   // Fisk nie sprzedaje spodni kopacza, jeśli je posiadamy
|   +--|-- DIA_STT_331_Fingers -- by marev
|   |   // można prosić o nauke poziomu 2, dopiero gdy poznamy poziom 1
|   |   // rozmowa o Cavalornie i Diego nie daję w nieskończoność wpisu do dziennika
|   +--|-- DIA_STT_336_Cavalorn
|   |   // Przebudowa nauki walki na 11 etapów
|   +--|-- DIA_TPL_1402_GorNaToth
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Nie zaczepia nas gdy jesteśmy Guru
|   +--|-- DIA_VLK_572_Gravo -- by marev
|   |   // Poprawnie daje informacje do dziennika
|   +--|-- DIA_VLK_581_Snaf -- by marev
|   |   // Snaf może zostać zapytany o Neka również po zakończeniu zadania "Przepis Snafa"
|/*******************************************DIALOGS END*****************************************************
+--Inne
|   +--| constans
|   |   // Dodanie nowej kategorii przedmiotu ITEM_SHIELD = 1 << 1
|   |   // Dodanie numeru nowego talentu NPC_TALENT_SHIELD = 10
|   +--| Startup
|   |   // Dodanie tarczy ITSH_STALHRIM_S_SM w OrcTempel(TPL_254)
|   |   // Dodanie tarczy ITSH_LONG_A w OldWorld (OW_PATH_ORCRUIN_GOLEM)
|   +--| Story_Globals
|   |   // Stałe LPCOST_TALENT_SHIELD_(1/2)
|   |   // Zmienna Shield_Equip która zapamiętuje czy mamy założoną tarcze
|   |   // Stała XP_TOWER_IN_OC - doświadczenie za Quest "Zawalona Wieża"
|   |   // Zmienna Uriziel_1H
|   |   // Zmienne log_(bustertrain/gravoinfo/fingerscavalorn)
|   +--| Text
|   |   // Zmianna nazwy umiejętności na Tarcza, oraz dodanie nazw poziomów (Brak|Adept|Mistrz)
|   |   // Zmiany w nazwach poziomów dla broni białch (Brak|Zielony|Wojownik|Mistrz)
|   |   // Zmiany w nazwach poziomów dla broni dystansowych (Brak|Zielony|Strzelec|Mistrz)
|   |   // Zmiany w B_BuildBuyArmorString
|   |   // Dodanie stałej NAME_STR_GRAB = "Obciążenie Siły", używanej w tarczach
|   |   // Zmiana nazwy dla SPL_TELEPORT6, dawniej SPL_NEW2
|   +--| Gothic.src
|   |   // Przeniesienie G_funcions wyżej w kolejce parsowania
|   +--| magic_intern
|   |   // Zamiana stałej SPL_NEW2 na SPL_TELEPORT6
|/******************************************INNE END********************************************************
+-- Items
|   +--| Armor
|   |   // Dodano funkcje zmieniające skinBody podczas zakładania i zdejmowania zbroi (Głównie dla panerzy bractwa ale nie tylko)
|   |   // Strój Szkodnika został Ciężkim pancerzem Szkodnika
|   |   // Ciężki strój szkodnika został Lekkim pancerzem Najemnika
|   |   // Spodnie kreta mają teraz poprawną nazwe
|   |   // Dodano Starą Szate Xardasa(Ognia)
|   |   // Dodano pancerze bandytów dla bandy Quentina
|   |   // Zmodyfikowanie statystyk wszystkich pancerzy sugerując się wartościami z G2
|   +--| Artifacts
|   |   // Dodanie runy teleportującej na parter wieży Xardasa
|   +--| Food
|   |    // ItAt_Meatbug_01 -> zmieniona kategoria przedmiotu na FOOD
|   +--| Melee_weapons
|   |   // Przeniesienie imiennych broni z pliku weapons.d
|   |   // ITMW_1H_SWORD_BASTARD_02 -> Naprawa wyświetlania ręczności broni
|   |   // Zmodyfikowanie wszystkich broni sugerując się wartościami z G2
|   +--| Potions
|   |    // ItFo_Potion_Haste_(02/03) -> poprawione wartości
|   +--| Ranged_weapons
|   |   // Przeniesienie imiennych łuków z pliku weapons.d
|   |   // Zmodyfikowanie wszystkich łuków/kusz pod nowy system liczenia obrażeń dystansowych obrażenia + wymagana zręczność
|   |   // Kusze wymagają od teraz zarówno siły jak i zręczności
|   |   // Dodanie nowej kuszy
|   +--| Weapons
|   |   // Usunięcie imiennych broni
|   |   // Funkcje obsługujące tarcze, Dodanie Tarcz
|   |   // 3 wersje Uriziela 1H
|/*******************************************ITEMS END*******************************************************
|   +--| Spell_params | Spells_process_mana | Spells_process_released
|   |   // Dodanie zaklęcia SPL_TELEPORT6
|/*******************************************MAGIC END*******************************************************
+-- Monsters
|   +--| Mst_*
|   |   // Zmiany parametrów potworów
|/*******************************************MONSTERS END****************************************************
+-- NPC
|   +-- BDT_QUENTIN
|   |   +--| ORG_858_Quentin
|   |   |    // Zmiana pancerza na BDT_ARMOR_H
|   |   +--| ORG_(863-871/874)_Rauber
|   |   |    // Zmiana pancerza na BDT_ARMOR_M
|   |/********************NPC BDT_QUENTIN END********************************
|   +-- NEW_CAMP
|   |   +--| ORG_(800/804/834/837/892) / SLD_(707/738/762)_Soeldner
|   |   |    //Zmiany twarzy(double koło siebie), czasem pancerz i gildia
|   |   +--| ORG_875_Tuersteher / SLD_(700/701/709)
|   |   |    // Usunięcie Łuku
|   |   +--| ORG_(830/833)
|   |   |    // Zwiększenie Siły, dodanie tarczy ITSH_REINFORCED_A
|   |   +--| ORG_831_Organizator
|   |   |    // Zmiana pancerza, Zwiększenie Siły, Dodanie Tarczy ITSH_G3_02_V2
|   |   +--| ORG_855_Wolf
|   |   |    // Dodanie Tarczy ITSH_WOLF_A
|   |   +--| ORG_(840/876)
|   |   |    // Usunięcie łuku, Dodanie Tarczy IT_SHIELD_SKULL
|   |   +--| SLD_703_Soeldner
|   |   |    // Zmiana twarzy, dodanie tarczy ITSH_KORSHAN_A
|   |   +--| SLD_(704,723)
|   |   |    // Dodanie tarczy ITSH_KORSHAN_A
|   |   +--| SLD_727_Soeldner
|   |   |    // Usunięcie łuku, Dodanie Tarczy IT_SHIELD_SKULL
|   |   +--| SLD_729_Kharim
|   |   |    // Zmiana pancerza na SLD_ARMOR_L, dodanie Tarczy ITSH_W2_EXECUTIONER
|   |   +--| SFB_1000_Senyan
|   |   |    // Zmiana wyglądu na ten z G2NK
|   |/********************NPC NEW_CAMP END*********************************
|   +-- OLD_CAMP
|   |   +--| EBR_101_Scar
|   |   |   // Zwiększenie zręczności
|   |   +--| EBR_105_Raven / GRD_(200/210/233/255) / VLK_(538/581)
|   |   |    // Dodanie rutyny "out" - wywalenie za barierę
|   |   +--| GRD_(205/222/223/238/279)
|   |   |    // Dodanie tarczy ITSH_G3_03
|   |   +--| GRD_(214/215/216/217)_Torwache
|   |   |    // Dodanie tarczy ITSH_G3_04
|   |   +--| GRD_(218/237/245)_Gardist
|   |   |    // Dodanie Tarczy ITSH_W2_E3_REDANIA
|   |   +--| GRD_(231/275/276)
|   |   |    // Dodanie tarczy ITSH_W2_E2_KEADWEN
|   |   +--| GRD_282_Nek
|   |   |    // Dodanie tarczy ITSH_G3_01_OLD
|   |   +--| STT_(311/329)
|   |   |    // Dodanie rutyny "out" - wywalenie za barierę
|   |   |    // Zmiana pancerza na STT_ARMOR_H
|   |   +--| STT_301_Ian
|   |   |    // Zmiana pancerza na STT_ARMOR_H
|   |   +--| VLK_555_Buddler
|   |   |    // Zmiana twarzy
|   |/********************NPC OLD_CAMP END*********************************
|   +--| InExtremo
|   |    // ie_397 - zmiana skinBody na skin bohatera z Gothic Sequel
|   |    // fan4 - zmiana skinBody na skin bohatera z G2
|   +--| ORC_Priests
|   |    // ORC_PRIEST_5 - dodanie tarczy ITSH_STALHRIM_B_SM
|   +--| PC_(Fighter/Mage/Psionic)
|   |    // Dodanie rutyny "MeetFriend", związana z Questem Zawalona Wieża 
