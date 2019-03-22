// **************
// Kapitelwechsel
// **************

FUNC VOID B_Kapitelwechsel (VAR INT neues_Kapitel)
{
	Kapitel = neues_Kapitel;

	//***************************************************************************
	//	KAPITEL 1
	//***************************************************************************
	if		(neues_Kapitel == 1)
	{
		PrintDebugNpc	(PD_MISSION, "---=== DAS ERSTES KAPITEL ===---");
		B_Give_SkipChapter2Weapons ();
		
		introducechapter ("Rozdzia³ 1","Witamy w Kolonii!","chapter1.tga","levelup.wav", 6000);
		//introducechapter ("Chapter 1","Welcome to the colony","chapter1.tga","levelup.wav", 6000);
	}
	
	//***************************************************************************
	//	KAPITEL 2
	//***************************************************************************
	else if	(neues_Kapitel == 2)
	{
		PrintDebugNpc	(PD_MISSION, "---=== DAS ZWEITE KAPITEL ===---");

		//-------- Händler auffüllen --------
		B_Give_FiskChapter2Weapons ();
		B_Give_DarrionChapter2Weapons ();
		B_Give_SharkyChapter2Weapons ();
		B_Give_BaalCadarChapter2Runes ();
		B_Give_TorrezChapter2Runes ();
		B_Give_CronosChapter2Runes ();
		B_GiveRiordianChapter2Potions ();
		B_Give_CavalornChapter2Weapons();
		B_Give_WolfChapter2Weapons();
		B_Give_SkipChapter2Weapons ();
	
		//-------- Oberwelt-Monster nochmal "nachfüllen" --------	
		B_Story_RespawnOW();
		
		//-------- InExtremo vorbereiten --------
		B_InsertInExtremo();
		
		//------------------ Evolve ---------------
		B_Evolve_OC();
		B_Evolve_Sekte ();
		B_Evolve_SekteSpy();
		B_Evolve_Cipher();

		introducechapter ("Rozdzia³ 2","Gniazdo pe³zaczy","chapter2.tga","levelup.wav", 6000);
		//introducechapter ("Chapter 2","The Minecrawler's nest","chapter2.tga","levelup.wav", 6000);
	}
	
	//***************************************************************************
	//	KAPITEL 3
	//***************************************************************************
	else if (neues_Kapitel == 3)
	{
		PrintDebugNpc	(PD_MISSION, "---=== DAS DRITTE KAPITEL ===---");

		//-------- InExtremo wegräumen --------
		B_InExtremoStopMusic();	
		B_KillInExtremo();

		//-------- Kapitel 2 Missionen nochmal auf Success setzen --------	
		YBerion_BringFocus 		= LOG_SUCCESS;
		CorKalom_BringMCQBalls 	= LOG_SUCCESS;
		CorKalom_BringBook 		= LOG_SUCCESS;

		//-------- Oberwelt-Monster nochmal "nachfüllen" --------	
		//B_Story_RespawnOW();
		
		//-------- Waffenhändler auffrischen --------
		B_Give_FiskChapter3Weapons ();
		B_Give_DarrionChapter3Weapons ();
		B_Give_SharkyChapter3Weapons ();
		B_Give_BaalCadarChapter3Runes ();
		B_Give_TorrezChapter3Runes ();
		B_Give_TorrezChapter3Runes ();
		B_Give_CronosChapter3Runes ();
		B_GiveRiordianChapter3Potions ();
		B_Give_CavalornChapter3Weapons();
		B_Give_WolfChapter3Weapons ();
		B_Give_SkipChapter3Weapons ();
		//-------- Video abspielen --------
		PlayVideo		("GREATPRAYER.BIK");

		//-------- Y'Berion ins Koma fallen lassen --------
		var C_NPC YBerion;
		YBerion = Hlp_GetNpc(Gur_1200_YBerion);
		YBerion.flags = 0;					// IMMORTAL-Flag löschen
		Npc_ChangeAttribute	(YBerion, ATR_HITPOINTS, -YBerion.attribute[ATR_HITPOINTS_MAX]+1);
		YBerion.flags = NPC_FLAG_IMMORTAL;	// IMMORTAL-Flag wieder setzen
		Npc_ExchangeRoutine (YBerion,	"DRAINED");
		AI_ContinueRoutine	(YBerion);
		
		//---GROSSE BESCHWÖRUNG TRIGGER NPCS ----------------------- M.F.
		//---HIER WERDEN DIE IN DEN TRIGGERINFOS GESETZTEN WAHRNEHMUNGEN WIEDER DEFAULT GESETZT--- M.F.
		var C_NPC Templer;		Templer	 	 = Hlp_GetNpc	(TPL_1431_Templer);
		Templer.senses =		hero.senses; 
		
		var C_NPC Templer_1;	Templer_1	 	 = Hlp_GetNpc	(TPL_1430_Templer);
		Templer_1.senses =		hero.senses;
		
		var C_NPC Novize;		Novize	     = Hlp_GetNpc	(NOV_1319_Novize);
		Novize.senses =			hero.senses;
		
		var C_NPC Novize_1;		Novize_1	 	 = Hlp_GetNpc	(NOV_1319_Novize);
		Novize_1.senses =		hero.senses;

		//------------------ Evolve ---------------
		B_Story_OMFull();
		B_Evolve_Cipher();
		
		introducechapter ("Rozdzia³ 3","Staro¿ytna magia","chapter3.tga","levelup.wav", 6000);
		//introducechapter ("Chapter 3","Artifacts of ancient power","chapter3.tga","levelup.wav", 6000);
	}
	
	//***************************************************************************
	//	KAPITEL 4
	//***************************************************************************
	else if (neues_Kapitel == 4)
	{
		PrintDebugNpc	(PD_MISSION, "---=== DAS VIERTE KAPITEL ===---");

		 
		B_ExchangeRoutine (GRD_205_Scorpio,"BANNISHED");
		B_ChangeGuild    (GRD_205_Scorpio,GIL_NONE);  
		B_SetPermAttitude	(GRD_205_Scorpio,	ATT_NEUTRAL);
		
		//out night of raven
		B_ExchangeRoutine (EBR_105_Raven,"OUT");
		B_ExchangeRoutine (GRD_200_Thorus,"OUT");
		B_ExchangeRoutine (GRD_210_Scatty,"OUT");
		B_ExchangeRoutine (STT_329_Dexter,"OUT");
		B_ExchangeRoutine (STT_311_Fisk,"OUT");
		B_ExchangeRoutine (VLK_538_Huno,"OUT");
		B_ExchangeRoutine (VLK_581_Snaf,"OUT");
		B_ExchangeRoutine (GRD_233_Bloodwyn,"OUT");
		B_ExchangeRoutine (GRD_255_Fletcher,"OUT");
		
		
		B_ChangeGuild    (STT_336_Cavalorn,GIL_NONE);

		//-------- Waffenhändler auffrischen --------
		B_Give_ScorpioChapter4Weapons ();
		B_Give_DarrionChapter4Weapons ();
		B_Give_SharkyChapter4Weapons ();
		B_Give_BaalCadarChapter4Runes ();
		B_Give_XardasChapter4Runes ();
		B_Give_CronosChapter4Runes ();
		B_GiveRiordianChapter4Potions ();
		B_Give_CavalornChapter4Weapons();
		B_Give_WolfChapter4Weapons();	
		//-------- globale Variablen --------
		Saturas_BringFoci = 5;

		//-------- Missionsgegenstände --------
		CreateInvItem		(hero,	ItArRuneTeleport2);

		//-------- Tagebucheinträge --------
		Log_CreateTopic		(CH4_Firemages,	LOG_MISSION);
		Log_SetTopicStatus	(CH4_Firemages,	LOG_RUNNING);
		B_LogEntry			(CH4_Firemages,"Saturas, przywódca Magów Wody poprosi³ mnie o ostatni¹ przys³ugê. Aby wysadziæ w powietrze kopiec rudy, magowie z Nowego Obozu potrzebuj¹ pomocy swych braci z Krêgu Ognia. Nie wiem jeszcze, w jaki sposób uda mi siê przekonaæ magów Gomeza do wspó³pracy, ale spróbujê wymyœliæ coœ po drodze.");

		//-------- Szene am Damm --------
		B_ExchangeRoutine	(SLD_700_LEE,"DAMNPAST"); 
		B_ExchangeRoutine	(BAU_935_HOMER,"DAMNPAST"); 
		
		//-------- Spielergilde ändern --------
		oldHeroGuild = Npc_GetTrueGuild(hero);
		if	C_NpcBelongsToOldCamp(hero) 
		&& (Npc_GetTrueGuild (hero) != GIL_KDF)
		{
			Npc_SetTrueGuild(hero,	GIL_NONE);		// "Ausgestoßener" aus dem Alten Lager
			hero.guild = GIL_NONE;
		};
		
		//-------- AL-Tore schließen --------
		B_ExchangeRoutine	(GRD_228_Gardist, "FMTaken");	//Hinteres Tor
		B_ExchangeRoutine	(GRD_230_Gardist, "FMTaken");	//Haupttor
		B_ExchangeRoutine	(GRD_280_Gardist, "FMTaken");	//Inneres Tor
			
		//-------- Windenwachen verwundbar machen --------
		B_ClearImmortal		(Grd_228_Gardist);				//Hinteres Tor     
		B_ClearImmortal		(Grd_230_Gardist);              //Haupttor    
		B_ClearImmortal		(Grd_280_Gardist);              //Inneres Tor 

		//-------- Feuermagier töten --------
		B_KillNpc			(Kdf_400_Rodriguez);	
		B_KillNpc			(Kdf_401_Damarok);	
		B_KillNpc			(Kdf_402_Corristo);	
		B_KillNpc			(Kdf_403_Drago);	
		B_KillNpc			(Kdf_405_Torrez);

		//-------- Gäste im Alten Lager töten --------
		B_KillNpc			(Nov_1330_BaalParvez);
		B_KillNpc			(Nov_1331_BaalTaran);
		B_KillNpc			(Tpl_1422_GorHanis);
		B_KillNpc			(Sld_729_Kharim);

		//-------- TAs von Diego und Milten ändern --------
		B_ExchangeRoutine	(PC_Thief,	"OCWait");
		B_ExchangeRoutine	(PC_Mage,	"OCWait");
		B_ChangeGuild		(PC_Thief,	GIL_KDF);		// "Ausgestoßener" aus dem Alten Lager
		B_SetPermAttitude	(PC_Thief,	ATT_FRIENDLY);
		B_SetPermAttitude	(PC_Mage,	ATT_FRIENDLY);
		

		//-------- Kampfgruppe vor Haupttor --------
		//B_ExchangeRoutine	(GRD_255_Fletcher,	"FMTaken2");	// Verstärkung vor das Haupttor (Anführer)
		B_ExchangeRoutine	(GRD_252_Gardist,	"FMTaken2");	// Verstärkung vor das Haupttor
		B_ExchangeRoutine	(GRD_253_Gardist,	"FMTaken2");	// Verstärkung vor das Haupttor
		B_ExchangeRoutine	(GRD_244_Gardist,	"FMTaken2");	// Verstärkung vor das Haupttor (Fernkämpfer)
		B_ExchangeRoutine	(GRD_214_Torwache,	"FMTaken2");	// reguläre Wache am Haupttor
		B_ExchangeRoutine	(GRD_215_Torwache,	"FMTaken2");	// reguläre Wache am Haupttor
		

		//-------- Kampfgruppe vor Hinterem Tor --------
		//B_ExchangeRoutine	(GRD_233_Bloodwyn,	"FMTaken2");	// Verstärkung vor das Hinterem Tor (Anführer)
		B_ExchangeRoutine	(GRD_232_Gardist,	"FMTaken2");	// Verstärkung vor das Hinterem Tor
		B_ExchangeRoutine	(GRD_229_Gardist,	"FMTaken2");	// Verstärkung vor das Hinterem Tor (Fernkämpfer)
		B_ExchangeRoutine	(GRD_216_Torwache,	"FMTaken2");	// reguläre Wache am Hinteren Tor
		B_ExchangeRoutine	(GRD_217_Torwache,	"FMTaken2");	// reguläre Wache am Hinteren Tor
		
		
		//-------- permanente Attitüden ändern --------
		Wld_ExchangeGuildAttitudes	("GIL_ATTITUDES_FMTAKEN");
		B_InitMonsterAttitudes		();
		
		//------------ Die Templer gehen nicht mehr zur Alten Mine ---------------------
		
		B_ExchangeRoutine	(TPL_1439_GorNaDrak,	"FMTaken");
		B_ExchangeRoutine	(TPL_1440_Templer,	"FMTaken");

		//------------------ Evolve ---------------
		B_Evolve_NC ();
		B_Evolve_Cipher();
		
		//--------------- Kapitel 4 wird angezeigt -------------------------------
		
		introducechapter ("Rozdzia³ 4","Xardas","chapter4.tga","levelup.wav", 6000); 
		//introducechapter ("Chapter 4","Xardas","chapter4.tga","levelup.wav", 6000); 
	}
	
	//***************************************************************************
	//	KAPITEL 5
	//***************************************************************************
	else if (neues_Kapitel == 5)
	{
		PrintDebugNpc	(PD_MISSION, "---=== DAS FÜNFTE KAPITEL ===---");

		//-------- Händler auffüllen --------
		B_Give_ScorpioChapter5Weapons ();
		B_Give_DarrionChapter5Weapons ();
		B_Give_SharkyChapter5Weapons ();
		B_Give_XardasChapter5Runes ();
		B_Give_CavalornChapter5Weapons();
		B_Give_WolfChapter5Weapons();
		B_Give_CronosChapter5Runes ();
		B_GiveRiordianChapter5Potions ();
		
		B_Give_ScorpioChapter6Weapons ();
		B_Give_DarrionChapter6Weapons ();
		B_Give_SharkyChapter6Weapons ();
		B_Give_XardasChapter6Runes ();
		B_GiveRiordianChapter6Potions ();
		B_Give_CavalornChapter6Weapons ();
		B_Give_WolfChapter6Weapons();		
		
		//-------- Tagebucheinträge --------
		B_LogEntry		(CH4_EnterTemple,	"Gorn nie by³ przekonany co do skutecznoœci mojego amuletu ochronnego. Có¿... Wkrótce na w³asnej skórze przekonam siê, kto ma racjê!");

		//-------- Oberwelt-Monster nochmal "nachfüllen" --------	
		B_Story_RespawnOW();

		//------------------ Evolve ---------------
		B_Evolve_Cipher();
		
		introducechapter ("Rozdzia³ 5","Stra¿nicy portalu","chapter5.tga","levelup.wav", 6000);
		//introducechapter ("Chapter 5","The custodians of the portal","chapter5.tga","levelup.wav", 6000);
	}
	
	//***************************************************************************
	//	KAPITEL 6
	//***************************************************************************
	else if (neues_Kapitel == 6)
	{
		PrintDebugNpc	(PD_MISSION, "---=== DAS SECHSTE KAPITEL ===---");

		//-------- Händler auffüllen --------
		B_Give_XardasChapter6Runes ();

		//-------- URIZIEL aufladen --------
		PlayVideo		("OREHEAP.BIK");	// Schwert aufladen
		if (Uriziel_1H){
			CreateInvItem 	(hero, ITMW_1H_URIZIEL_2);
		}
		else{
			CreateInvItem 	(hero, Mythrilklinge02);
		};

		var C_NPC orcPriest; orcPriest = Hlp_GetNpc(ORC_Priest_5);
		orcPriest.protection[PROT_MAGIC] = 100;
		
		introducechapter ("Rozdzia³ 6","Le¿e Œni¹cego","chapter6.tga","levelup.wav", 6000);
		//introducechapter ("Chapter 6","The sleeper's halls","chapter6.tga","levelup.wav", 6000);
	};
};

func int C_IsChapter(var int chapter)
{
	if (Kapitel == chapter)
	{
		return TRUE;
	};
};
