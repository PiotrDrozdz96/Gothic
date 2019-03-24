//#####################################################################
//##
//##
//##							KAPITEL 2
//##
//##
//#####################################################################

//---------------------------------------------------------------------
//	Karte f�r 1. Fokus
//---------------------------------------------------------------------
INSTANCE ItWrFocusmapPsi(C_Item)
{	
	name 			=	"Mapa od Y'Beriona";
	
	mainflag 		=	ITEM_KAT_DOCS;
	flags 			=	ITEM_MISSION;

	value 			=	15;

	visual 			=	"ItWr_Map_01.3ds";
	material 		=	MAT_LEATHER;

	scemeName		=	"MAP";	
	on_state[0]		=	UseFocusmapPsi;

	description		= name;
	TEXT[1]			= "Ta mapa wskazuje po�o�enie kamienia";
	TEXT[2]			= "ogniskuj�cego, kt�ry pozwoli";
	TEXT[3]			= "Y'Berionowi wezwa� �ni�cego.";
};

	FUNC VOID UseFocusmapPsi()
	{
		var int nDocID;
		
		nDocID = 	Doc_CreateMap	()			  ;							// DocManager 
					Doc_SetLevel	( nDocID,	"WORLD.ZEN" );
					Doc_SetPages	( nDocID, 1 );                         
					Doc_SetPage 	( nDocID, 0, "Map_World_FocusPSI.tga", 	1	);  //  1 -> DO NOT SCALE 

					Doc_Show		( nDocID 	);
	};

//---------------------------------------------------------------------
//	Fokus 1 - (Meeresklippe)
//---------------------------------------------------------------------
INSTANCE Focus_1(C_Item)
{	
	name 				=	"Kamie� z morskiego klifu";
	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;	

	hp 					=	1;
	hp_max 				=	1;
	weight 				=	1;
	value 				=	1;

	visual 				=	"ItMi_Focus_01.3ds";
	material 			=	MAT_STONE;

	description			=	name;
	TEXT[1]				=	"Jeden z pi�ciu artefakt�w u�ytych";
	TEXT[2]				=	"przy tworzeniu Bariery.";
};

//---------------------------------------------------------------------
//	Zahnrad f�r Ian
//---------------------------------------------------------------------
INSTANCE ItMi_Stuff_Gearwheel_01(C_Item)
{	
	name 				=	"Ko�o z�bate";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;	

	value 				=	0;

	visual 				=	"ItMi_Stuff_Gearwheel_01.3ds";
	material 			=	MAT_METAL;
	description			=	name;
	TEXT[0]				=	"Pochodzi z uszkodzonego rozdrabniacza";
	TEXT[1]				=	"porzuconego w bocznym tunelu";
	TEXT[2]				=	"Starej Kopalni.";
};

//---------------------------------------------------------------------
//	Minecrawler-Ei
//---------------------------------------------------------------------
INSTANCE ItAt_Crawlerqueen(C_Item)
{	
	name 					=	"Jajo pe�zacza";
	
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MISSION|ITEM_MULTI;	

	value 					=	100;

	visual 					=	"ItAt_Crawlerqueen.3ds"; 
	material 				=	MAT_LEATHER;

	description				=	name;
	TEXT[0]					=	"Te jaja zosta�y z�o�one przez";
	TEXT[1]					=	"kr�low� pe�zaczy.";
	TEXT[2]					=	"Zawieraj� o wiele silniejsz� wydzielin�,";
	TEXT[3]					=	"ni� wn�trzno�ci doros�ych osobnik�w.";
	TEXT[5]					=	NAME_Value;					COUNT[5]	= value;
};

