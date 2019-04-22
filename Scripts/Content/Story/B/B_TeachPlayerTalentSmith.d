func int B_TeachPlayerTalentSmith(var C_NPC typ, var int waffe, var int smithLevel)
{
    var int LP_Cost;
    if     (smithLevel == 0){LP_Cost = LPCOST_SMITH_0;}
    else if(smithLevel == 1){LP_Cost = LPCOST_SMITH_1;}
    else if(smithLevel == 2){LP_Cost = LPCOST_SMITH_2;}
    else if(smithLevel == 3){LP_Cost = LPCOST_SMITH_3;}
    else if(smithLevel == 4){LP_Cost = LPCOST_SMITH_4;};
    
    if(typ.lp < LP_Cost)
	{
		PrintScreen	("Za ma�o punkt�w umiej�tno�ci!", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
		B_Say (self, other, "$NOLEARNNOPOINTS");
		return 0;
    }
    else if(PLAYER_TALENT_SMITHLEVEL < smithLevel)
    {
        PrintScreen	("Brak ci umiej�tno�ci kowalskich!", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
		B_Say (self, other, "$NOLEARNYOUALREADYKNOW");
		return 0;  
    }
    else if(typ.attribute[ATR_STRENGTH] < HlpSmith_GetCond(waffe))
    {
        PrintScreen	("Za ma�o si�y!", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
		B_Say (self, other, "$NOLEARNYOUALREADYKNOW");
		return 0;  
    }
    else
    {
        typ.lp = typ.lp - LP_Cost;
        if(PLAYER_TALENT_SMITHLEVEL == smithLevel)
        {
            PLAYER_TALENT_SMITHLEVEL = smithLevel+1;  
        };
        Log_CreateTopic(GE_TalentSmith, LOG_NOTE);
        B_LogEntry (GE_TalentSmith,"Je�li zechce wyku� jak�� bro�, to po pierwsze b�dzie mi potrzebny kawa� surowej stali, kt�ry musz� rozgrza� do czerwono�ci w ku�ni, a nast�pnie nada� mu odpowiedni kszta�t na kowadle.");
    
        //1H Sword
        if(waffe == WEAPON_Common) // Lvl0
        {
            PLAYER_TALENT_SMITH[WEAPON_Common] = TRUE; //ItMw_1H_Sword_01 -- Niewyko�czony miecz
            B_LogEntry (GE_TalentSmith,"Je�li chce stworzy� najprostszy miecz musz� w�o�y� rozgrzane ostrze do wody, a nast�pnie naostrzy� je na kamieniu szlifierkim.");
        };
        if(waffe == WEAPON_1H_Sword_01) //CH1
        {
            PLAYER_TALENT_SMITH[WEAPON_1H_Sword_01] = TRUE; //ItMw_1H_Sword_04 -- Miecz bojowy
            B_LogEntry (GE_TalentSmith,B_BuildLogSmithString(WEAPON_1H_Sword_01));
        };
        if(waffe == WEAPON_1H_Sword_02) //CH2
        {
            PLAYER_TALENT_SMITH[WEAPON_1H_Sword_02] = TRUE; //ItMw_1H_Sword_Long_04 -- Miecz zwyci�stwa
            B_LogEntry (GE_TalentSmith,B_BuildLogSmithString(WEAPON_1H_Sword_02));
        };
        if(waffe == WEAPON_1H_Sword_03) //CH3
        {
            PLAYER_TALENT_SMITH[WEAPON_1H_Sword_03] = TRUE;
            B_LogEntry (GE_TalentSmith,B_BuildLogSmithString(WEAPON_1H_Sword_03)); //ItMw_1H_Sword_Bastard_02 -- Rze�nik
        };
        //2H Sword
        if(waffe == WEAPON_2H_Sword_01) //CH1
        {
            PLAYER_TALENT_SMITH[WEAPON_2H_Sword_01] = TRUE; //ItMw_2H_Sword_Light_01 -- Lekki miecz dwur�czny
            B_LogEntry (GE_TalentSmith,B_BuildLogSmithString(WEAPON_2H_Sword_01));
        };
        if(waffe == WEAPON_2H_Sword_02) //CH2
        {
            PLAYER_TALENT_SMITH[WEAPON_2H_Sword_02] = TRUE; //ItMw_2H_Sword_Light_04 -- Miecz Kr�lewski
            B_LogEntry (GE_TalentSmith,B_BuildLogSmithString(WEAPON_2H_Sword_02));
        };
        if(waffe == WEAPON_2H_Sword_03) //CH3
        {
            PLAYER_TALENT_SMITH[WEAPON_2H_Sword_03] = TRUE; //ItMw_2H_Sword_Heavy_01 -- Ci�ki dwur�czniak
            B_LogEntry (GE_TalentSmith,B_BuildLogSmithString(WEAPON_2H_Sword_03));
        };
        if(waffe == WEAPON_2H_Sword_04) //CH4
        {
            PLAYER_TALENT_SMITH[WEAPON_2H_Sword_04] = TRUE; //ItMw_2H_Sword_Heavy_04 -- M�ciwa Stal
            B_LogEntry (GE_TalentSmith,B_BuildLogSmithString(WEAPON_2H_Sword_04));
        };
        //1H Mace
        if(waffe == WEAPON_1H_Mace_01) //CH1
        {
            PLAYER_TALENT_SMITH[WEAPON_1H_Mace_01] = TRUE; //ItMw_1H_Mace_War_02 -- �elazna Maczuga
            B_LogEntry (GE_TalentSmith,B_BuildLogSmithString(WEAPON_1H_Mace_01));
        };
        if(waffe == WEAPON_1H_Mace_02) //CH2
        {
            PLAYER_TALENT_SMITH[WEAPON_1H_Mace_02] = TRUE; //ItMw_1H_Mace_War_03 -- �omotacz
            B_LogEntry (GE_TalentSmith,B_BuildLogSmithString(WEAPON_1H_Mace_02));
        };
        if(waffe == WEAPON_1H_Mace_03) //CH3
        {
            PLAYER_TALENT_SMITH[WEAPON_1H_Mace_03] = TRUE; //ItMw_1H_Mace_War_04 -- �amacz Serc
            B_LogEntry (GE_TalentSmith,B_BuildLogSmithString(WEAPON_1H_Mace_03));
        };
        //2H Axe
        if(waffe == WEAPON_2H_Axe_01) //CH1
        {
            PLAYER_TALENT_SMITH[WEAPON_2H_Axe_01] = TRUE; //ItMw_2H_Axe_light_01 -- Lekki Top�r bojowy
            B_LogEntry (GE_TalentSmith,B_BuildLogSmithString(WEAPON_2H_Axe_01));
        };
        if(waffe == WEAPON_2H_Axe_02) //CH2
        {
            PLAYER_TALENT_SMITH[WEAPON_2H_Axe_02] = TRUE; //ItMw_2H_Sword_Light_03 -- Ostrze Najemnika
            B_LogEntry (GE_TalentSmith,B_BuildLogSmithString(WEAPON_2H_Axe_02));
        };
        if(waffe == WEAPON_2H_Axe_03) //CH3
        {
            PLAYER_TALENT_SMITH[WEAPON_2H_Axe_03] = TRUE; //ItMw_2H_Axe_Heavy_01 -- Top�r Wojenny
            B_LogEntry (GE_TalentSmith,B_BuildLogSmithString(WEAPON_2H_Axe_03));
        };
        if(waffe == WEAPON_2H_Axe_04) //CH4
        {
            PLAYER_TALENT_SMITH[WEAPON_2H_Axe_04] = TRUE; //ItMw_2H_Axe_Heavy_02 -- Krzyk Wojownika
            B_LogEntry (GE_TalentSmith,B_BuildLogSmithString(WEAPON_2H_Axe_04));
        };

        return 1;
    };
};