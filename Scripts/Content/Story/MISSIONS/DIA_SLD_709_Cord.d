// ************************ EXIT **************************

INSTANCE DIA_SLD_709_Cord_Exit (C_INFO)
{
	npc			= SLD_709_Cord;
	nr			= 999;
	condition	= DIA_SLD_709_Cord_Exit_Condition;
	information	= DIA_SLD_709_Cord_Exit_Info;
	important	= 0;	
	permanent	= 1;
	description = DIALOG_ENDE;
};                       

FUNC INT DIA_SLD_709_Cord_Exit_Condition()
{
	return 1;
};

FUNC VOID DIA_SLD_709_Cord_Exit_Info()
{
	AI_StopProcessInfos	( self );
};

/*------------------------------------------------------------------------
						TRAIN ANGEBOT								
------------------------------------------------------------------------*/

instance  SLD_709_Cord_TRAINOFFER (C_INFO)
{
	npc				= SLD_709_Cord;
	condition		= SLD_709_Cord_TRAINOFFER_Condition;
	information		= SLD_709_Cord_TRAINOFFER_Info;
	important		= 0;
	permanent		= 0;
	description		= "Chcia³bym nauczyæ siê walki jednorêcznym orê¿em."; 
};

FUNC int  SLD_709_Cord_TRAINOFFER_Condition()
{	
	return TRUE;
};

FUNC void  SLD_709_Cord_TRAINOFFER_Info()
{
	AI_Output (other, self,"SLD_709_Cord_TRAINOFFER_Info_15_01"); //Chcia³bym nauczyæ siê walki jednorêcznym orê¿em.
	AI_Output (self, other,"SLD_709_Cord_TRAINOFFER_Info_14_02"); //Nie ma sprawy. Ale to ciê bêdzie kosztowa³o 30 bry³ek rudy. Mo¿e byæ?

	Log_CreateTopic	(GE_TeacherNC,	LOG_NOTE);
	B_LogEntry		(GE_TeacherNC,	"Najemnik Cord mo¿e mnie nauczyæ walki jednorêcznym orê¿em. Za dnia mo¿na go znaleŸæ na kamienistej równinie, przy jeziorze.");
};  
/*------------------------------------------------------------------------
						EINHANDKAMPF	DIE ERSTE LEHRSTUNDE							
------------------------------------------------------------------------*/

instance  SLD_709_Cord_TRAIN (C_INFO)
{
	npc				= SLD_709_Cord;
	condition		= SLD_709_Cord_TRAIN_Condition;
	information		= SLD_709_Cord_TRAIN_Info;
	important		= 0;
	permanent		= 1;
	description		= "Broñ jednorêczna +1% (30 bry³ek rudy, 10pkt. umiejêtnoœci)"; 
};

