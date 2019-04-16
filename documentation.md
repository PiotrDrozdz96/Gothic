+--AI
|   // Szczegóły na temat zmian w AI są opisane w AI_documentation, z racji że podstawą zmian w AI była rosyjska modyfikacja Fix mod
+--Anims
|   +--|-- CRAWLER.MDS
|   |    // Rejestracja reskinu dla świątynnych pełzaczy z dark saga -- soper machinima mod
|   +--|-- CRWQ2.MDS
|   |    // MDS królowej świątynnych pełzaczy z dark saga -- soper machinima mod
|   +--|-- GOBBO.MDS
|   |    // Rejestracja szkieletu goblina z G2
|   |    // Rejestracja goblinów piratów -- soper machinima mod
|   +--|-- HUMANS.MDS
|   |    // Rejestracja nowych meshy/zbroi -- soper machinima mod/Sequel
|   |    // Dodanie Rmaker do obsługi stołu runicznego
|   |    // Zmiany w animacjach strafingu
|   |    // 2H - Możliwość ataku w biegu z g2
|   |    // zmiana skoku na ten z G2
|   |    // Zmiana w TA_CookForMe aby nie tworzyła pieczonego mięsa
|   +--|-- Keiler.MDS
|   |    // Animacja Dzika z G2
|   +--|-- ORC.MDS
|   |    // Rejestracja orka szkieleta -- soper machinima mod
|   +--|-- ORCSTONE.MDS
|   |    // MDS kamiennego orka
|   +--|-- SWAMPRAT.MDS 
|   |    // MDS bagiennego szczura z G2NK
|   +--|-- ZOMBIE.MDS
|   |    // Rejestracja zombie_monster -- soper machinima mod
|   +--|-- MDS_MOBSI
|   |    // RMAKER_1.MDS - Animacja stołu runicznego
|   +--|-- MDS_OVERLAY
|   |    // HUMANS_1HST1.MDS - Animacja Zielony z G2
|   |    // HUMANS_1HST2.MDS - Animacja 1HST1 z G1
|   |    // HUMANS_1HST3.MDS - Animacja 1HST2 z G1
|   |    // HUMANS_ACROBATIC.MDS - Zmieniona akrobatyka na tą z returninga 2.0
|   |    // HUMANS_(RUN/SPRINT).MDS - Bieg z returning 2.0
|   |    // SHIELD_ST(1/2).MDS - Animacje walki tarczą z L`Hivier
|/****************************************ANIMS END**********************************************************
+--B
|   +--|-- B_BuyAtrributePoints
|   |   // Uwzględnie tarcz przy nauce siły
|   |   // Zwiększenie max many do 200
|   +--|-- B_CheckDeadMissionNPCs
|   |   // sprawdzanie czy zabitą postacią jest Harlok, jeśli tak niezaliczenie misji z zastępstwem dla Ghorima
|   |   // sprawdzanie czy zabitą postacią jest Cipher, jeśli tak niezaliczenie misji "Cipher - najlepszy Diler"
|   +--|-- B_ClearInv
|   |   // Nowe funkcje czyszczące cały ekwipunek postaci, lub tylko runy, oraz wykorzystanie ich przy zdefiniowanych handlarzach
|   +--|-- B_Evolve
|   |   // Funkcje obsługujące rozwój postaci niezależnych
|   +--|-- B_GetInvItem
|   |   // Nowa funkcja, pozwalająca przypisać do zmiennej globalnej "item" konkretny przedmiot
|   +--|-- B_Give(Darrion/Fisk/Scorpio/Sharky/Skip/Wolf)ChapterWeapons
|   |   // Zmiany w sprzedawanych broniach z powodu zmian parametrów, oraz dodanie tarcz
|   |   // Dodatkowe funkcje przywracające część ekwipunku po wyczyszczeniu po pobiciu handlarza
|   +--|-- B_Give(BallCadar/Cronos/Torrez/Xardas)Chapterrune
|   |   // Usunięcie ze sprzedaży magicznych run
|   |   // Dodanie przedmiotów do tworzenia run
|   |   // Dodanie nowych książek o czarach
|   |   // Dodanie funkcji które dodają kostury do sprzedaży
|   |   // Dodatkowe funkcje przywracające część ekwipunku po wyczyszczeniu po pobiciu handlarza
|   +--|-- B_Give(Dexter/Huno/Viper)
|   |   // Funkcje obsługujące asortyment handlarzy
|   +--|-- B_GiveDeathInv
|   |   // Demony posiadają serca jeśli mamy umiejętność wycinania serc
|   |   // Krwiopijce posiadają skrzydła jeśli posiadamy odpowiednią umiejętność
|   |   // Dziki posiadają skórę dzika
|   +--|-- B_GiveSkill
|   |   // Dodanie tarcz
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Uwzględnienie akrobatyki przy nauce walki
|   |   // Dodanie nauki biegu
|   +--|-- B_IamInWater
|   |   // Nowa funkcja potrzebda do rosyjskiego fix moda
|   +--|-- B_Kapitelwechsel
|   |   // Dodanie funkcji B_Evolve_* i B_Story_OMFull w odpowiednich rozdziałach
|   |   // Dodanie B_Give_DexterPotions w rozdziałach 2 i 3
|   |   // Kapitel 2 - Nie zaliczenie misji z pozbyciem się Mordraga jeśli jesteśmy cieniem(nie zaliczenie odbywa się również gdy zostajemy członkiem innego obozu)
|   |   // Kapitel 3 - Jeśli należymy do bractwa śniącego uzależniamy się od ziela
|   |   // Kapitel 4 - Nie tracimy gildii Mag Ognia
|   |   // Kapitel 4 - EBR_105_Raven,GRD_(200/210/233/255),STT_(311/329),VLK_(538,581) - Wywalenie za barierę
|   |   // Kapitel 4 - Postacie które znajdowały się w starym obozie, ale nie były jego członkami, nie giną ponieważ się wcześniej wyprowadziły
|   |   // Kapitel 4 - GorNaDrak nie zmienia rutyny, ponieważ wcześniej wyruszył z Cor Kalomem
|   |   // Kapitel 4 - Strażnicy rozsiani po kolonii udają się na plac wymian. Dwóch kopaczy przed OC umiera
|   |   // Kapitel 6 - Dostajemy naładowany Uriziel(1H/2H) w zależności od wcześniej posiadanego
|   |   // Kapitel 6 - Orc_Priest5 staje się wrażliwy na obrażenia
|   +--|-- B_Story_PrepareRitual
|   |   // Wrzód jeśli jest nowicjuszem idzie oglądać przebudzenie śniącego
|   +--|-- B_Story_GotoOrcGraveyard
|   |   // Wrzód jeśli jest nowicjuszem wraca z placa świątynnego
|   |   // Strażnicy Hanis, GorNaRan, GorNaDrak idą razem z Cor Kalomem
|   |   // Parvez, Taran wracają do obozu sekty
|   |   // Krzykacz wyprowadza się z chaty, ponieważ wprowadza się tam Kharim
|   |   // Niezaliczenie misji z zastępstwem dla Ghorima
|   +--|-- B_Story_OrcSkeletonRise
|   |   // Przywołanie orków szkieletów na cmentarzysku orków
|   +--|-- B_Story_RespawnOW
|   |   // Dodanie reskinu krwiopicy do questa
|   |   // Dodanie dzików 
|   +--|-- B_Story_OMFull
|   |   // Mordrag i Grim wracają na swoje miejsca
|   |   // Odpalenie rutyn OMFull strażnikom którzy je posiadali
|   |   // Upgrade 3 strażników na łowców demonów
|   +--|-- B_Story_LogFailedAfterOMDown
|   |   // Funkcja przenosząca zadania których nie da się wykonać do niezaliczonych po zawaleniu starej kopalnii i śmierci magów ognia
|   +--|-- B_Story_AccesToXardas
|   |   // Otrzymanie runy teleportacyjnej na parter Wieży Xardasa
|   +--|-- B_Story_ExploreSunkenTower
|   |   // Przebudowa ataku na stary obóz
|   +--|-- B_TeachPlayerTelentRunes
|   |   // Funkcja do nauki tworzenia run
|/*******************************************B END***********************************************************
+--Dialogs
|   +--|-- DIA_Babe
|   |   // Dialogi z kobietami
|   +--|-- DIA_BAU_900_Ricelord -- by marev
|   |   // Ryżowy Książę nie daje butelek wody po pobiciu Lewusa
|   |   // nie można już w nieskończoność brać wody
|   +--|-- DIA_BAU_901_Horatio
|   |   // Horacy nie zabiera już siły, jeśli gracz ma jej więcej niż 100 -- by marev
|   +--|-- DIA_EBR_100_Gomez
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu cieniem
|   |   // Po zostaniu cieniem nie możemy już wykonać niektórych questów
|   +--|-- DIA_EBR_103_Drak
|   |   // Dodanie dialogów nowej postaci
|   |   // Dostaje dialogi Bartholo po teleportacji bohatera do magów ognia
|   +--|-- DIA_EBR_105_Raven
|   |   // Przerobienie dialogów z informowaniem o bractwie
|   |   // Po queście z informowaniem o bractwie dostajemy 1pkt. reputacji u straży, potrzebnej przy kupowaniu lepszej zbroi
|   +--|-- DIA_EBR_106_Bartholo
|   |   // Przeniesienie dialogów po teleportacji do magów ognia, ochroniażowi Gomeza
|   +--|-- DIA_GRD_200_Thorus
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu strażnikiem
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Poprawa informacji w dzienniku po zostaniu strażnikiem z "Smitha" na "Kowala" -- by marev
|   |   // Poprawiono warunki rozmów z wstępem do zamku
|   |   // Dodano wpisy do dziennika na temat zadania "List z zewnętrznego świata"
|   |   // Nauka broni 2H po zabiciu Mordraga
|   |   // Po queście z mordragiem dostajemy 1 lub 2 pkt. reputacji u straży, potrzebnej przy kupowaniu lepszej zbroi
|   |   // Nowy Quest związany z przyprowadzniem trzech kopaczy, za który możemy otrzymać 1 pkt. reputacji u straży
|   |   // Przeniesienie zmiennej Thorus_MordragKo do Story_Globals
|   +--|-- DIA_GRD_(201_Jackal/233_Bloodwyn) -- by marev
|   |   // nie domaga się rudy, jeśli gracz został przyjęty do jakiegoś obozu
|   |   // Poprawnie zbierają opłaty
|   +--|-- DIA_GRD_(202/207)_Gardist
|   |   // Dialogi dla nowych strażników na placu wymian, związane z jego pilnowaniem
|   +--|-- DIA_GRD_205_Scorpio
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Skorpion nie może zostać zapytany o naukę walki, po tym jak przeniesie się do chatki Cavalorna -- by marev
|   +--|-- DIA_GRD_210_Scatty
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Nauka walki tarczą
|   |   // Po pokonaniu Kharima dostajemy 1pkt. reputacji u straży, potrzebnej przy kupowaniu lepszej zbroi
|   +--|-- DIA_216_Torwache -- by marev
|   |   // strażnik przy południowej bramie Starego Obozu wchodzi w interakcję z graczem już przy pierwszym spotkaniu
|   |   // w zadaniu "Nowi wyznawcy dla Bractwa" nie można już w nieskończoność przekupywać strażnika poprzez zapisywanie i wczytywanie gry
|   +--|-- DIA_GRD_219_Stone
|   |   // Zmienione warunki otrzymania nowych zbroi, są głównie zależne od naszej reputacji u strażników
|   +--|-- DIA_GRD_251_Kirgo
|   |   // Kirgo poprawnie daje piwo podczas rozmowy (a nie zabiera) -- by marev
|   +--|-- DIA_GRD_255_Fletcher
|   |   // Fletcher nie zaczyna zadania "Zaginiony Strażnik", jeśli zostało ono już ukończone -- by marev
|   +--|-- DIA_GRD_271_Ulbert
|   |   // Zapisywanie stanu zadania z szopą Ulberta w nowej zmiennej
|	+--|-- DIA_GUR_1201_CorKalom
|   |   // Możliwość zostania guru
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu nowicjuszem
|   |   // Poprawny wpis do dziennika w zadaniu "Co się dzieje na bagnach?" -- by marev
|   |   // Dodano wpis do dziennika w zadaniu "List z zewnętrznego świata"
|   |   // Po zostaniu nowicjueszem nie możemy już wykonać niektórych questów
|   +--|-- DIA_GUR_1202_CorAngar
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Uwzględnie guru w nauce walki broni 2H
|   |   // Zdobycie szaty arcyguru i nowego kostura
|   |   // z Cor Angarem można rozmawiać o zostaniu Strażnikiem Świątynnym tylko po zostaniu Nowicjuszem -- by marev
|   |   // Po wysłaniu na cmentarz orków część questów przechodzi do zakładki niezaliczone
|   |   // Po odejściu Cor Kaloma questy które nam zlecał przechodzą w niezaliczone
|   +--|-- DIA_GUR_1203_BaalTondral
|   |   // Można przyprowadzić wrzoda zamiast dustego
|   |   // Przeniesienie zmiennej BaalTondral_GetNewGuy do Story_Globals
|   +--|-- DIA_GUR_1204_BaalNamib
|   |   // Baal Namib poprawnie sprzedaje Szatę Nowicjusza -- by marev
|   +--|-- DIA_GUR_1208_BaalCadar
|   |   // Usunięcie magicznych run przed handlem
|   |   // Uczy tworzenia run 
|   +--|-- DIA_GUR_1211_BallLukor
|   |   // Dodanie tarczy ITSH_R_ROUND
|   |   // Usunięcie doświadczenie za pomoc Lukorowi
|   |   // Odpalenie funkcji B_Story_OrcSkeletonRise() w ostatnim dialogu
|   +--|-- DIA_KDF_402_Corristo
|   |   // Poprawa rozpoczęcia dialogu przy zostaniu magiem, musimy być na środku okręgu
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu magiem Ognia
|   |   // Zwiększenie restrykcji przy zostaniu arcymagiem
|   |   // Zadanie "Moja pierwsza runa"
|   |   // Uczy tworzenia run
|   +--|-- DIA_KDF_403_Drago
|   |   // Po zostaniu magiem ognia otrzymujemy pustą runę zamiast "ognistej strzały"
|   +--|-- DIA_KDF_404_Xardas
|   |   // Nauka Kręgów 4 i 5 (przy specjalnych warunkach), Nauka 6 kręgu niezależnie czy jesteśmy KDF,KDW,GUR
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu nekromantą
|   |   // Różne szaty gdy jesteśmy strażnikiem świątynym a guru, magiem Ognia lub magiem wody
|   |   // Zwraca Uriziel_1H gdy lepiej posługujemy się bronią jednoręczną
|   |   // Usunięcie magicznych run przed handlem
|   |   // Nauka wyciania serc demonom
|   |   // Uczy tworzenia run
|   |   // Sprzedaje kostury nekromantom i magom ognia
|   +--|-- DIA_KDF_405_Torrez
|   |   // Usunięcie magicznych run przed handlem
|   |   // Po zostaniu magiem ognia nie otrzymamy księgi "Pierwszy krąg magii" jeśli wcześniej ją kupiliśmy
|   |   // Dodano wpis w dzienniku do zadania "List z zewnętrznego świata"
|   |   // Po zostaniu magiem ognia sprzedaje kostury
|   +--|-- DIA_KDW_600_Saturas
|   |   // Zwiększenie restrykcji przy zostaniu arcymagiem
|   |   // Zmiany w dialogach o Xardasie
|   |   // Zmiany w dialogach podczas uczenia kręgu 5
|   |   // Zmiany w zostaniu magiem wody, możemy zostać wcześniej
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu magiem wody
|   |   // Uczy tworzenia run
|   +--|-- DIA_KDW_603_Nefarius
|   |   // Nefarius nie zachęca do zostania Najemnikiem, jeśli gracz już nim jest -- by marev
|   +--|-- DIA_KDW_604_Cronos
|   |   // Usunięcie magicznych run przed handlem
|   |   // Nie powiemy o liście do magów ognia, jeśli go nie posiadamy
|   |   // Cronos nie wysyła już gracza z listem do Magów Ognia, jeśli oni zostali już zabici -- by marev
|   |   // rozmowa z Cronosem o dołączeniu do obozu i zostaniu Magiem Wody jest dostępna tylko, jeśli gracz nie należy do żadnego obozu -- by marev 
|   |   // Dodano wpis w dzienniku do zadania "List z zewnętrznego świata"
|   |   // Zadanie z dostarczeniem listu Cronosa do magów ognia tworzy wpisy w dzienniku
|   |   // Po zostaniu magiem wody sprzedaje kostury
|   +--|-- DIA_KDW_605_Riordian
|   |   // Usunięcie magicznych run przed handlem
|   +--|-- DIA_Nov_1302_Viran
|   |   // Zmiana w sprawdzaniu czy w pobliżu są krwiopijce, ze względu na zmieniony reskiny w krwiopijcach na bagnie
|   +--|-- DIA_Nov_1304_Balor -- by marev
|   |   // gracz może poprawnie odebrać bagienne ziele od Balora po raz drugi
|   +--|-- DIA_Nov_1331_BaalTaran
|   |   // Dodano wpis w dzienniku do zadania "List z zewnętrznego świata"
|   +--|-- DIA_Nov_1372_Bukano
|   |   // Dialogi nowej postaci
|   +--|-- DIA_ORC_HighPriest5
|   |   // Reaguje również na 1H Uriziel
|   |   // Gdy nie zadajemy mu obrażeń i chcemy uciekać załącza nam się czasowy bieg
|   +--|-- DIA_ORC_Warriors
|   |   // Dialogi dla specjalnych orków śledzących/upominających w orkowym mieście
|   +--|-- DIA_ORG_801_Lares
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu szkodnikiem
|   |   // Po zostaniu szkodnikiem, część zadań przechodzi do zakładki niezaliczone, wraz z wyjaśnieniami w postaci wpisu do dziennika
|   +--|-- DIA_ORG_818_Ratford
|   |   // Zadanie ze zdobyciem mapy
|   +--|-- DIA_ORG_819_Drax
|   |   // Uczy polowania dopiero gdy otrzyma piwo -- by marev
|   |   // Zmiana kosztów zdobywania trofeów z 1pn na 5pn
|   +--|-- DIA_ORG_826_Mordrag 
|   |   // Nie zaprowadzi nas do obozu jeśli go pobiliśmy -- by marev
|   |   // Dodanie dialogu, gdy mordrag znajduje się w obozie sekty(jeśli szpiegujemy sekte z rozkazu Kruka dostaniemy wpis w dzienniku)
|   |   // Dodano wpis w dzienniku do zadania "List z zewnętrznego świata"
|   +--|-- DIA_ORG_833_Buster
|   |   // Uczy akrobatyki tylko raz
|   |   // Dodanie dialogu bezimiennemu
|   |   // Uczy "Biegu"
|   +--|-- DIA_ORG_841_Silas
|   |   // Naprawa handlu, był jednorazowy
|   +--|-- DIA_ORG_842_Shrike
|   |   // Poprawiony quest "Chata Krzykacza"
|   +--|-- DIA_ORG_843_Sharky
|   |   // Dodaje wpis w dzienniku, gdy szukamy nowego pasera dla Fiska
|   +--|-- DIA_ORG_855_Wolf
|   |   // Zmiany w sprzedawanych pancerzach
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Odsprzedawanie skór po normalnych cenach
|   +--|-- DIA_ORG_859_Aidan
|   |   // Zmiana kosztów zdobywania trofeów z 1pn na 5pn
|   +--|-- DIA_ORG_862_Jacko
|   |   // Przetłumaczenie wpisów do dziennika - były po niemiecku
|   +--|-- DIA_ORG_873_Cipher
|   |   // Usprawniono system sprzedaży ziela
|   |   // Dodanie nowego zadania "Cipher - Najlepszy Diler"
|   |   // Dodaje wpis w dzienniku, gdy szukamy nowego pasera dla Fiska
|   +--|-- DIA_PC_Fighter
|   |   // Nauka walki bronią 2H po zostaniu szkodnikiem w systemie 11 etapowym
|   |   // Żeby zapytać Gorna o wolną chatę, musimy być przed 3 rozdziałem
|   +--|-- DIA_PC_Mage
|   |   // zmiany w dialogu o zostaniu magiem ognia
|   |   // Dodano wpisy w dzienniku do zadania "List z zewnętrznego świata"
|   |   // Dodaje wpis w dzienniku do zadania "List Cronosa"
|   |   // Odpala funkcje B_Story_LogFailedAfterOMDown gdy informuje nas o śmierci magów ognia i zawaleniu starej kopalni
|   +--|-- DIA_PC_Thief
|   |   // Odsprzedawanie starych monet
|   |   // Otwiera zadanie "List z zewnętrznego świata"
|   |   // Przeniesienie zmiennej Diego_BringList do Story_Globals
|   |   // Sprzedaje nowe zbroje Cieni
|   |   // Odpala funkcje B_Story_LogFailedAfterOMDown gdy informuje nas o śmierci magów ognia i zawaleniu starej kopalni
|   +--|-- DIA_Sfb_1037_Swiney
|   |   // Swiney nie oddaje już swojego stroju po rozmowie z graczem -- by marev
|   +--|-- DIA_SLD_700_Lee
|   |   // Zmiana sposobu chodzenia bohatera po zostaniu najemnikiem
|   |   // Inny pancerz po zostaniu najemnikiem
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Informowanie Lee o przełomie w bractwie
|   |   // Można zostać najemnikiem jeśli jesteśym strażnikiem świątynnym
|   |   // Poprawienie dialogu z Lee o odbiciu wolnej kopalni, zmieniona nagroda
|   +--|-- DIA_SLD_709_Cord
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Nauka walki tarczą
|   +--|-- DIA_STT_309_Whistler -- by marev
|   |   // Świstak odzyskuje 110 bryłek jeśli gracz poprosił o dadatkowe 10 bryłek
|   |   // Zadanie świstaka zapisuje się w osobnym zadaniu w dzienniku, a nie w "dołączeniu do starego obozu"
|   +--|-- DIA_STT_311_Fisk
|   |   // Zadanie "Nowy paser dla Fiska" jest aktywowane niezależnie od sposobu pozbycia się Mordraga -- by marev
|   |   // Fisk sprzedaje nowe spodnie kopacza z kapturem
|   |   // Przeniesienie zmiennej Fisk_GetNewHehler do Story_Globals
|   +--|-- DIA_STT_315_Sly
|   |   // Przeniesiennie zmiennej Sly_LostNek do Story_Globals
|   +--|-- DIA_STT_329_Dexter
|   |   // Dexter poprawnie daje nagrodę za wykonanie zadania -- by marev
|   |   // Przeniesienie zmiennej Dexter_GetKalomsRecipe do Story_Globals
|   +--|-- DIA_STT_331_Fingers
|   |   // można prosić o nauke poziomu 2, dopiero gdy poznamy poziom 1
|   |   // rozmowa o Cavalornie i Diego nie daję w nieskończoność wpisu do dziennika
|   +--|-- DIA_STT_336_Cavalorn
|   |   // Przebudowa nauki walki na 11 etapów
|   +--|-- DIA_TPL_1400_GorNaBar
|   |   // Nie daje wpisu do dziennika o możliwości zostania strażnikiem świątynnym jeśli nie jesteśmy nowicjuszem -- by marev
|   +--|-- DIA_TPL_1402_GorNaToth
|   |   // Przebudowa nauki walki na 11 etapów
|   |   // Nie zaczepia nas gdy jesteśmy Guru
|   |   // Zmienione warunki otrzymania ciężkiej zbroi świątynnej. Można zaraz po wysłaniu do nowego obozu żeby nie latać tu bez potrzeby.
|   +--|-- DIA_TPL_1405_GorNaRan
|   |   // Zmiana npc(Wersja OT GorNaRana) dla dialogów w świątyni
|   +--|-- DIA_TPL_1422_GorHanis
|   |   // Możliwość walki z Hanisem na arenie
|   |   // Dodanie dialogów w świątyni śniącego
|   +--|-- DIA_TPL_1438_Templer
|   |   // Zmiana kosztów zdobywania trofeów z 1pn na 5pn
|   +--|-- DIA_TPL_1439_GorNaDrak
|   |   // Dodanie dialogów w świątyni śniącego
|   +--|-- DIA_TPL_1455_GorBoba
|   |   // zamiana nieprzetłumaczonego tytułu wpisu w dzienniku z "Orktempel" na "Świątynia orków" -- by marev
|   +--|-- DIA_VLK_Buddlers
|   |   // Dialogi dla kopaczy z przywróconymi imionami (502/504/517) związane z Questem "Kopacze do kopalni"
|   +--|-- DIA_VLK_530_Guy
|   |   // nie można już w nieskończoność pytać Guya o zalety dołączenia do Starego Obozu -- by marev
|   +--|-- DIA_VLK_574_Mud
|   |   // Dialogi związane z wrzodem w obozie sekty
|   +--|-- DIA_VLK_587_Garp
|   |   // Dialog "Koniec" przenesiony na koniec listy opcji dialogowych -- by marev
|   +--|-- DIA_VLK_564_Jesse
|   |   // przywrócono mini-zadanie Jesse'ego -- by marev
|   +--|-- DIA_VLK_572_Gravo
|   |   // Poprawnie daje informacje do dziennika
|   +--|-- DIA_VLK_580_Grim
|   |   // Grima nie można już pytać o zostanie członkiem Obozu po dołączeniu do jakiegoś -- by marev
|   |   // Dodanie dialogu, gdy grim znajduje się w obozie sekty(jeśli szpiegujemy sekte z rozkazu Laresa/Mordraga dostaniemy wpis w dzienniku)
|   +--|-- DIA_VLK_581_Snaf
|   |   // Przeniesienie zmiennej Snaf_Zutaten do Story_Globals
|   |   // Snafa możemy zapytać o Neka wyłącznie jeśli mamy aktywny quest z jego poszukiwaniem
|   +--|-- DIA_VLK_582_Melvin
|   |   // Zmiany w warunkach otrzymania wpisu do dziennika przy rozmowie "hello"
|/*******************************************DIALOGS END*****************************************************
+--Events
|   //Sleepabit.d - Dopasowanie do systemu PLAYER_MOBSI_PRODUCTION, uwzględnienie uzależnienia od ziela które nie pozwala zasnąć
|   //PanFry.d - Obsługa patelni
|   //MakeRune.d - Obsługa stołu runicznego
+--Inne
|   +--| constans
|   |   // Dodanie nowej kategorii przedmiotu ITEM_SHIELD = 1 << 1
|   |   // Dodanie nowej kategorii przedmiotu ITEM_DROPPED = 1 << 24 (nie jest nigdzie użyta) -- rosyjski fix mod
|   |   // Dodanie numeru nowego talentu NPC_TALENT_SHIELD = 9
|   |   // Dodanie numeru nowego talentu NPC_TALENT_RUN = 10
|   +--| Log_Constans
|   |   // Dodanie stałej GE_TelentRunes do nauki tworzenia run
|   |   // CH1_FireMagesBrief - Quest z dostarczeniem listu z zewnętrznego świata
|   |   // CH1_CronosBrief - Quest z dostarczeniem listu Cronosa do magów ognia
|   |   // CH1_RatfordMap - Quest z mapą dla Ratforda
|   |   // CH_BuyMySword - Quest ze zdobyciem zdobionego miecza dla świstaka
|   |   // CH2_KDF_Rune - Quest z pierwszą runą u magów ognia
|   |   // CH2_Buddler - Quest dla strażnika ze znalezieniem kopaczy do kopalni
|   |   // CH3_CipherBussines - Quest z wytwótrnią ziela dla Ciphera
|   +--| Startup
|   |   // Dodanie tarczy ITSH_STALHRIM_S_SM w OrcTempel(TPL_254)
|   |   // Dodanie Npc na placu wymian GRD_(202/207) i STT_321
|   |   // Dodanie TPL_1464_GorHanisOT w świątyni śniącego
|   |   // Zamiana kilku orków w orkowym mieście na specjalnych orków z dialogami 
|   |   // Dodanie goblinów piratów na plaży przy wraku statku
|   |   // Dodanie bagiennych szczurów i zombie na bagnie
|   |   // Zmiana wyglądu krwiopijców na bagnie
|   |   // Zamiana dwóch świątynnych pełzaczy(TPL_405) na królową świątynnych pełzaczy
|   |   // Dodanie Ebr_103_Drak - ochroniarz Gomeza
|   |   // Wymiana kilku wilków na dziki
|   |   // Dodanie kamiennego Golema w Ruinach Orków(bagienny smok)
|   +--| Story_Globals
|   |   // Stałe LPCOST_TALENT_SHIELD_(1/2)
|   |   // Stała LPCOST_TALENT_RUN
|   |   // Zmienna Shield_Equip która zapamiętuje czy mamy założoną tarcze
|   |   // Zmienna Uriziel_1H
|   |   // Zmienna Knows_GetDemonHeart - umiejętność wycinania serc demonów
|   |   // Zmienna tablica PLAYER_TALENT_RUNES - umiejętności tworzenia run
|   |   // Zmienna TrueMageGuild - potrzebna do przetasowań w gildiach magów
|   |   // Zmiana punktów nauki przy nauce kregów magii
|   |   // Dodanie kosztów nauki tworzenia run
|   |   // Zmienna Knows_Book_Circle_01 - informacja czy przeczytaliśmy książkę "Pierwszy krąg magii"
|   |   // Stała XP_Ratford_Map - doświadczenie za Quest "Mapa dla Ratforda"
|   |   // Stała XP_Buddlers - doświadczenie za Quest "Kopacze do kopalni"
|   |   // Stała XP_CipherBussines - doświadczenie za Quest "Cipher - Najlepszy Diler"
|   |   // Zmienna GRD_Reputation licząca naszą reputację u strażników
|   |   // Zmienna Player_SentBuddler licząca ilu wysłaliśmy kopaczy do pracy w kopalni
|   |   // Zmienna CipherJoints licząca ile razy dostarczyliśmy dostawę ziela, potrzebne do ewolucji Ciphera
|   |   // Przeniesienie zmiennych zadaniowych z poszczególnych dialogów do Story_Globals + dodanie nowych
|   |   // Dodanie zmiennych potrzebynch do rosyjskiego fix moda
|   |   // zmienne SC_IsObessed oraz jointDay związane z uzależnieniem palenia ziela
|   |   // Dodanie GomezGuardTalk związanej z drażnieniem ochroniaża Gomeza
|   +--| svm
|   |   // dodanie svm CantReadThis związanej z kartkami uczącymi
|   |   // Prztłumaczenie SVM_3_Smalltalk15, było po niemiecku
|   +--| Text
|   |   // Zmiana nazwy umiejętności na Tarcza, oraz dodanie nazw poziomów (Brak|Adept|Mistrz)
|   |   // Zmiana nazwy umiejętności na Bieg, oraz dodanie nazw poziomów (Nie|Tak)
|   |   // Zmiany w nazwach poziomów dla broni białch (Zielony|Wojownik|Mistrz)
|   |   // Zmiany w nazwach poziomów dla broni dystansowych (Zielony|Strzelec|Mistrz)
|   |   // Zmiany w B_BuildBuyArmorString, dodanie nowych zbroi
|   |   // Dodanie stałej NAME_STR_GRAB = "Obciążenie Siły", używanej w tarczach
|   |   // Zmiana nazw dla SPL_NEW(2-4)
|   |   // MOBNAME_RUNEMAKER i PRINT_(RuneSuccess/ProdItemsMissing) dla stołu runicznego
|   |   // nowe stałe dla opisu przedmiotów (NAME_Prot_All, NAME_Bonus_ManaHpMax)
|   |   // Dodanie stałej "PODRYW" używanej w description w dialogach z kobietami
|   +--| Gothic.src
|   |   // Przeniesienie G_funcions wyżej w kolejce parsowania
|   |   // Wydzelenie z folderu "B" dwóch osobnych folderów B_AssignAmbientInfos i B_GiveTradeInv
|   |   // Dodanie funkcji B_TeachPlayerRunes do parsowania
|   |   // Dodanie funkcji B_Evolve do parsowania
|   |   // Dodanie funkcji B_GetInvItem do parsowania
|   |   // Przeniesienie AI\ORC nad Story\ZS
|   +--| magic_intern
|   |   // Zamiana stałej SPL_NEW(2-4)
|   +--| PFX
|   |   // Efekt wizualny do stołu runicznego
|   +--| SFX
|   |   // Dzwięk do stołu runicznego
|   |   // Dzwięki bagiennego szczura
|   |   // Dzwięki dzika
|   +--| VISUALFX
|   |   // wizualizacja DEMENTOR_FX używana gdy nie możemy spać z powodu uzależnienia od ziela
|/******************************************INNE END********************************************************
+-- Items
|   +--| Animaltrophy
|   |   // Dodanie Kości goblina, Kości szkieleta, serca demona, serca golema (do tworzenia run)
|   |   // Dodanie skóry dzika
|   +--| Armor
|   |   // Funkcje obsługujące zakładanie i zdejmowanie kapturów w szatach magów
|   |   // Dodano funkcje zmieniające skinBody podczas zakładania i zdejmowania zbroi (Głównie dla panerzy bractwa ale nie tylko)
|   |   // Strój Szkodnika został Ciężkim pancerzem Szkodnika
|   |   // Ciężki strój szkodnika został Lekkim pancerzem Najemnika
|   |   // Spodnie kreta mają teraz poprawną nazwe
|   |   // Dodano pancerze bandytów dla bandy Quentina
|   |   // Zmodyfikowanie statystyk wszystkich pancerzy sugerując się wartościami z G2
|   |   // Dodano dwa nowe pancerze dla cieni, oraz spodnie kopacza z kapturem -- soper machinima mod
|   |   // Dodanie wersje z kapturem szat magów i kilka nowych szat -- soper machinima mod
|   |   // Dodanie zbroi łowcy demonów -- Sequel
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
|   |   // Dodanie mieczy dla łowców demonów -- soper machinima mod
|   +--| Misc
|   |   // Dodanie składników potrzebnych do tworzenia run
|   |   // Zamiana Rtęci na wodę święconą
|   |   // ItMiJoint koją uzależnienie od ziela
|   |   // Dodanie złotego kompasu
|   +--| MissionItems
|   |   // 1 - Listy do Magów Ognia mają podpis "Marszałek Rigaldo
|   |   // 1 - List do Magów Ognia tworzy wpis w dzienniku
|   |   // 1 - Z Chromanimu 6 wypada kartka ucząca runy przywołania szkieleta
|   |   // 1 - "Receptura Cor Kaloma" wyświetla się jako kartka, a nie książka -- by marev
|   |   // 2 - Z almanachu wypada list od Xardasa oraz kartki uczące przywołąnie goblina oraz wilka
|   |   // 2 - Dodanie listów od Xardasa
|   |   // 2 - Dodanie kartek uczących tworzenia run przyzwać(goblina, wilka, szkieleta)
|   |   // 3 - Dodanie książki o bagiennym zielu, potrzebnej do wątku z Cipherem
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
|   |   // Dodanie kosturów
|   |   // Dodanie kamiennego topora dla kamiennego Orka
|   +-- Written
|   |   // książka o krwiopijcach uczy zarówno usuwanie żądła jak i skrzydeł
|   |   // Z "Pierwszy Krąg Magii wypada list od Xardasa
|   |   // Zmiany treści w książkach o kręgach Magii
|   |   // Dodanie książek Sekty oraz książki Przyzwania
|/*******************************************ITEMS END*******************************************************
|   +--| Spell_params | Spells_process_mana | Spells_process_released
|   |   // Dodanie zaklęcia SPL_TELEPORT6
|   |   // SummonsSkeleton przywołuje tylko jednego szkieleta
|   |   // Nowe zaklęcia przywołań (SummonGobbo, SummonWolf)
|   +--| spell_pyrokinesis | spell_chainlightning
|   |   // zmienione działanie czarów pirokineza i grom
|/*******************************************MAGIC END*******************************************************
+-- Monster
|   +--| Mst_*
|   |   // Zmiany parametrów potworów
|   +--| Mst_(Gobbo/Golem/Skeleton/Wolf)
|   |   // Nowe przywołania
|   |   // Lvl 0 dla przywołanych potworów przez gracza
|   |   // Golem Mostowy dodanie serca golema do stworzenia runy 'przywołanie golema'
|   |   // Skeleton dodanie kości szkieleta do tworzenia run przywołań
|   +--| Mst_Bloodfly
|   |   // Usunięcie skrzydeł z ekwipunku
|   |   // Dwa reskiny dla krwiopijców na bagnach -- soper machinima mod
|   +--| Mst_GobboPirat
|   |   // Gobliny piraci od Zakona -- soper machinima mod
|   +--| Mst_Keiler
|   |   // Dzik z G2
|   +--| Mst_Lurker
|   |   // Reskin dla topielca spod tamy
|   +--| Mst_MinecrawlerQueen
|   |   // Dodanie królowej świątynnych pełzaczy -- Dark Saga - soper machinima mod
|   +--| Mst_MinecrawlerWarrior
|   |   // Dodanie reskinu dla świątynnych pełzaczy -- Dark Saga - soper machinima mod
|   +--| Mst_OrcScout/Mst_OrcWarrior -- związane z rosyjskim fix modem
|   |   // Dodanie aivar[AIV_IMPORTANT]
|   |   // czasami zmiana start_aistate
|   |   // Orkowi zwiadowcy z cmentarzyska orków mają gildie goblin, żeby Lukor się nie siepał że z nimi walczymy
|   |   // Dodanie Orkowych szkieletów -- soper machinima mod
|   +--| Mst_OrcStone
|   |   // Kamienny Ork
|   +--| Mst_SwampRat
|   |   // Bagienny szczur z g2nk
|   +--| Mst_Zombie
|   |   // Dodanie Bagiennego Zombie -- soper machinima mod
|/*******************************************MONSTERS END****************************************************
+-- NPC
|   +-- BDT_QUENTIN
|   |   +--| ORG_858_Quentin
|   |   |    // Zmiana pancerza na BDT_ARMOR_H
|   |   +--| ORG(860_Renyu/861_Killian/862_Jacko)
|   |   |    // Zmiana pancerza na BDT_ARMOR_M
|   |   |    // Przywrócenie imion
|   |   +--| ORG_(863-871/874)_Rauber
|   |   |    // Zmiana pancerza na BDT_ARMOR_M
|   |/********************NPC BDT_QUENTIN END********************************
|   +-- NEW_CAMP
|   |   +--| KDW_(600-605)
|   |   |    // Zwiększenie many do 200
|   |   |    // (600_Saturas/601_Myxir) - noszą wersję szaty maga z kapturem
|   |   |    // (600-603) - noszą kostury
|   |   +--| KDW_604_Cronos
|   |   |    // Usunięcie magicznej runy
|   |   |    // Nosi wersję szaty maga z kapturem
|   |   +--| KDW_605_Riordian
|   |   |    // Usunięcie magicznej runy
|   |   +--| ORG_(800/804/834/837/892) / SLD_(707/738/762)_Soeldner
|   |   |    //Zmiany twarzy(double koło siebie), czasem pancerz i gildia
|   |   +--| ORG_875_Tuersteher / SLD_(700/701/709)
|   |   |    // Usunięcie Łuku
|   |   +--| ORG_826_Mordrag
|   |   |    // Przywrócenie umiejętności walki 1H i łuku
|   |   |    // Dodanie rutyny przebywanie w sekcie
|   |   +--| ORG_(830/833)
|   |   |    // Zwiększenie Siły, dodanie tarczy ITSH_REINFORCED_A
|   |   +--| ORG_831_Organizator
|   |   |    // Zmiana pancerza, Zwiększenie Siły, Dodanie Tarczy ITSH_G3_02_V2
|   |   +--| ORG_855_Wolf
|   |   |    // Dodanie Tarczy ITSH_WOLF_A
|   |   +--| ORG_(840/876)
|   |   |    // Usunięcie łuku, Dodanie Tarczy IT_SHIELD_SKULL
|   |   +--| ORG_873_Cipher
|   |   |    // Zmiana twarzy na tą z G2
|   |   |    // Dodanie rutyn związanych z questem "Cipher - Najlepszy Diler"
|   |   +--| SLD_703_Soeldner
|   |   |    // Zmiana twarzy, dodanie tarczy ITSH_KORSHAN_A
|   |   +--| SLD_708_Soeldner
|   |   |    // Zmiana statystyk na takie które przystoją najemnikowi
|   |   |    // Zmiana realnego id, było 856 
|   |   +--| SLD_(704,723)
|   |   |    // Dodanie tarczy ITSH_KORSHAN_A
|   |   +--| SLD_727_Soeldner
|   |   |    // Usunięcie łuku, Dodanie Tarczy IT_SHIELD_SKULL
|   |   +--| SLD_729_Kharim
|   |   |    // Zmiana pancerza na SLD_ARMOR_L, dodanie Tarczy ITSH_W2_EXECUTIONER
|   |   |    // Usunięcie z rutyny trenowania walki mieczem, ponieważ może zbugować tarcze
|   |   |    // Dodanie rutyny "back", gdzie wraca do nowego obozu 
|   |   +--| SLD_753_Baloro
|   |   |    // Usunięcie gildi, aby inni nie reagowali na walkę z nim -- by marev
|   |   +--| SFB_1000_Senyan
|   |   |    // Zmiana wyglądu na ten z G2NK
|   |/********************NPC NEW_CAMP END*********************************
|   +-- OLD_CAMP
|   |   +--| EBR_101_Scar
|   |   |   // Zwiększenie zręczności
|   |   |   // Dodanie bełtów
|   |   +--| EBR_103_Drak
|   |   |   // Nowa postać - ochroniarz Gomeza
|   |   +--| EBR_105_Raven / GRD_(200/210/233/255) / VLK_(538/581)
|   |   |    // Dodanie rutyny "out" - wywalenie za barierę
|   |   +--| EBR_106_Bartholo
|   |   |    // Usunięcie nieśmiertelności
|   |   +--| EBR_(108-110) -- Kobiety
|   |   |    // Ustawienie AIV_DIALOGFLAGS == TRUE, aby możliwy był dialog
|   |   |    // EBR_110_Seraphia - zmiana rutyny(cały czas pucuje podłogę by nie wchodzić w drogę ochroniarzowi Gomeza)
|   |   +--| GRD_(202/207)_Gardist
|   |   |    // Nowi strażnicy na placu wymian
|   |   +--| GRD_204_Gardist
|   |   |    // Dodanie flagi nieśmiertelności
|   |   |    // Dodanie Rutyny OT(będzie w kaplicy magów ognia)
|   |   +--| GRD_208_Cutter
|   |   |    // dodanie tarczy ITSH_PALADIN_A
|   |   +--| GRD_(220/221)_Gardist
|   |   |    // Dodanie flagi nieśmiertelności
|   |   +--| GRD_(205/222/223/238/279)
|   |   |    // Dodanie tarczy ITSH_G3_03
|   |   +--| GRD_(214/215/216/217)_Torwache / GRD_(285/286)_Gardist
|   |   |    // Dodanie tarczy ITSH_G3_04
|   |   +--| GRD_(218/237/245/292)_Gardist
|   |   |    // Dodanie Tarczy ITSH_W2_E3_REDANIA
|   |   +--| GRD_(231/287/289/299)_Gardist
|   |   |    // Dodanie tarczy ITSH_W2_E2_KEADWEN
|   |   +--| GRD_224_Pacho/GRD_(237/238)_Gardist
|   |   |    // Dodanie rutyn FMTaken2 przenoszący na plac wymian
|   |   +--| GRD_(275/276)
|   |   |    // Dodanie tarczy ITSH_W2_E2_KEADWEN
|   |   |    // Dodanie rutyn FMTaken2 przenoszący na plac wymian
|   |   +--| GRD_260_Drake
|   |   |   // Drake ma już tylko jeden kolor skóry -- by marev
|   |   +--| GRD_282_Nek
|   |   |    // Dodanie tarczy ITSH_G3_01_OLD
|   |   +--| KDF_(400-406)
|   |   |    // Zwiększenie many do 200
|   |   |    // (401_Damarok/402_Corristo/403_Drago) - noszą wersję szaty maga z kapturem
|   |   |    // (400-403) - noszą kostury
|   |   +--| KDF_405_Torrez
|   |   |    // Usunięcie magicznej runy
|   |   +--| KDF_(404_Xardas/406_OTXardas)
|   |   |    // Stara szata nowy kod
|   |   |    // 406_OTXardas posiada kostur   
|   |   +--| STT_(311/329)
|   |   |    // Dodanie rutyny "out" - wywalenie za barierę
|   |   +--| STT_(300_Alberto/301_Ian/335_Santino)
|   |   |    // Zmiana pancerza na STT_ARMOR_H2
|   |   +--| STT_(315_Sly/331_Fingers)
|   |   |    // Zmiana pancerza na STT_ARMOR_H1
|   |   +--| STT_302_Viper
|   |   |    // Dodanie przedmiotów do tworzenia run
|   |   +--| STT_321_Schatten
|   |   |    // Nowy cień na placu wymian
|   |   +--| VLK_(502/504/517)_Buddler
|   |   |    // Przywrócenie imion z Gothic alpha
|   |   |    // Dodanie nowych rutyn związanych z Questem CH2_Buddler
|   |   +--| VLK_511_Herek
|   |   |    // Zmiana pancerza na VLK_ARMOR_H
|   |   +--| VLK_(514/520/521/534/561)_Buddler
|   |   |    // Zmiana pancerza na VLK_ARMOR_H
|   |   +--| VLK_555_Buddler
|   |   |    // Zmiana twarzy
|   |   +--| VLK_573_Graham
|   |   |    // Posiada dodatkową mapę świata dla Ratforda
|   |   +--| VLK_574_Mud
|   |   |    // Dodanie rutyn związanych z przebywaniem wrzoda w sekcie
|   |   +--| VLK_580_Grim
|   |   |    // Dodanie rutyny przebywanie w sekcie
|   |   |    // Zmiana pancerza na VLK_ARMOR_H
|   |   +--| VLK_(584_Snipes/585_Aleph)
|   |   |    // Zmiana pancerza na VLK_ARMOR_H
|   |/********************NPC OLD_CAMP END*********************************
|   +-- SEKTE_CAMP
|   |   +--| GUR(1200/1201/1203/1204/1209/1210/1211)
|   |   |    // Zwiększenie many do 200
|   |   |    // (1200/1203/1210) - noszą kostury
|   |   +--| GUR(1205/1207) -- kobiety
|   |   |    // Ustawienie AIV_DIALOGFLAGS == TRUE, aby możliwy był dialog
|   |   +--| GUR_1208_BaalCadar
|   |   |    // Usunięcie magicznej runy
|   |   |    // Zwiększenie many do 200
|   |   +-- GUR_1211_BaalLukor
|   |   |    // Zmniejszenie poziomu do 28, jak ma każdy inny guru
|   |   +--| NOV_(1330_BaalParvez/1331_BaalTaran)
|   |   |    // Dodanie rutyny "back", gdzie wracają do obozu sekty
|   |   +--| NOV_1372_Bukano
|   |   |    // Nowa postać
|   |   +--| TPL_(1405_GorNaRan/1422_GorHanis/1439_GorNaDrak)
|   |   |    // Dodanie rutyn "flee" związanej z pójściem do świątyni śniącego
|   |   |    // TPL_1464_GorHanisOT - Wersja GorHanisa występująca w świątyni śniącego
|   |   +--| TPL_(1443-1446)_Templer
|   |   |    // Uśmiercenie strażników światynnych na cmentarzysku orków
|   |   +--| TPL_1449_Templer
|   |   |    // Wersja GorNaDraka wysępująca w świątyni śniącego
|   |   +--| TPL_1454_Templer
|   |   |    // Wersja GorNaRana występująca w świątyni śniącego
|   |   +--| TPL_1465_Salm
|   |   |    // Nowy strażnik świątynny do questa "Cipher - Najlepszy Diler"
|   |/*******************NPC SEKTE_CAMP END********************************
|   +--| InExtremo
|   |    // ie_397 - zmiana skinBody na skin bohatera z Gothic Sequel
|   |    // fan4 - zmiana skinBody na skin bohatera z G2
|   +--| PC_Fighter
|   |    // PC_FighterFM posiada ciężką zbroje najemnika
|   +--| ORC_Priests
|   |    // ORC_PRIEST_5 - dodanie tarczy ITSH_STALHRIM_B_SM
|   |    // ORC_PRIEST_5 - niewrażliwy na żadne obrażenia
|   +--| ORC_Warriors
|   |    // Nowi orkowie ślędzący/upominający z dialogami w mieście orków
|/********************************NPC END***********************************
+-- Worlds
|   +-- World.ZEN
|   |   // Dodanie stołów runicznych
|   |   // Dodanie kości goblina w jaskini goblinów (almanach)
|   |   // Obiekty OC_MOB_PAN mają dodane OnStateFunc = PanFry
|   |   // Osiatkowanie placu wymian, dodanie punktu zbierania ryżu
|   |   // połączenie waypointów na ścieżce do starej kopalni
|   |   // Dodanie księgi o bagiennym zielu do kufra Kaloma (tego z almanachem i kamieniem ogniskującym)
|   |   // Dodatkowe waypointy na bagnie dla bagiennych szczurów i zombie