//---------------------------------------------------------------------
//	Almanach / Fokusbuch
//---------------------------------------------------------------------
INSTANCE ItWrFokusbuch(C_Item)
{	
	name 					=	"Almanach";

	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MISSION;	

	value 					=	0;

	visual 					=	"ItWr_Book_02_03.3ds";
	material 				=	MAT_LEATHER;

	scemeName				=	"MAP";
	on_state[0]				= 	UseItWrFokusbuch;
	description				=	name;
	TEXT[0]					=	"Ta staro�ytna, magiczna ksi�ga zawiera";
	TEXT[1]					=	"fragmenty traktuj�ce o wykorzystaniu ";
	TEXT[2]					=	"mocy kamieni ogniskuj�cych.";
};
FUNC VOID UseItWrFokusbuch()
{   
			
				if (Wissen_Almanach == FALSE)
				&& Npc_IsPlayer (self)
				{
					B_GiveXP (50);
					G_PrintScreen("Z ksi��ki wypad� stos kartek");
					CreateInvItem(self, ItWr_Necromancer_Letter_02);
					CreateInvItem(self, ItWr_SummonGobbo);
					CreateInvItem(self, ItWr_SummonWolf);
					Wissen_Almanach = TRUE;
				};
			
				var int			nDocID;	
				nDocID = 	Doc_Create		()			  ;								// DocManager 
				Doc_SetPages	( nDocID,  2 );                         //wieviel Pages

				Doc_SetPage 	( nDocID,  0, "Book_Mage_L.tga", 	0 		); 
				Doc_SetPage 	( nDocID,  1, "Book_Mage_R.tga",	0		);
				
				//1.Seite
				
				Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
				Doc_SetMargins	( nDocID,  0,  275, 20, 30, 20, 1   		);  //  0 -> margins are in pixels
				Doc_PrintLine	( nDocID,  0, "Rozdzia� 23"			);
				Doc_PrintLine	( nDocID,  0, "");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
				Doc_PrintLine	( nDocID,  0, "Ogniskowanie mocy");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0, "Magia skumulowana w kamieniu ulega wielokrotnemu wzmocnieniu zanim wyzwol� j� s�owa zakl�cia. To, czy efekt b�dzie trwa�y czy tylko chwilowy, zale�y wy��cznie od maga. ");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0, "Tym samym, po wyzwoleniu energii, kamie� staje si� jeno pust�, pozbawion� mocy skorup�.");

				//2.Seite
				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	( nDocID,  1,  "");
				Doc_PrintLines	( nDocID,  1, "S�owa, kt�re nale�y wypowiedzie�, aby uwolni� moc kamienia, nie powinny by� zagadk� dla wi�kszo�ci adept�w sztuk magicznych. W dzisiejszych czasach, nawet formu�y pozwalaj�ce tchn�� magi� w nowy artefakt spowszednia�y. ");
				Doc_PrintLine	( nDocID,  1,  "");
				Doc_PrintLines	( nDocID,  1,  "Ale tylko nieliczni maj� umiej�tno�ci potrzebne do ponownego na�adowania kamienia. Te prastare formu�y s� pilnie strze�onym sekretem arcymistrz�w magii." );
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLines	( nDocID,  1, "Zatem, M�drcze - otw�rz sw� dusz� na s�owa staro�ytnej pot�gi.  ");
				
				Doc_Show		( nDocID );
};

INSTANCE ItWr_Necromancer_Letter_01 (C_Item)
{	
	name 				=	"Kartka";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;	

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseNecromancerLetter_01;
	scemeName			=	"MAP";
	description			= "Notatka z ksi��ki Pierwszy Kr�g Magii";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	
};
func void UseNecromancerLetter_01 ()
{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, " "					);
					Doc_PrintLine	( nDocID,  0, "Magia przywo�a�,");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLines	( nDocID,  0, "Ksi�gi mag�w wody i ognia nie ujawniaj� ca�ej prawdy na temat struktury magii. W swoich badaniach odkry�em istnienie magii o wiele pot�niejszej ni� obejmuje to ludzkie poj�cie. Bierze si� ona z pot�gi Beliara. Magus korzystaj�c ze swojej energii magicznej, mo�e otwrzy� portal do kr�lestwa Beliara, aby przywo�a� stamt�d s�ugi z�a.");
					Doc_PrintLines	( nDocID,  0, "Przywo�a�c�w mo�na kontrolowa�, jednak wymaga to odpowiedniego do�wiadczenia. Czym pot�niejsze stworzenie, tym trudniej go kontrolowa�.");				
					Doc_PrintLines	( nDocID,  0, "Szczeg�y opisa�em w osobnej notatce, skrz�tnie ukrytej mi�dzy stronicami Almanachu. ");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "                                      Xardas");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetMargins	( nDocID, -1, 200, 50, 50, 50, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus
				
					Doc_Show		( nDocID );
		
};