FUNC int  SLD_709_Cord_TRAIN_Condition()
{	
	if (Npc_KnowsInfo (hero,SLD_709_Cord_TRAINOFFER))
	&& (Npc_GetTalentValue(hero, NPC_TALENT_1H) < 5)
	{
		return TRUE;
	};
};
FUNC void  SLD_709_Cord_TRAIN_Info()
{
	AI_Output (other, self,"SLD_709_Cord_TRAIN_Info_15_00"); //Chcia³bym nauczyæ siê walki jednorêcznym orê¿em.

	if (Npc_HasItems (hero,ItMiNugget) >= 30)
	{
		if B_GiveSkill(hero,NPC_TALENT_1H,Npc_GetTalentSkill(hero, NPC_TALENT_1H)+1,LPCOST_TALENT_1H_1)
		{
			if (Npc_GetTalentValue(hero, NPC_TALENT_1H) == 1){
				AI_Output (self,other,"SLD_709_Cord_TRAIN_14_01"); //M¹dra decyzja. Jednak zanim poznasz bardziej zaawansowane techniki, powinieneœ nauczyæ siê prawid³owo trzymaæ orê¿ w rêku.
				AI_Output (self,other,"SLD_709_Cord_TRAIN_14_02"); //Pocz¹tkuj¹cy czêsto ³api¹ zwyk³y miecz obydwoma rêkami. Radzi³bym ci siê do tego nie przyzwyczajaæ, to fatalny nawyk.
				AI_Output (self,other,"SLD_709_Cord_TRAIN_14_03"); //Trzymaj broñ jedn¹ rêk¹, ostrzem do góry, i zacznij ni¹ machaæ.
			}
			else if (Npc_GetTalentValue(hero, NPC_TALENT_1H) == 3){
				AI_Output (self,other,"SLD_709_Cord_TRAIN_14_04"); //Musisz siê nauczyæ, jak zgraæ twoje ruchy z bezw³adnoœci¹ orê¿a. Dziêki temu twoje ataki bêd¹ szybsze i bardziej zaskakuj¹ce.
				AI_Output (self,other,"SLD_709_Cord_TRAIN_14_05"); //Zapamiêtaj sobie dobrze, co ci powiedzia³em, a twój styl walki stanie siê o wiele bardziej elegancki i skuteczny.
			}
			else if (Npc_GetTalentValue(hero, NPC_TALENT_1H) == 5){
				B_PracticeCombat	("NC_WATERFALL_TOP01");
				AI_Output (self,other,"SLD_709_Cord_TRAIN_14_06"); //A, i jeszcze coœ! Niektóre ciosy powoduj¹ wiêksze obra¿enia ni¿ zwykle. Oczywiœcie, jako pocz¹tkuj¹cy masz raczej niewielkie szanse na zadanie krytycznego uderzenia.
				AI_Output (self,other,"SLD_709_Cord_TRAIN_14_07"); //Ale to siê zmieni w miarê czynienia przez ciebie postêpów.
			}
			else{
				AI_Output		(self, other,"SLD_709_Cord_TRAINAGAIN_Info_14_05"); //I znowu do przodu. Pamiêtaj - trening czyni mistrza, wiêc najlepiej weŸ siê od razu do roboty!
			};
			B_GiveInvItems(other,self,itminugget,30);
		};
	}
	else
	{
		AI_Output (self, other,"KDF_402_Corristo_HEAVYARMOR_Info_14_03"); //Nie masz wystarczaj¹cej iloœci rudy!
	};
};  
/*------------------------------------------------------------------------
						EINHANDKAMPF	DIE ZWEITE LEHRSTUNDE							
------------------------------------------------------------------------*/

instance  SLD_709_Cord_TRAINAGAIN (C_INFO)
{
	npc				= SLD_709_Cord;
	condition		= SLD_709_Cord_TRAINAGAIN_Condition;
	information		= SLD_709_Cord_TRAINAGAIN_Info;
	important		= 0;
	permanent		= 1;
	description		= "Broñ jednorêczna +1% (50 bry³ek rudy, 10pkt. umiejêtnoœci)"; 
};

FUNC int  SLD_709_Cord_TRAINAGAIN_Condition()
{	
	if ( Npc_GetTalentValue(hero, NPC_TALENT_1H) > 4 
	&& Npc_GetTalentValue(hero, NPC_TALENT_1H) < 10 
	&& Npc_KnowsInfo (hero,SLD_709_Cord_TRAINOFFER))
	{
		return TRUE;
	};

};
FUNC void  SLD_709_Cord_TRAINAGAIN_Info()
{
	AI_Output			(other, self,"SLD_709_Cord_TRAINAGAIN_Info_15_01"); //Naucz mnie, jak sprawniej pos³ugiwaæ siê jednorêczn¹ broni¹.

	if (Npc_HasItems (hero,ItMiNugget) >= 50)
	{
		if B_GiveSkill(hero,NPC_TALENT_1H,Npc_GetTalentSkill(hero, NPC_TALENT_1H)+1,LPCOST_TALENT_1H_1)
		{
			if(Npc_GetTalentValue(hero, NPC_TALENT_1H) == 6){
				AI_Output		(self, other,"SLD_709_Cord_TRAINAGAIN_Info_14_02"); //Dobrze, podstawy ju¿ znasz. Nieznaczne opuszczenie broni zwiêkszy si³ê twojego pierwszego ciosu.
				AI_Output		(self, other,"SLD_709_Cord_TRAINAGAIN_Info_14_03"); //Musisz wykorzystaæ si³ê bezw³adnoœci, pamiêtasz? Œwietnie. Teraz nauczysz siê lepiej balansowaæ cia³em. Po zadaniu dwóch ciosów wykonaj obrót. To powinno zmyliæ twojego przeciwnika i pozwoliæ ci wyjœæ na dobr¹ pozycjê do nastêpnego ataku.
				AI_Output		(self, other,"SLD_709_Cord_TRAINAGAIN_Info_14_04"); //Wtedy wyprowadŸ nastêpne ciêcie z prawej strony...
				B_PracticeCombat("NC_WATERFALL_TOP01");
				AI_Output		(self, other,"SLD_709_Cord_TRAINAGAIN_Info_14_05"); //I znowu do przodu. Pamiêtaj - trening czyni mistrza, wiêc najlepiej weŸ siê od razu do roboty!
			}
			else{
				AI_Output		(self, other,"SLD_709_Cord_TRAINAGAIN_Info_14_05"); //I znowu do przodu. Pamiêtaj - trening czyni mistrza, wiêc najlepiej weŸ siê od razu do roboty!
			};
			B_GiveInvItems	(hero, self, ItMiNugget, 50);
		};
	}
	else
	{
		AI_Output (self, other,"KDF_402_Corristo_HEAVYARMOR_Info_14_03"); //Nie masz wystarczaj¹cej iloœci rudy!
	};
}; 


