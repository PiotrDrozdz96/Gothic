func int B_TeachPlayerTalentRunes(var C_NPC typ, var int spell, var int LP_Cost)
{
	if(typ.lp < LP_cost)
	{
		PrintScreen	("Za ma³o punktów umiejêtnoœci!", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
		B_Say (self, other, "$NOLEARNNOPOINTS");
		return 0;
	}
	else
	{
        typ.lp = typ.lp - LP_cost;
        Log_CreateTopic(GE_TalentRunes, LOG_NOTE);
        B_LogEntry (GE_TalentRunes,"Aby stworzyæ runê, potrzeba pewnych sk³adników. Dziêki nim oraz pustemu kamieniowi runicznemu mogê na runicznym stole stworzyæ w³aœciw¹ runê.");
        
        if (spell == SPL_LIGHT          )       {   PLAYER_TALENT_RUNES[SPL_LIGHT]              =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´ŒWIAT£O´: 1 z³ota moneta.");};
        if (spell == SPL_FIREBOLT       )       {   PLAYER_TALENT_RUNES[SPL_FIREBOLT]           =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´OGNISTA STRZA£A´: 1 siarka.");};
        if (spell == SPL_FIREBALL       )       {   PLAYER_TALENT_RUNES[SPL_FIREBALL]           =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´KULA OGNIA´: 1 smo³a");};
        if (spell == SPL_FIRESTORM      )       {   PLAYER_TALENT_RUNES[SPL_FIRESTORM]          =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´OGNISTA BURZA´: 1 smo³a i 1 siarka.");};
        if (spell == SPL_FIRERAIN       )       {   PLAYER_TALENT_RUNES[SPL_FIRERAIN]           =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´DESZCZ OGNIA´: 1 siarka i 1 jêzyk ognistego jaszczura.");};
        if (spell == SPL_HEAL           )       {   PLAYER_TALENT_RUNES[SPL_HEAL]               =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´UZDROWIENIE´: 1 roœlina lecznicza.");};
        if (spell == SPL_CHAINLIGHTNING )       {   PLAYER_TALENT_RUNES[SPL_CHAINLIGHTNING]     =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´GROM´: 1 ska³a krystaliczna i 1 kwarcyt.");};
        if (spell == SPL_THUNDERBOLT    )       {   PLAYER_TALENT_RUNES[SPL_THUNDERBOLT]        =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´SOPEL LODU´: 1 kwarcyt");};
        if (spell == SPL_THUNDERBALL    )       {   PLAYER_TALENT_RUNES[SPL_THUNDERBALL]        =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´PIORUN KULISTY´: 1 siarka i 1 ska³a krystaliczna.");};
        if (spell == SPL_ICECUBE        )       {   PLAYER_TALENT_RUNES[SPL_ICECUBE]            =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´BRY£A LODU´: 1 kwarcyt i 1 akwamaryn.");};
        if (spell == SPL_ICEWAVE        )       {   PLAYER_TALENT_RUNES[SPL_ICEWAVE]            =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´LODOWA FALA´: 1 kwarcyt i 1 akwamaryn.");};
        if (spell == SPL_SUMMONGOBBO    )       {   PLAYER_TALENT_RUNES[SPL_SUMMONGOBBO]        =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´PRZYZWANIE SZKIELETU GOBLINA´: 1 koœæ goblina.");};
        if (spell == SPL_SUMMONWOLF    )       {   PLAYER_TALENT_RUNES[SPL_SUMMONWOLF]          =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´PRZYZWANIE WILKA´: 1 skóra wilka.");};
        if (spell == SPL_SUMMONDEMON    )       {   PLAYER_TALENT_RUNES[SPL_SUMMONDEMON]        =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´PRZYZWANIE DEMONA´: 1 serce demona.");};
        if (spell == SPL_SUMMONSKELETON )       {   PLAYER_TALENT_RUNES[SPL_SUMMONSKELETON]     =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´PRZYZWANIE SZKIELETA´: 1 koœæ szkieletu.");};
        if (spell == SPL_SUMMONGOLEM    )       {   PLAYER_TALENT_RUNES[SPL_SUMMONGOLEM]        =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa `PRZYZWANIE GOLEMA`: 1 serce kamiennego golema.");};
        if (spell == SPL_ARMYOFDARKNESS )       {   PLAYER_TALENT_RUNES[SPL_ARMYOFDARKNESS]     =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´ARMIA CIEMNOŒCI´: 1 koœæ szkieleta, 1 czarna per³a, 1 serce kamiennego golema i 1 serce demona.");};
        if (spell == SPL_DESTROYUNDEAD )       {   PLAYER_TALENT_RUNES[SPL_DESTROYUNDEAD]       =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´ŒMIERÆ O¯YWIEÑCOM´: 1 woda œwiêcona.");};
        if (spell == SPL_WINDFIST      )       {   PLAYER_TALENT_RUNES[SPL_WINDFIST]            =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´UDERZENIE WIATRU´: 1 wêgiel i 1 Zielony Nowicjusz.");};
        if (spell == SPL_STORMFIST     )       {   PLAYER_TALENT_RUNES[SPL_STORMFIST]           =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´UDERZENIE BURZY´: 1 wêgiel i 1 Mrok Pó³nocy.");};
        if (spell == SPL_TELEKINESIS   )       {   PLAYER_TALENT_RUNES[SPL_TELEKINESIS]         =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´TELEKINEZA´: 1 Zielony Nowicjusz.");};
        if (spell == SPL_CHARM         )       {   PLAYER_TALENT_RUNES[SPL_CHARM]               =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´UROK´: 1 Mrok Pó³nocy.");};
        if (spell == SPL_SLEEP         )       {   PLAYER_TALENT_RUNES[SPL_SLEEP]               =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´SEN´: 1 bagienne ziele.");};
        if (spell == SPL_PYROKINESIS   )       {   PLAYER_TALENT_RUNES[SPL_PYROKINESIS]         =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´PIROKINEZA´: 1 smo³a, 1 siarka, 1 czarna per³a i 1 Zew Mocy.");};
        if (spell == SPL_CONTROL       )       {   PLAYER_TALENT_RUNES[SPL_CONTROL]             =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´KONTROLA´: 1 Zew Mocy.");};
        if (spell == SPL_FEAR          )       {   PLAYER_TALENT_RUNES[SPL_FEAR]                =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´STRACH´: 1 czarna per³a.");};
        if (spell == SPL_BREATHOFDEATH )       {   PLAYER_TALENT_RUNES[SPL_BREATHOFDEATH]       =   TRUE; 
        B_LogEntry(GE_TalentRunes, "Runa ´TCHNIENIE ŒMIERCI´: 1 czarna per³a i 1 wêgiel.");};

        return 1;
	};
};