INSTANCE ItWr_Necromancer_Letter_02 (C_Item)
{	
	name 				=	"Kartka";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItWr_Scroll_01.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseNecromancerLetter_02;
	scemeName			=	"MAP";
	description			= "Notatka z Almanachu";
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	
};
func void UseNecromancerLetter_02 ()
{   
		var int nDocID;
		
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, "font_10_book.tga"	   			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, " "					);
					Doc_PrintLine	( nDocID,  0, "Magia przywo�a�,");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLines	( nDocID,  0, "Sporz�dzi�em receptury dw�ch drobnych przywo�a� kr�gu pierwszego i drugiego. Przywo�anie szkieletu goblina i wilka. Zrozumienie ich wymaga pewnego intelektu, ale nawet �rednio rozgarni�ty mag powinien sobie z nimi poradzi�.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "W poszukiwaniu odpowiedzi na moje pytania uda�em si� do tajemniczej wie�y na wschodzie. Wie�a zamieszka�a jest przez armi� nieumar�ch. Zg�ebienie tej wiedzy pozwoli�o mi posun�� moje badania naprz�d.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "                                      Xardas");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetMargins	( nDocID, -1, 200, 50, 50, 50, 1   		);  //  0 -> margins are in pixels (Position des Textes von den R�nder des TGAs aus
				
					Doc_Show		( nDocID );
		
};

INSTANCE ItWr_SummonGobbo (C_Item)
{	
	name 				=	"Kartka";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItAr_Scroll_39.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseSummonGobbo;
	scemeName			=	"MAP";
	description			= "Przyzwanie szkieletu-goblina";
	TEXT	[1]			=	NAME_Mag_Circle;			COUNT	[1]		=	1;
	TEXT	[2]			=	"Punkty nauki";				COUNT	[2]		=	5;
	TEXT	[3]			=	NAME_Manakosten;			COUNT	[3]		=	SPL_SENDCAST_SUMMONGOBBO;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	
};
func void UseSummonGobbo ()
{   
	if(Npc_GetTalentSkill (self,NPC_TALENT_MAGE ) > 0 && self.lp > 4 && PLAYER_TALENT_RUNES[SPL_SUMMONGOBBO] == FALSE)
	{
		B_TeachPlayerTalentRunes(self, SPL_SUMMONGOBBO, 5);
	};
	if(PLAYER_TALENT_RUNES[SPL_SUMMONGOBBO] == TRUE)
	{
		var int nDocID;
		var string Text;
		Text = ConcatStrings (NAME_Manakosten,IntToString (SPL_SENDCAST_SUMMONGOBBO));
		
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, " "					);
					Doc_PrintLine	( nDocID,  0, "Przyzwanie szkieletu-goblina");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Kr�g 1");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1 ko�� goblina");
					Doc_PrintLine	( nDocID,  0, Text					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_Show		( nDocID );
	}
	else
	{
		B_say(self,self, "SVM_18_CantReadThis"); // Nie potrafi� tego przeczyta�.
	};
		
};

