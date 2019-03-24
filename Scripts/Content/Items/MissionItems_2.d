//#####################################################################
//##
//##
//##							KAPITEL 2
//##
//##
//#####################################################################

//---------------------------------------------------------------------
//	Karte für 1. Fokus
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
	TEXT[1]			= "Ta mapa wskazuje po³o¿enie kamienia";
	TEXT[2]			= "ogniskuj¹cego, który pozwoli";
	TEXT[3]			= "Y'Berionowi wezwaæ Œni¹cego.";
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
	name 				=	"Kamieñ z morskiego klifu";
	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;	

	hp 					=	1;
	hp_max 				=	1;
	weight 				=	1;
	value 				=	1;

	visual 				=	"ItMi_Focus_01.3ds";
	material 			=	MAT_STONE;

	description			=	name;
	TEXT[1]				=	"Jeden z piêciu artefaktów u¿ytych";
	TEXT[2]				=	"przy tworzeniu Bariery.";
};

//---------------------------------------------------------------------
//	Zahnrad für Ian
//---------------------------------------------------------------------
INSTANCE ItMi_Stuff_Gearwheel_01(C_Item)
{	
	name 				=	"Ko³o zêbate";

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
	name 					=	"Jajo pe³zacza";
	
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MISSION|ITEM_MULTI;	

	value 					=	100;

	visual 					=	"ItAt_Crawlerqueen.3ds"; 
	material 				=	MAT_LEATHER;

	description				=	name;
	TEXT[0]					=	"Te jaja zosta³y z³o¿one przez";
	TEXT[1]					=	"królow¹ pe³zaczy.";
	TEXT[2]					=	"Zawieraj¹ o wiele silniejsz¹ wydzielinê,";
	TEXT[3]					=	"ni¿ wnêtrznoœci doros³ych osobników.";
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
	TEXT[0]					=	"Ta staro¿ytna, magiczna ksiêga zawiera";
	TEXT[1]					=	"fragmenty traktuj¹ce o wykorzystaniu ";
	TEXT[2]					=	"mocy kamieni ogniskuj¹cych.";
};
FUNC VOID UseItWrFokusbuch()
{   
			
				if (Wissen_Almanach == FALSE)
				&& Npc_IsPlayer (self)
				{
					B_GiveXP (50);
					G_PrintScreen("Z ksi¹¿ki wypad³ stos kartek");
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
				Doc_PrintLine	( nDocID,  0, "Rozdzia³ 23"			);
				Doc_PrintLine	( nDocID,  0, "");
				Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
				Doc_PrintLine	( nDocID,  0, "Ogniskowanie mocy");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0, "Magia skumulowana w kamieniu ulega wielokrotnemu wzmocnieniu zanim wyzwol¹ j¹ s³owa zaklêcia. To, czy efekt bêdzie trwa³y czy tylko chwilowy, zale¿y wy³¹cznie od maga. ");
				Doc_PrintLine	( nDocID,  0, "");
				Doc_PrintLines	( nDocID,  0, "Tym samym, po wyzwoleniu energii, kamieñ staje siê jeno pust¹, pozbawion¹ mocy skorup¹.");

				//2.Seite
				Doc_SetMargins	( nDocID, -1, 30, 20, 275, 20, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus, links,oben,rechts,unten)
				Doc_PrintLine	( nDocID,  1,  "");
				Doc_PrintLines	( nDocID,  1, "S³owa, które nale¿y wypowiedzieæ, aby uwolniæ moc kamienia, nie powinny byæ zagadk¹ dla wiêkszoœci adeptów sztuk magicznych. W dzisiejszych czasach, nawet formu³y pozwalaj¹ce tchn¹æ magiê w nowy artefakt spowszednia³y. ");
				Doc_PrintLine	( nDocID,  1,  "");
				Doc_PrintLines	( nDocID,  1,  "Ale tylko nieliczni maj¹ umiejêtnoœci potrzebne do ponownego na³adowania kamienia. Te prastare formu³y s¹ pilnie strze¿onym sekretem arcymistrzów magii." );
				Doc_PrintLine	( nDocID,  1, "");
				Doc_PrintLines	( nDocID,  1, "Zatem, Mêdrcze - otwórz sw¹ duszê na s³owa staro¿ytnej potêgi.  ");
				
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
	description			= "Notatka z ksi¹¿ki Pierwszy Kr¹g Magii";
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
					Doc_PrintLine	( nDocID,  0, "Magia przywo³añ,");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLines	( nDocID,  0, "Ksiêgi magów wody i ognia nie ujawniaj¹ ca³ej prawdy na temat struktury magii. W swoich badaniach odkry³em istnienie magii o wiele potê¿niejszej ni¿ obejmuje to ludzkie pojêcie. Bierze siê ona z potêgi Beliara. Magus korzystaj¹c ze swojej energii magicznej, mo¿e otwrzyæ portal do królestwa Beliara, aby przywo³aæ stamt¹d s³ugi z³a.");
					Doc_PrintLines	( nDocID,  0, "Przywo³añców mo¿na kontrolowaæ, jednak wymaga to odpowiedniego doœwiadczenia. Czym potê¿niejsze stworzenie, tym trudniej go kontrolowaæ.");				
					Doc_PrintLines	( nDocID,  0, "Szczegó³y opisa³em w osobnej notatce, skrzêtnie ukrytej miêdzy stronicami Almanachu. ");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "                                      Xardas");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetMargins	( nDocID, -1, 200, 50, 50, 50, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus
				
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
					Doc_PrintLine	( nDocID,  0, "Magia przywo³añ,");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetFont 	( nDocID, -1, "font_10_book.TGA"	   			); 	// -1 -> all pages 
					Doc_PrintLines	( nDocID,  0, "Sporz¹dzi³em receptury dwóch drobnych przywo³añ krêgu pierwszego i drugiego. Przywo³anie szkieletu goblina i wilka. Zrozumienie ich wymaga pewnego intelektu, ale nawet œrednio rozgarniêty mag powinien sobie z nimi poradziæ.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "W poszukiwaniu odpowiedzi na moje pytania uda³em siê do tajemniczej wie¿y na wschodzie. Wie¿a zamieszka³a jest przez armiê nieumar³ch. Zg³ebienie tej wiedzy pozwoli³o mi posun¹æ moje badania naprzód.");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, "                                      Xardas");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_SetMargins	( nDocID, -1, 200, 50, 50, 50, 1   		);  //  0 -> margins are in pixels (Position des Textes von den Ränder des TGAs aus
				
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
					Doc_PrintLines	( nDocID,  0, "Kr¹g 1");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1 koœæ goblina");
					Doc_PrintLine	( nDocID,  0, Text					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_Show		( nDocID );
	}
	else
	{
		B_say(self,self, "SVM_18_CantReadThis"); // Nie potrafiê tego przeczytaæ.
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
					Doc_PrintLines	( nDocID,  0, "Kr¹g 2");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1 skóra wilka");
					Doc_PrintLine	( nDocID,  0, Text					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_Show		( nDocID );
	}
	else
	{
		B_say(self,self, "SVM_18_CantReadThis"); // Nie potrafiê tego przeczytaæ.
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
					Doc_PrintLines	( nDocID,  0, "Kr¹g 3");
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLines	( nDocID,  0, "1 koœæ szkieletu");
					Doc_PrintLine	( nDocID,  0, Text					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_PrintLine	( nDocID,  0, ""					);
					Doc_Show		( nDocID );
	}
	else
	{
		B_say(self,self, "SVM_18_CantReadThis"); // Nie potrafiê tego przeczytaæ.
	};
		
};