instance  SLD_709_Cord_TRAIN_SHIELD (C_INFO)
{
	npc				= SLD_709_Cord;
	nr				= 2;
	condition		= SLD_709_Cord_TRAIN_SHIELD_Condition;
	information		= SLD_709_Cord_TRAIN_SHIELD_Info;
	important		= 0;
	permanent		= 1;
	description		= "Tarcza Poziom 1 (50 bry³ek rudy, 10pkt. umiejêtnoœci)"; 
};

FUNC int  SLD_709_Cord_TRAIN_SHIELD_Condition()
{	
	if (Npc_GetTalentSkill(hero, NPC_TALENT_SHIELD) == 0 && Npc_KnowsInfo (hero,SLD_709_Cord_TRAINOFFER))
	{
		return TRUE;
	};

};
FUNC void  SLD_709_Cord_TRAIN_SHIELD_Info()
{
	AI_Output			(other, self,"Gorn_Teach_Info_15_00"); //Chcê trochê potrenowaæ.
	
	if (Npc_HasItems (hero,ItMiNugget) >= 50)
	{
		if B_GiveSkill(hero,NPC_TALENT_SHIELD,Npc_GetTalentSkill(hero, NPC_TALENT_SHIELD)+1,LPCOST_TALENT_SHIELD_1)
		{
			B_GiveInvItems	(hero, self, ItMiNugget, 50);
		};
	}
	else
	{
		AI_Output (self, other,"KDF_402_Corristo_HEAVYARMOR_Info_14_03"); //Nie masz wystarczaj¹cej iloœci rudy!
	};
}; 

instance  SLD_709_Cord_TRAIN_SHIELD2 (C_INFO)
{
	npc				= SLD_709_Cord;
	nr				= 2;
	condition		= SLD_709_Cord_TRAIN_SHIELD2_Condition;
	information		= SLD_709_Cord_TRAIN_SHIELD2_Info;
	important		= 0;
	permanent		= 1;
	description		= "Tarcza Poziom 2 (100 bry³ek rudy, 20pkt. umiejêtnoœci)"; 
};

FUNC int  SLD_709_Cord_TRAIN_SHIELD2_Condition()
{	
	if (Npc_GetTalentSkill(hero, NPC_TALENT_SHIELD) == 1 && Npc_KnowsInfo (hero,SLD_709_Cord_TRAINOFFER))
	{
		return TRUE;
	};

};
FUNC void  SLD_709_Cord_TRAIN_SHIELD2_Info()
{
	AI_Output			(other, self,"Gorn_Teach_Info_15_00"); //Chcê trochê potrenowaæ.
	
	if (Npc_HasItems (hero,ItMiNugget) >= 100)
	{
		if B_GiveSkill(hero,NPC_TALENT_SHIELD,Npc_GetTalentSkill(hero, NPC_TALENT_SHIELD)+1,LPCOST_TALENT_SHIELD_2)
		{
			B_GiveInvItems	(hero, self, ItMiNugget, 100);
		};
	}
	else
	{
		AI_Output (self, other,"KDF_402_Corristo_HEAVYARMOR_Info_14_03"); //Nie masz wystarczaj¹cej iloœci rudy!
	};
}; 
