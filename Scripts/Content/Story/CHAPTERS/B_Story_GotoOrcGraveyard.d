//#####################################################################
//##
//##							KAPITEL 3
//##							=========
//##	Der Spieler wurde von Cor Angar in den Ork-Friedhof geschickt
//##
//#####################################################################

func void B_Story_GotoOrcGraveyard()
{
	//-------- Tagebucheintrag --------
	Log_CreateTopic		(CH3_OrcGraveyard,	LOG_MISSION);
	Log_SetTopicStatus	(CH3_OrcGraveyard,	LOG_RUNNING);
	B_LogEntry			(CH3_OrcGraveyard,	"Wielkie przyzwanie �ni�cego okaza�o si� niemal kompletn� klap�. Ujrzano jedynie mgliste wizje orkowych jaski�. Ogromy wysi�ek zm�g� Y'Beriona, duchowego przyw�dc� bractwa. Wielki Guru straci� przytomno��."); 
	B_LogEntry			(CH3_OrcGraveyard,	"Cor Angar, przyw�dca �wi�tynnej Stra�y, poprosi� mnie, bym uda� si� na cmentarzysko ork�w. Do tych podziemnych jaski� wys�ano wcze�niej grup� Stra�nik�w pod wodz� Baal Lukora. Mo�e uda�o si� im odkry� co�, co pozwoli�oby na ja�niejsze zrozumienie wizji zes�anej przez �ni�cego.");
	
	//-------- Templer und Orks vor Ork-Friedhof setzen --------
	// mitten auf dem Vorplatz 
	Wld_InsertNpc		(OrcBiter,			"OW_PATH_198_ORCGRAVEYARD4");
	Wld_InsertNpc		(OrcBiter,			"OW_PATH_198_ORCGRAVEYARD4");
	Wld_InsertNpc		(OrcBiter,			"OW_PATH_198_ORCGRAVEYARD4");
	Wld_InsertNpc		(OrcBiter,			"OW_PATH_198_ORCGRAVEYARD4");

	// vor dem H�hleneingang 
	Wld_InsertNpc		(OrcScout,			"OW_PATH_198_ORCGRAVEYARD5");
	Wld_InsertNpc		(OrcScout,			"OW_PATH_198_ORCGRAVEYARD6");
	Wld_InsertNpc		(OrcScout,			"OW_PATH_198_ORCGRAVEYARD7");
	Wld_InsertNpc		(OrcScout,			"OW_PATH_198_ORCGRAVEYARD8");

	Wld_InsertNpc		(Tpl_1463_Templer,	"OW_PATH_198_ORCGRAVEYARD8");

	//-------- Cor Kalom wegschicken --------
	var C_NPC Kalom; 
	Kalom = Hlp_GetNpc (GUR_1201_CORKALOM); 
	Npc_ExchangeRoutine (Kalom, "FLEE");

	var C_NPC Hanis;
	Hanis = Hlp_GetNpc (TPL_1422_GorHanis);
	Npc_ExchangeRoutine (Hanis, "FLEE");

	var C_NPC GorNaRan;
	GorNaRan = Hlp_GetNpc (TPL_1405_GorNaRan);
	Npc_ExchangeRoutine (GorNaRan, "FLEE");

	var C_NPC GorNaDrak;
	GorNaDrak = Hlp_GetNpc (TPL_1439_GorNaDrak);
	Npc_ExchangeRoutine (GorNaDrak, "FLEE");

	var C_NPC Parvez;
	Parvez = Hlp_GetNpc (NOV_1330_BaalParvez);
	Npc_ExchangeRoutine (Parvez, "BACK");

	var C_NPC Taran;
	Taran = Hlp_GetNpc (NOV_1331_BaalTaran);
	Npc_ExchangeRoutine (Taran, "BACK");

	var C_NPC Shrike;
	Shrike = Hlp_GetNpc (ORG_842_Shrike);
	Npc_ExchangeRoutine (Shrike, "START");

	var C_NPC Kharim;
	Kharim = Hlp_GetNpc (SLD_729_Kharim);
	Kharim.level = 16;
	Kharim.attribute[ATR_HITPOINTS_MAX] =	232;
	Kharim.attribute[ATR_HITPOINTS] 	=	232;
	Mdl_SetVisualBody (Kharim,"hum_body_Naked0",0, 3,"Hum_Head_FatBald", 9, 1, SLD_ARMOR_M);
	CreateInvItem (Kharim, ItMw_1H_Mace_War_02);
	Npc_ExchangeRoutine (Kharim, "BACK");

	if(Gorn_ShrikesHut == LOG_RUNNING)
	{
		Log_SetTopicStatus	(CH1_ShrikesHut,	LOG_FAILED);
		B_LogEntry			(CH1_ShrikesHut,	"Nie b�d� mia� ju� okazji wygoni� Krzykacza z chaty najemnik�w. Kharim wr�ci� ze starego obozu i sam zaj�� si� t� spraw�.");
		Gorn_ShrikesHut = LOG_FAILED;
	};
	if(Ghorim_KickHarlok == LOG_RUNNING)
	{
		Ghorim_KickHarlok = LOG_FAILED;
		B_LogEntry(CH1_GhorimsRelief,"Nie znalaz�em czasu, aby pom�c biednemu Ghorimowi. Teraz jest ju� chyba za p�no.");
		Log_SetTopicStatus(CH1_GhorimsRelief,LOG_FAILED);
	};


	//-------- globale Missionsvariable --------
	CorAngar_GotoOGY = TRUE;

	
	// NOVIZEN NACH HAUSE SCHICKEN
	var C_NPC Novize;
	Novize = Hlp_GetNpc (NOV_1319_Novize);
	Npc_ExchangeRoutine (Novize,"START");
	AI_ContinueRoutine	(Novize);
	
	
	var C_NPC Novize_1;
	Novize_1 = Hlp_GetNpc (NOV_1320_Novize);
	Npc_ExchangeRoutine   (Novize_1,"START");
	AI_ContinueRoutine	  (Novize_1);
	

	var C_NPC Novize_2;
	Novize_2 = Hlp_GetNpc (NOV_1343_Novize);
	Npc_ExchangeRoutine   (Novize_2,"START");
	AI_ContinueRoutine	  (Novize_2);
	
	var C_NPC Novize_3;
	Novize_3 = Hlp_GetNpc (NOV_1344_Novize);
	Npc_ExchangeRoutine   (Novize_3,"START");
	AI_ContinueRoutine	  (Novize_3);
	
	var C_NPC Novize_4;
	Novize_4 = Hlp_GetNpc (NOV_1339_Novize);
	Npc_ExchangeRoutine   (Novize_4,"START");
	AI_ContinueRoutine	  (Novize_4);
	
	var C_NPC Novize_5;
	Novize_5 = Hlp_GetNpc (NOV_1341_Novize);
	Npc_ExchangeRoutine   (Novize_5,"START");
	AI_ContinueRoutine	  (Novize_5);
	
	var C_NPC Novize_6;
	Novize_6 = Hlp_GetNpc (NOV_1346_Novize);
	Npc_ExchangeRoutine   (Novize_6,"START");
	AI_ContinueRoutine    (Novize_6);
	
	var C_NPC Novize_7;
	Novize_7 = Hlp_GetNpc (NOV_1347_Novize);
	Npc_ExchangeRoutine   (Novize_7,"START");
	AI_ContinueRoutine	  (Novize_7);
	
	var C_NPC Novize_8;
	Novize_8 = Hlp_GetNpc (NOV_1348_Novize);
	Npc_ExchangeRoutine   (Novize_8,"START");
	AI_ContinueRoutine	  (Novize_8);
	
	var C_NPC Novize_9;
	Novize_9 = Hlp_GetNpc (NOV_1349_Novize);
	Npc_ExchangeRoutine   (Novize_9,"START");
	AI_ContinueRoutine	  (Novize_9);
	
	var C_NPC Novize_10;
	Novize_10 = Hlp_GetNpc (NOV_1338_Novize);
	Npc_ExchangeRoutine    (Novize_10,"START");
	AI_ContinueRoutine	   (Novize_10);
	
	var C_NPC Novize_11;
	Novize_11 = Hlp_GetNpc (NOV_1337_Novize);
	Npc_ExchangeRoutine    (Novize_11,"START");
	AI_ContinueRoutine	   (Novize_11);

	var C_NPC Mud;
	Mud = Hlp_GetNpc (VLK_574_Mud);
	if(Mud.guild == GIL_NOV)
	{
		Npc_ExchangeRoutine    (Mud,"Sekte");
		AI_ContinueRoutine	   (Mud);
	};



};