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
		
		introducechapter ("Rozdzia� 1","Witamy w Kolonii!","chapter1.tga","levelup.wav", 6000);
		//introducechapter ("Chapter 1","Welcome to the colony","chapter1.tga","levelup.wav", 6000);
	}
	
	//***************************************************************************
	//	KAPITEL 2
	//***************************************************************************
	else if	(neues_Kapitel == 2)
	{
		PrintDebugNpc	(PD_MISSION, "---=== DAS ZWEITE KAPITEL ===---");

		//-------- H�ndler auff�llen --------
		B_Give_FiskChapter2Weapons ();
		B_Give_DexterChapterPotions ();
		B_Give_DarrionChapter2Weapons ();
		B_Give_SharkyChapter2Weapons ();
		B_Give_BaalCadarChapter2Runes ();
		B_Give_TorrezChapter2Runes ();
		B_Give_CronosChapter2Runes ();
		B_GiveRiordianChapter2Potions ();
		B_Give_CavalornChapter2Weapons();
		B_Give_WolfChapter2Weapons();
		B_Give_SkipChapter2Weapons ();
	
		//-------- Oberwelt-Monster nochmal "nachf�llen" --------	
		B_Story_RespawnOW();
		
		//-------- InExtremo vorbereiten --------
		B_InsertInExtremo();
		
		//------------------ Evolve ---------------
		B_Evolve_OC();
		B_Evolve_Sekte ();
		B_Evolve_SekteSpy();
		B_Evolve_Cipher();
		B_Evolve_Cavalorn();

		//------------ Mission Failed -------------
		if(Thorus_MordragKo == LOG_RUNNING)
		&&(Npc_GetTrueGuild(hero) == GIL_STT)
		{
			B_LogEntry(CH1_MordragKO,"Mordrag wyni�s� si� ju� ze Starego Obozu, ale nie jest to moja zas�uga.");
			Log_SetTopicStatus(CH1_MordragKO,LOG_FAILED);
			Thorus_MordragKo = LOG_FAILED;
		};

		introducechapter ("Rozdzia� 2","Gniazdo pe�zaczy","chapter2.tga","levelup.wav", 6000);
		//introducechapter ("Chapter 2","The Minecrawler's nest","chapter2.tga","levelup.wav", 6000);
	}
	
	//***************************************************************************
	//	KAPITEL 3
	//***************************************************************************
	else if (neues_Kapitel == 3)
	{
		PrintDebugNpc	(PD_MISSION, "---=== DAS DRITTE KAPITEL ===---");

		//-------- InExtremo wegr�umen --------
		B_InExtremoStopMusic();	
		B_KillInExtremo();

		//-------- Kapitel 2 Missionen nochmal auf Success setzen --------	
		YBerion_BringFocus 		= LOG_SUCCESS;
		CorKalom_BringMCQBalls 	= LOG_SUCCESS;
		CorKalom_BringBook 		= LOG_SUCCESS;

		//-------- Oberwelt-Monster nochmal "nachf�llen" --------	
		//B_Story_RespawnOW();
		
		//-------- Waffenh�ndler auffrischen --------
		B_Give_FiskChapter3Weapons ();
		B_Give_DexterChapterPotions ();
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
		YBerion.flags = 0;					// IMMORTAL-Flag l�schen
		Npc_ChangeAttribute	(YBerion, ATR_HITPOINTS, -YBerion.attribute[ATR_HITPOINTS_MAX]+1);
		YBerion.flags = NPC_FLAG_IMMORTAL;	// IMMORTAL-Flag wieder setzen
		Npc_ExchangeRoutine (YBerion,	"DRAINED");
		AI_ContinueRoutine	(YBerion);
		
		//---GROSSE BESCHW�RUNG TRIGGER NPCS ----------------------- M.F.
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
		B_Evolve_Cavalorn();

		//------------- Joint addicted -------------
		if	C_NpcBelongsToPsiCamp(hero)
		{
			SC_IsObessed = TRUE;
		};
		
		introducechapter ("Rozdzia� 3","Staro�ytna magia","chapter3.tga","levelup.wav", 6000);
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

		//-------- Waffenh�ndler auffrischen --------
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

		//-------- Missionsgegenst�nde --------
		CreateInvItem		(hero,	ItArRuneTeleport2);

		//-------- Tagebucheintr�ge --------
		Log_CreateTopic		(CH4_Firemages,	LOG_MISSION);
		Log_SetTopicStatus	(CH4_Firemages,	LOG_RUNNING);
		B_LogEntry			(CH4_Firemages,"Saturas, przyw�dca Mag�w Wody poprosi� mnie o ostatni� przys�ug�. Aby wysadzi� w powietrze kopiec rudy, magowie z Nowego Obozu potrzebuj� pomocy swych braci z Kr�gu Ognia. Nie wiem jeszcze, w jaki spos�b uda mi si� przekona� mag�w Gomeza do wsp�pracy, ale spr�buj� wymy�li� co� po drodze.");

		//-------- Szene am Damm --------
		B_ExchangeRoutine	(SLD_700_LEE,"DAMNPAST"); 
		B_ExchangeRoutine	(BAU_935_HOMER,"DAMNPAST"); 
		
		//-------- Spielergilde �ndern --------
		oldHeroGuild = Npc_GetTrueGuild(hero);
		if	C_NpcBelongsToOldCamp(hero) 
		&& (Npc_GetTrueGuild (hero) != GIL_KDF)
		{
			Npc_SetTrueGuild(hero,	GIL_NONE);		// "Ausgesto�ener" aus dem Alten Lager
			hero.guild = GIL_NONE;
		};
		
		//-------- AL-Tore schlie�en --------
		B_ExchangeRoutine	(GRD_228_Gardist, "FMTaken");	//Hinteres Tor
		B_ExchangeRoutine	(GRD_230_Gardist, "FMTaken");	//Haupttor
		B_ExchangeRoutine	(GRD_280_Gardist, "FMTaken");	//Inneres Tor
			
		//-------- Windenwachen verwundbar machen --------
		B_ClearImmortal		(Grd_228_Gardist);				//Hinteres Tor     
		B_ClearImmortal		(Grd_230_Gardist);              //Haupttor    
		B_ClearImmortal		(Grd_280_Gardist);              //Inneres Tor 

		//-------- Feuermagier t�ten --------
		B_KillNpc			(Kdf_400_Rodriguez);	
		B_KillNpc			(Kdf_401_Damarok);	
		B_KillNpc			(Kdf_402_Corristo);	
		B_KillNpc			(Kdf_403_Drago);	
		B_KillNpc			(Kdf_405_Torrez);

		//-------- TAs von Diego und Milten �ndern --------
		B_ExchangeRoutine	(PC_Thief,	"OCWait");
		B_ExchangeRoutine	(PC_Mage,	"OCWait");
		B_ChangeGuild		(PC_Thief,	GIL_KDF);		// "Ausgesto�ener" aus dem Alten Lager
		B_SetPermAttitude	(PC_Thief,	ATT_FRIENDLY);
		B_SetPermAttitude	(PC_Mage,	ATT_FRIENDLY);
		

		//-------- Kampfgruppe vor Haupttor --------
		//B_ExchangeRoutine	(GRD_255_Fletcher,	"FMTaken2");	// Verst�rkung vor das Haupttor (Anf�hrer)
		B_ExchangeRoutine	(GRD_252_Gardist,	"FMTaken2");	// Verst�rkung vor das Haupttor
		B_ExchangeRoutine	(GRD_253_Gardist,	"FMTaken2");	// Verst�rkung vor das Haupttor
		B_ExchangeRoutine	(GRD_244_Gardist,	"FMTaken2");	// Verst�rkung vor das Haupttor (Fernk�mpfer)
		B_ExchangeRoutine	(GRD_214_Torwache,	"FMTaken2");	// regul�re Wache am Haupttor
		B_ExchangeRoutine	(GRD_215_Torwache,	"FMTaken2");	// regul�re Wache am Haupttor
		

		//-------- Kampfgruppe vor Hinterem Tor --------
		//B_ExchangeRoutine	(GRD_233_Bloodwyn,	"FMTaken2");	// Verst�rkung vor das Hinterem Tor (Anf�hrer)
		B_ExchangeRoutine	(GRD_232_Gardist,	"FMTaken2");	// Verst�rkung vor das Hinterem Tor
		B_ExchangeRoutine	(GRD_229_Gardist,	"FMTaken2");	// Verst�rkung vor das Hinterem Tor (Fernk�mpfer)
		B_ExchangeRoutine	(GRD_216_Torwache,	"FMTaken2");	// regul�re Wache am Hinteren Tor
		B_ExchangeRoutine	(GRD_217_Torwache,	"FMTaken2");	// regul�re Wache am Hinteren Tor

		//-------- Kampfgruppe vor exchange platz -------
		B_ExchangeRoutine	(GRD_275_Brueckenwache,	"FMTaken2");
		B_ExchangeRoutine	(GRD_276_Brueckenwache,	"FMTaken2");
		B_ExchangeRoutine	(GRD_237_Gardist,		"FMTaken2");
		B_ExchangeRoutine	(GRD_238_Gardist,		"FMTaken2");
		B_ExchangeRoutine	(GRD_224_Pacho,			"FMTaken2");
		B_KillNpc			(VLK_520_Buddler);
		B_KillNpc			(VLK_534_Buddler);
		
		
		//-------- permanente Attit�den �ndern --------
		Wld_ExchangeGuildAttitudes	("GIL_ATTITUDES_FMTAKEN");
		B_InitMonsterAttitudes		();
		
		//------------ Die Templer gehen nicht mehr zur Alten Mine ---------------------
		
		B_ExchangeRoutine	(TPL_1440_Templer,	"FMTaken");

		//------------------ Evolve ---------------
		B_Evolve_NC ();
		B_Evolve_Cipher();
		B_Evolve_Cavalorn();
		
		//--------------- Kapitel 4 wird angezeigt -------------------------------
		
		introducechapter ("Rozdzia� 4","Xardas","chapter4.tga","levelup.wav", 6000); 
		//introducechapter ("Chapter 4","Xardas","chapter4.tga","levelup.wav", 6000); 
	}
	
	//***************************************************************************
	//	KAPITEL 5
	//***************************************************************************
	else if (neues_Kapitel == 5)
	{
		PrintDebugNpc	(PD_MISSION, "---=== DAS F�NFTE KAPITEL ===---");

		//-------- H�ndler auff�llen --------
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
		
		//-------- Tagebucheintr�ge --------
		B_LogEntry		(CH4_EnterTemple,	"Gorn nie by� przekonany co do skuteczno�ci mojego amuletu ochronnego. C�... Wkr�tce na w�asnej sk�rze przekonam si�, kto ma racj�!");

		//-------- Oberwelt-Monster nochmal "nachf�llen" --------	
		B_Story_RespawnOW();

		//------------------ Evolve ---------------
		B_Evolve_Cipher();
		
		introducechapter ("Rozdzia� 5","Stra�nicy portalu","chapter5.tga","levelup.wav", 6000);
		//introducechapter ("Chapter 5","The custodians of the portal","chapter5.tga","levelup.wav", 6000);
	}
	
	//***************************************************************************
	//	KAPITEL 6
	//***************************************************************************
	else if (neues_Kapitel == 6)
	{
		PrintDebugNpc	(PD_MISSION, "---=== DAS SECHSTE KAPITEL ===---");

		//-------- H�ndler auff�llen --------
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
		
		introducechapter ("Rozdzia� 6","Le�e �ni�cego","chapter6.tga","levelup.wav", 6000);
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
