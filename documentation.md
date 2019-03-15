+--B
|   +--|-- B_BuyAtrributePoints
|   |   //Uwzględnie tarcz przy nauce siły
|   |   //Zwiększenie max many do 200
|   +--|-- B_Give(Darrion/Fisk/Scorpio/Sharky/Skip/Wolf)ChapterWeapons
|   |   //Zmiany w sprzedawanych broniach z powodu zmian parametrów, oraz dodanie tarcz
|   +--|-- B_Give(BallCadar/Cronos/Torrez/Xardas)Chapterrune
|   |   // Usunięcie ze sprzedaży magicznych run
|   |   // Dodanie przedmiotów do tworzenia run
|   |   // Dodanie nowych książek o czarach
|   +--|-- B_GiveDeathInv
|   |   // Demony posiadają serca jeśli mamy umiejętność wycinania serc
|   |   // Krwiopijce posiadają skrzydła jeśli posiadamy odpowiednią umiejętność
|   +--|-- B_GiveSkill
|   |   // Dodanie tarcz
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Uwzględnienie akrobatyki przy nauce walki
|   |   // Dodanie nauki biegu
|   +--|-- B_Kapitelwechsel
|   |   // Kapitel 4 - Nie tracimy gildii Mag Ognia
|   |   // Kapitel 4 - EBR_105_Raven,GRD_(200/210/233/255),STT_(311/329),VLK_(538,581) - Wywalenie za barierę
|   |   // Kapitel 6 - Dostajemy naładowany Uriziel(1H/2H) w zależności od wcześniej posiadanego
|   |   // Kapitel 6 - Orc_Priest5 staje się wrażliwy na obrażenia
|   +--|-- B_Story_AccesToXardas
|   |   // Otrzymanie runy teleportacyjnej na parter Wieży Xardasa
|   +--|-- B_TeachPlayerTelentRunes
|   |   // Funkcja do nauki tworzenia run
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
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu nowicjuszem
|   +--|-- DIA_GUR_1202_CorAngar
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Uwzględnie guru w nauce walki broni 2H
|   |   // Zdobycie szaty arcyguru
|   +--|-- DIA_GUR_1208_BaalCadar
|   |   // Usunięcie magicznych run przed handlem
|   |   // Uczy tworzenia run 
|   +--|-- DIA_GUR_1211_BallLukor
|   |   // Dodanie tarczy ITSH_R_ROUND
|   +--|-- DIA_KDF_402_Corristo
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu magiem Ognia
|   |   // Zwiększenie restrykcji przy zostaniu arcymagiem
|   |   // Zadanie "Moja pierwsza runa"
|   |   // Uczy tworzenia run
|   +--|-- DIA_KDF_403_Drago
|   |   // Po zostaniu magiem ognia otrzymujemy pustą runę zamiast "ognistej strzały"
|   +--|-- DIA_KDF_404_Xardas
|   |   // Nauka 6 kręgu niezależnie czy jesteśmy KDF,KDW,GUR
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu nekromantą
|   |   // Różne szaty gdy jesteśmy guru lub magiem Ognia
|   |   // Zwraca Uriziel_1H gdy lepiej posługujemy się bronią jednoręczną
|   |   // Usunięcie magicznych run przed handlem
|   |   // Nauka wyciania serc demonom
|   |   // Uczy tworzenia run
|   +--|-- DIA_KDF_405_Torrez
|   |   // Usunięcie magicznych run przed handlem
|   |   // Po zostaniu magiem ognia nie otrzymamy księgi "Pierwszy krąg magii" jeśli wcześniej ją kupiliśmy
|   +--|-- DIA_KDW_600_Saturas
|   |   // Zwiększenie restrykcji przy zostaniu arcymagiem
|   |   // Zmiany w dialogach o Xardasie
|   |   // Zmiany w zostaniu magiem wody, możemy zostać wcześniej
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu magiem wody
|   |   // Uczy tworzenia run
|   +--|-- DIA_KDW_604_Cronos
|   |   // Usunięcie magicznych run przed handlem
|   +--|-- DIA_Nov_1372_Bukano
|   |   // Dialogi nowej postaci
|   +--|-- DIA_ORG_801_Lares
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu szkodnikiem
|   +--|-- DIA_ORG_818_Ratford
|   |   // Zadanie ze zdobyciem mapy
|   +--|-- DIA_ORG_819_Drax
|   |   // Uczy polowania dopiero gdy otrzyma piwo -- by marev
|   |   // Zmiana kosztów zdobywania trofeów z 1pn na 5pn
|   +--|-- DIA_ORG_826_Mordrag -- by marev
|   |   // Nie zaprowadzi nas do obozu jeśli go pobiliśmy
|   +--|-- DIA_ORG_833_Buster
|   |   // Uczy akrobatyki tylko raz
|   |   // Dodanie dialogu bezimiennemu
|   |   // Uczy "Biegu"
|   +--|-- DIA_ORG_841_Silas
|   |   // Naprawa handlu, był jednorazowy
|   +--|-- DIA_ORG_842_Shrike
|   |   // Poprawiona quest "Chata Krzykacza"
|   +--|-- DIA_ORG_855_Wolf
|   |   // Zmiany w sprzedawanych pancerzach
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Odsprzedawanie skór po normalnych cenach
|   +--|-- DIA_ORG_859_Aidan
|   |   // Zmiana kosztów zdobywania trofeów z 1pn na 5pn
|   +--|-- DIA_PC_Fighter
|   |   // Nauka walki bronią 2H po zostaniu szkodnikiem w systemie 11 etapowym
|   +--|-- DIA_PC_Thief
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
|   +--|-- DIA_STT_331_Fingers
|   |   // można prosić o nauke poziomu 2, dopiero gdy poznamy poziom 1
|   |   // rozmowa o Cavalornie i Diego nie daję w nieskończoność wpisu do dziennika
|   +--|-- DIA_STT_336_Cavalorn
|   |   // Przebudowa nauki walki na 11 etapów
|   +--|-- DIA_TPL_1402_GorNaToth
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Nie zaczepia nas gdy jesteśmy Guru
|   +--|-- DIA_TPL_1438_Templer
|   |   // Zmiana kosztów zdobywania trofeów z 1pn na 5pn
|   +--|-- DIA_VLK_572_Gravo
|   |   // Poprawnie daje informacje do dziennika
|   +--|-- DIA_VLK_581_Snaf -- by marev
|   |   // Snaf może zostać zapytany o Neka również po zakończeniu zadania "Przepis Snafa"
|/*******************************************DIALOGS END*****************************************************
+--Events
|   //Sleepabit.d - Dopasowanie do systemu PLAYER_MOBSI_PRODUCTION
|   //MakeRune.d - Obsługa stołu runicznego
+--Inne
|   +--| AI_Constants
|   |   // Dodanie PLAYER_MOBSI_PRODUCTION do obsługi obietków interaktywnych
|   +--| constans
|   |   // Dodanie nowej kategorii przedmiotu ITEM_SHIELD = 1 << 1
|   |   // Dodanie numeru nowego talentu NPC_TALENT_SHIELD = 9
|   |   // Dodanie numeru nowego talentu NPC_TALENT_RUN = 10
|   +--| Log_Constans
|   |   // Dodanie stałej GE_TelentRunes do nauki tworzenia run
|   |   // Dodanie stałej CH2_KDF_Rune do zadania z pierwszą runą u magów ognia
|   |   // CH1_RatfordMap - Quest z mapą dla Ratforda
|   +--| Startup
|   |   // Dodanie tarczy ITSH_STALHRIM_S_SM w OrcTempel(TPL_254)
|   +--| Story_Globals
|   |   // Stałe LPCOST_TALENT_SHIELD_(1/2)
|   |   // Stała LPCOST_TALENT_RUN
|   |   // Zmienna Shield_Equip która zapamiętuje czy mamy założoną tarcze
|   |   // XP_Ratford_Map - doświadczenie za Quest "Mapa dla Ratforda"
|   |   // Zmienna Uriziel_1H
|   |   // Zmienna Knows_GetDemonHeart - umiejętność wycinania serc demonów
|   |   // Zmienna tablica PLAYER_TALENT_RUNES - umiejętności tworzenia run
|   |   // Zmiana punktów nauki przy nauce kregów magii
|   |   // Dodanie kosztów nauki tworzenia run
|   |   // Zmienna Knows_Book_Circle_01 - informacja czy przeczytaliśmy książkę "Pierwszy krąg magii"
|   +--| svm
|   |   // dodanie svm CantReadThis związanej z kartkami uczącymi
|   +--| Text
|   |   // Zmianna nazwy umiejętności na Tarcza, oraz dodanie nazw poziomów (Brak|Adept|Mistrz)
|   |   // Zmianna nazwy umiejętności na Bieg, oraz dodanie nazw poziomów (Nie|Tak)
|   |   // Zmiany w nazwach poziomów dla broni białch (Brak|Zielony|Wojownik|Mistrz)
|   |   // Zmiany w nazwach poziomów dla broni dystansowych (Zielony|Strzelec|Mistrz)
|   |   // Zmiany w B_BuildBuyArmorString
|   |   // Dodanie stałej NAME_STR_GRAB = "Obciążenie Siły", używanej w tarczach
|   |   // Zmiana nazwy dla SPL_NEW(2-4)
|   |   // MOBNAME_RUNEMAKER i PRINT_(RuneSuccess/ProdItemsMissing) dla stołu runicznego
|   +--| Gothic.src
|   |   // Przeniesienie G_funcions wyżej w kolejce parsowania
|   |   // Dodanie funkcji B_TeachPlayerRunes do parsowania
|   +--| magic_intern
|   |   // Zamiana stałej SPL_NEW(2-4)
|   +--| PFX/SFX
|   |   // Dzwięk i wizualizacja do stołu runicznego
|/******************************************INNE END********************************************************
+-- Items
|   +--| Animaltrophy
|   |   // Dodanie Kości goblina, Kości szkieleta, serca demona, serca golema (do tworzenia run)
|   +--| Armor
|   |   // Dodano funkcje zmieniające skinBody podczas zakładania i zdejmowania zbroi (Głównie dla panerzy bractwa ale nie tylko)
|   |   // Strój Szkodnika został Ciężkim pancerzem Szkodnika
|   |   // Ciężki strój szkodnika został Lekkim pancerzem Najemnika
|   |   // Spodnie kreta mają teraz poprawną nazwe
|   |   // Dodano Starą Szate Xardasa(Ognia)
|   |   // Dodano pancerze bandytów dla bandy Quentina
|   |   // Zmodyfikowanie statystyk wszystkich pancerzy sugerując się wartościami z G2
|   +--| Artifacts
|   |   // Zmodyfikowanie run
|   |   // Dodanie runy teleportującej na parter wieży Xardasa
|   |   // Dodanie nowych run przywołań
|   +--| Food
|   |    // ItAt_Meatbug_01 -> zmieniona kategoria przedmiotu na FOOD
|   +--| Melee_weapons
|   |   // Przeniesienie imiennych broni z pliku weapons.d
|   |   // ITMW_1H_SWORD_BASTARD_02 -> Naprawa wyświetlania ręczności broni
|   |   // Zmodyfikowanie wszystkich broni sugerując się wartościami z G2
|   +--| Misc
|   |   // Dodanie składników potrzebnych do tworzenia run
|   |   // Zamiana Rtęci na wodę święconą
|   +--| MissionItems
|   |   // 1 - Listy do Magów Ognia mają podpis "Marszałek Rigaldo
|   |   // 1 - Z Chromanimu 6 wypada kartka ucząca runy przywołania szkieleta
|   |   // 2 - Z almanachu wypada list od Xardasa oraz kartki uczące przywołąnie goblina oraz wilka
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
|   +-- Written
|   |   // książka o krwiopijcach uczy zarówno usuwanie żądła jak i skrzydeł
|   |   // Z "Pierwszy Krąg Magii wypada list od Xardasa
|   |   // Zmiany treści w książkach o kręgach Magii
|   |   // Dodanie książek Sekty oraz książki Przyzwania
|   |   // Dodanie listów od Xardasa
|   |   // Dodanie kartek uczących tworzenia run przyzwać(goblina, wilka, szkieleta)
|/*******************************************ITEMS END*******************************************************
|   +--| Spell_params | Spells_process_mana | Spells_process_released
|   |   // Dodanie zaklęcia SPL_TELEPORT6
|   |   // SummonsSkeleton przywołuje tylko jednego szkieleta
|   |   // Nowe zaklęcia przywołań (SummonGobbo, SummonWolf)
|   +--| spell_pyrokinesis
|   |   // Postać zabita czarem pirokineza rozpada się jak szkielet
|/*******************************************MAGIC END*******************************************************
+-- Monsters
|   +--| Mst_*
|   |   // Zmiany parametrów potworów
|   +--| Mst_(Gobbo/Golem/Skeleton/Wolf)
|   |   // Nowe przywołania
|   |   // Lvl 0 dla przywołanych potworów przez gracza
|   |   // Golem Mostowy dodanie serca golema do stworzenia runy 'przywołanie golema'
|   |   // Skeleton dodanie kości szkieleta do tworzenia run przywołań
|   +--| Mst_Bloodfly
|   |   // Usunięcie skrzydeł z ekwipunku
|/*******************************************MONSTERS END****************************************************
+-- NPC
|   +-- BDT_QUENTIN
|   |   +--| ORG_858_Quentin
|   |   |    // Zmiana pancerza na BDT_ARMOR_H
|   |   +--| ORG_(863-871/874)_Rauber
|   |   |    // Zmiana pancerza na BDT_ARMOR_M
|   |/********************NPC BDT_QUENTIN END********************************
|   +-- NEW_CAMP
|   |   +--| KDW_604_Cronos
|   |   |    // Usunięcie magicznej runy
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
|   |   +--| KDF_405_Torrez
|   |   |    // Usunięcie magicznej runy
|   |   +--| STT_(311/329)
|   |   |    // Dodanie rutyny "out" - wywalenie za barierę
|   |   |    // Zmiana pancerza na STT_ARMOR_H
|   |   +--| STT_301_Ian
|   |   |    // Zmiana pancerza na STT_ARMOR_H
|   |   +--| STT_302_Viper
|   |   |    // Dodanie przedmiotów do tworzenia run
|   |   +--| VLK_555_Buddler
|   |   |    // Zmiana twarzy
|   |   +--| VLK_573_Graham
|   |   |    // Posiada dodatkową mapę świata dla Ratforda
|   |/********************NPC OLD_CAMP END*********************************
|   +-- SEKTE_CAMP
|   |   +--| GUR_1208_BaalCadar
|   |   |    // Usunięcie magicznej runy
|   |   +--| NOV_1372_Bukano
|   |   |    // Nowa postać
|   |/*******************NPC SEKTE_CAMP END********************************
|   +--| InExtremo
|   |    // ie_397 - zmiana skinBody na skin bohatera z Gothic Sequel
|   |    // fan4 - zmiana skinBody na skin bohatera z G2
|   +--| ORC_Priests
|   |    // ORC_PRIEST_5 - dodanie tarczy ITSH_STALHRIM_B_SM
|   |    // ORC_PRIEST_5 - niewrażliwy na żadne obrażenia
|/********************************NPC END***********************************
+-- Worlds
|   +-- World.ZEN
|   |   // Dodanie stołów runicznych
|   |   // Dodanie tarczy ITSH_LONG_A w starej świątyni (bagienny smok)
|   |   // Dodanie kości goblina w jaskini goblinów (almanach)