INSTANCE ItWr_SummonWolf (C_Item)
{	
	name 				=	"Kartka";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItAr_Scroll_09.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseSummonWolf;
	scemeName			=	"MAP";
	description			= "Przyzwanie wilka";
	TEXT	[1]			=	NAME_Mag_Circle;			COUNT	[1]		=	2;
	TEXT	[2]			=	"Punkty nauki";				COUNT	[2]		=	5;
	TEXT	[3]			=	NAME_Manakosten;			COUNT	[3]		=	SPL_SENDCAST_SUMMONWOLF;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	
};
func void UseSummonWolf ()
{   
	if(Npc_GetTalentSkill (self,NPC_TALENT_MAGE ) > 1 && self.lp > 4 && PLAYER_TALENT_RUNES[SPL_SUMMONWOLF] == FALSE)
	{
		B_TeachPlayerTalentRunes(self, SPL_SUMMONWOLF, 5);
	};
	if(PLAYER_TALENT_RUNES[SPL_SUMMONWOLF] == TRUE)
	{
		var int nDocID;
		var string Text;
		Text = ConcatStrings (NAME_Manakosten,IntToString (SPL_SENDCAST_SUMMONWOLF));
		
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, " "					);
					Doc_PrintLine	( nDocID,  0, "Przyzwanie wilka");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Kr�g 2");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1 sk�ra wilka");
					Doc_PrintLine	( nDocID,  0, Text					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_Show		( nDocID );
	}
	else
	{
		B_say(self,self, "SVM_18_CantReadThis"); // Nie potrafi� tego przeczyta�.
	};
		
};

INSTANCE ItWr_SummonSkeleton (C_Item)
{	
	name 				=	"Kartka";

	mainflag 			=	ITEM_KAT_DOCS;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItAr_Scroll_23.3DS";
	material 			=	MAT_LEATHER;
	on_state[0]			=   UseSummonSkeleton;
	scemeName			=	"MAP";
	description			= "Przyzwanie szkieleta";
	TEXT	[1]			=	NAME_Mag_Circle;			COUNT	[1]		=	3;
	TEXT	[2]			=	"Punkty nauki";				COUNT	[2]		=	10;
	TEXT	[3]			=	NAME_Manakosten;			COUNT	[3]		=	SPL_SENDCAST_SUMMONSKELETON;
	TEXT[5]				= NAME_Value;
	COUNT[5]			= value;
	
};
func void UseSummonSkeleton ()
{   
	if(Npc_GetTalentSkill (self,NPC_TALENT_MAGE ) > 2 && self.lp > 9 && PLAYER_TALENT_RUNES[SPL_SUMMONSKELETON] == FALSE)
	{
		B_TeachPlayerTalentRunes(self, SPL_SUMMONSKELETON, 10);
	};
	if(PLAYER_TALENT_RUNES[SPL_SUMMONSKELETON] == TRUE)
	{
		var int nDocID;
		var string Text;
		Text = ConcatStrings (NAME_Manakosten,IntToString (SPL_SENDCAST_SUMMONSKELETON));
		
		nDocID = 	Doc_Create		()			  ;								// DocManager 
					Doc_SetPages	( nDocID,  1 );                         //wieviel Pages
					Doc_SetPage 	( nDocID,  0, "letters.TGA"  , 0 		); 
					Doc_SetFont 	( nDocID, -1, "font_15_book.tga"	   			); 	// -1 -> all pages 
					Doc_SetMargins	( nDocID, -1, 50, 50, 50, 50, 1   		);  //  0 -> margins are in pixels
					Doc_PrintLine	( nDocID,  0, " "					);
					Doc_PrintLine	( nDocID,  0, "Przyzwanie szkieleta");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "Kr�g 3");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1 ko�� szkieletu");
					Doc_PrintLine	( nDocID,  0, Text					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_Show		( nDocID );
	}
	else
	{
		B_say(self,self, "SVM_18_CantReadThis"); // Nie potrafi� tego przeczyta�.
	};
		
};
