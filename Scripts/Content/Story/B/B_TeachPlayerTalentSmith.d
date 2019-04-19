func int B_TeachPlayerTalentSmith(var C_NPC typ, var int waffe, var int smithLevel)
{
    var int LP_Cost;
    if     (smithLevel == 0){LP_Cost = LPCOST_SMITH_0;}
    else if(smithLevel == 1){LP_Cost = LPCOST_SMITH_1;}
    else if(smithLevel == 2){LP_Cost = LPCOST_SMITH_2;}
    else if(smithLevel == 3){LP_Cost = LPCOST_SMITH_3;}
    else if(smithLevel == 4){LP_Cost = LPCOST_SMITH_4;}
    
    if(typ.lp < LP_Cost)
	{
		PrintScreen	("Za ma³o punktów umiejêtnoœci!", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
		B_Say (self, other, "$NOLEARNNOPOINTS");
		return 0;
    }
    else if(PLAYER_TALENT_SMITHLEVEL+1 < smithLevel)
    {
        PrintScreen	("Brak ci umiejêtnoœci kowalskich!", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
		B_Say (self, other, "$NOLEARNYOUALREADYKNOW");
		return 0;  
    }
    else if(typ.attribute[ATR_STRENGTH] < HlpSmith_GetCond(waffe))
    {
        PrintScreen	("Za ma³o si³y!", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
		B_Say (self, other, "$NOLEARNYOUALREADYKNOW");
		return 0;  
    }
    else
    {
        typ.lp = typ.lp - LP_Cost;
        if(PLAYER_TALENT_SMITHLEVEL < smithLevel)
        {
            PLAYER_TALENT_SMITHLEVEL = smithLevel;  
        };
        Log_CreateTopic(GE_TalentSmith, LOG_NOTE);
        B_LogEntry (GE_TalentSmith,"Jeœli zechce wykuæ jak¹œ broñ, to po pierwsze bêdzie mi potrzebny kawa³ surowej stali, który muszê rozgrzaæ do czerwonoœci w ku¿ni, a nastêpnie nadaæ mu odpowiedni kszta³t na kowadle.");
    
        if(waffe == WEAPON_Common)
        {
            PLAYER_TALENT_SMITH[WEAPON_Common] = TRUE; //ItMw_1H_Sword_01
            B_LogEntry (GE_TalentSmith,"Jeœli chce stworzyæ najprostszy miecz muszê w³o¿yæ rozgrzane ostrze do wody, a nastêpnie naostrzyæ je na kamieniu szlifierkim.");
        };
        if(waffe == WEAPON_1H_Sword_01) //CH1
        {
            PLAYER_TALENT_SMITH[WEAPON_1H_Sword_01] = TRUE; //ItMw_1H_Sword_04
            B_LogEntry (GE_TalentSmith,"WEAPON_1H_Sword_01");
        };
        if(waffe == WEAPON_1H_Sword_02) //CH2
        {
            PLAYER_TALENT_SMITH[WEAPON_1H_Sword_02] = TRUE; //ItMw_1H_Sword_Long_04
            B_LogEntry (GE_TalentSmith,"WEAPON_1H_Sword_02");
        };
        if(waffe == WEAPON_1H_Sword_03) //CH3
        {
            PLAYER_TALENT_SMITH[WEAPON_1H_Sword_03] = TRUE;
            B_LogEntry (GE_TalentSmith,"WEAPON_1H_Sword_03"); //ItMw_1H_Sword_Bastard_02
        };
        return 1;
    };
};