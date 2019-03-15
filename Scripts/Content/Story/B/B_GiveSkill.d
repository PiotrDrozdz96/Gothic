func void B_AcrobaticRefresh (var C_NPC typ)
{
	if(Npc_GetTalentSkill(typ, NPC_TALENT_ACROBAT) == 1)
	{
		Npc_SetTalentSkill(typ, NPC_TALENT_ACROBAT, 0);
		Npc_SetTalentSkill(typ, NPC_TALENT_ACROBAT, 1);
	};
};

func void B_ShieldRefresh (var C_NPC typ)
{
	if (Shield_Equip == TRUE){
		if(Npc_GetTalentSkill(typ, NPC_TALENT_SHIELD) == 1)
		{
			Mdl_RemoveOverlayMds(typ,"SHIELD_ST1.MDS");
			Mdl_ApplyOverlayMds(typ,"SHIELD_ST1.MDS");
		}
		else if(Npc_GetTalentSkill(typ, NPC_TALENT_SHIELD) == 2)
		{
			Mdl_RemoveOverlayMds(typ,"SHIELD_ST2.MDS");
			Mdl_ApplyOverlayMds(typ,"SHIELD_ST2.MDS");
		};
	};
};

func int B_GiveSkill(var C_NPC typ, var int TAL, var int NEW_Wert, var int LP_Cost) //return 1
{
	// ---------- Umwandeln von var in const
	var int TAL_Wert; 
	if 		(TAL == NPC_TALENT_1H)			{	TAL_Wert = Npc_GetTalentSkill(typ, NPC_TALENT_1H		);	}
	else if (TAL == NPC_TALENT_2H)			{	TAL_Wert = Npc_GetTalentSkill(typ, NPC_TALENT_2H		);	}
	else if (TAL == NPC_TALENT_BOW)			{	TAL_Wert = Npc_GetTalentSkill(typ, NPC_TALENT_BOW		);	}
	else if (TAL == NPC_TALENT_CROSSBOW)	{	TAL_Wert = Npc_GetTalentSkill(typ, NPC_TALENT_CROSSBOW	);	}
	else if (TAL == NPC_TALENT_PICKLOCK)	{	TAL_Wert = Npc_GetTalentSkill(typ, NPC_TALENT_PICKLOCK	);	}
	else if (TAL == NPC_TALENT_PICKPOCKET)	{	TAL_Wert = Npc_GetTalentSkill(typ, NPC_TALENT_PICKPOCKET);	}
	else if (TAL == NPC_TALENT_MAGE)		{	TAL_Wert = Npc_GetTalentSkill(typ, NPC_TALENT_MAGE		);	}
	else if (TAL == NPC_TALENT_SNEAK)		{	TAL_Wert = Npc_GetTalentSkill(typ, NPC_TALENT_SNEAK		);	}
	else if (TAL == NPC_TALENT_SHIELD)		{	TAL_Wert = Npc_GetTalentSkill(typ, NPC_TALENT_SHIELD	);	}
	else if (TAL == NPC_TALENT_RUN)			{	TAL_Wert = Npc_GetTalentSkill(typ, NPC_TALENT_RUN	);	}
	else if (TAL == NPC_TALENT_ACROBAT)		{	TAL_Wert = Npc_GetTalentSkill(typ, NPC_TALENT_ACROBAT	);	};

	// ----------- Bedingungen/LP checken, dann ggf. vergeben
	if ((TAL_Wert+1) == NEW_Wert)
	{	
		if (typ.lp >= LP_cost)
		{
			typ.lp = typ.lp - LP_cost;
			
			if (tal == NPC_TALENT_1H)			
			{	
				if (Npc_GetTalentValue(typ, NPC_TALENT_1H) == 0 || Npc_GetTalentValue(typ, NPC_TALENT_1H) == 2 || Npc_GetTalentValue(typ, NPC_TALENT_1H) == 5){
					Npc_SetTalentSkill(typ, NPC_TALENT_1H, NEW_Wert);
				};
				Npc_SetTalentValue(typ, NPC_TALENT_1H, Npc_GetTalentValue(typ, NPC_TALENT_1H)+1);
				B_AcrobaticRefresh(typ);
				B_ShieldRefresh(typ);
				PrintScreen	("Nowa umiejêtnoœæ: Walka jednorêcznym orê¿em", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
				return 1;
			}
			else if (tal == NPC_TALENT_2H)
			{
				if (Npc_GetTalentValue(typ, NPC_TALENT_2H) == 2 || Npc_GetTalentValue(typ, NPC_TALENT_2H) == 5){
					Npc_SetTalentSkill(typ, NPC_TALENT_2H, NEW_Wert);
				};
				Npc_SetTalentValue(typ, NPC_TALENT_2H, Npc_GetTalentValue(typ, NPC_TALENT_2H)+1);
				B_AcrobaticRefresh(typ);
				PrintScreen	("Nowa umiejêtnoœæ: Walka dwurêcznym orê¿em", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
				return 1;
			}
			else if (tal == NPC_TALENT_BOW)
			{
				if (Npc_GetTalentValue(typ, NPC_TALENT_BOW) == 6 || Npc_GetTalentValue(typ, NPC_TALENT_BOW) == 15){
					Npc_SetTalentSkill(typ, NPC_TALENT_BOW, NEW_Wert);
				};
				Npc_SetTalentValue(typ, NPC_TALENT_BOW, Npc_GetTalentValue(typ, NPC_TALENT_BOW)+3);
				B_AcrobaticRefresh(typ);
				PrintScreen	("Nowa umiejêtnoœæ: Strzelanie z ³uku", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
				return 1;
			}
			else if (tal == NPC_TALENT_CROSSBOW)
			{
				if (Npc_GetTalentValue(typ, NPC_TALENT_CROSSBOW) == 8 || Npc_GetTalentValue(typ, NPC_TALENT_CROSSBOW) == 20){
					Npc_SetTalentSkill(typ, NPC_TALENT_CROSSBOW, NEW_Wert);
				};
				Npc_SetTalentValue(typ, NPC_TALENT_CROSSBOW, Npc_GetTalentValue(typ, NPC_TALENT_CROSSBOW)+4);
				B_AcrobaticRefresh(typ);
				PrintScreen	("Nowa umiejêtnoœæ: Strzelanie z kuszy", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
				return 1;
			}
			else if (tal == NPC_TALENT_PICKLOCK)
			{
				Npc_SetTalentSkill(typ, NPC_TALENT_PICKLOCK, NEW_Wert);
				Npc_SetTalentValue(typ, NPC_TALENT_PICKLOCK, Npc_GetTalentValue(typ, NPC_TALENT_PICKLOCK)-40);
				PrintScreen	("Nowa umiejêtnoœæ: Otwieranie zamków", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
				return 1;
			}
			else if (tal == NPC_TALENT_PICKPOCKET)
			{
				Npc_SetTalentSkill(typ, NPC_TALENT_PICKPOCKET, NEW_Wert);
				Npc_SetTalentValue(typ, NPC_TALENT_PICKPOCKET, Npc_GetTalentValue(typ, NPC_TALENT_PICKPOCKET)-40);
				PrintScreen	("Nowa umiejêtnoœæ: Kradzie¿ kieszonkowa", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
				return 1;
			}
			else if (tal == NPC_TALENT_MAGE)
			{
				Npc_SetTalentSkill(typ, NPC_TALENT_MAGE, NEW_Wert);
				PrintScreen	("Nowa umiejêtnoœæ: Kolejny kr¹g magii", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
				return 1;
			}
			else if (tal == NPC_TALENT_SNEAK)
			{
				Npc_SetTalentSkill(typ, NPC_TALENT_SNEAK, NEW_Wert);
				PrintScreen	("Nowa umiejêtnoœæ: Skradanie siê", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
				return 1;
			}
			else if (tal == NPC_TALENT_REGENERATE)
			{
				Npc_SetTalentSkill(typ, NPC_TALENT_REGENERATE, NEW_Wert);
				PrintScreen	("Zwiêkszone tempo regeneracji", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
				return 1;
			}
			else if (tal == NPC_TALENT_SHIELD)
			{
				if (NEW_Wert == 1 && Npc_GetTalentValue(typ, NPC_TALENT_1H) < 5){
					PrintScreen	("Wymagane min. 5% w walce Broni¹ Jednorêczn¹", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
					B_Say (self, other, "$NOLEARNNOPOINTS");
					return 0;
				}
				else if (NEW_Wert == 2 && Npc_GetTalentValue(typ, NPC_TALENT_1H) < 9){
					PrintScreen	("Wymagane min. 9% w walce Broni¹ Jednorêczn¹", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
					B_Say (self, other, "$NOLEARNNOPOINTS");
					return 0;
				}
				else{
					Npc_SetTalentSkill(typ, NPC_TALENT_SHIELD, NEW_Wert);
					PrintScreen	("Nowa umiejêtnoœæ: Walka Tarcz¹", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
					if (Shield_Equip && NEW_Wert == 2){
						Mdl_ApplyOverlayMds(typ,"SHIELD_ST2.MDS");
					};
					return 1;
				};
				
			}
			else if (tal == NPC_TALENT_RUN)
			{
				Npc_SetTalentSkill(typ, NPC_TALENT_RUN, NEW_Wert);
				Mdl_ApplyOverlayMds(typ, "HUMANS_RUN.MDS");
				PrintScreen	("Nowa umiejêtnoœæ: Bieg", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
			}
			else if (tal == NPC_TALENT_ACROBAT)
			{
				Npc_SetTalentSkill(typ, NPC_TALENT_ACROBAT, NEW_Wert);
				B_ShieldRefresh(typ);
				PrintScreen	("Nowa umiejêtnoœæ: Akrobatyka", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
				return 1;
			}
			else
			{
				return 0;
			};
		}
		else 
		{
			PrintScreen	("Za ma³o punktów umiejêtnoœci!", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
			B_Say (self, other, "$NOLEARNNOPOINTS");
			return 0;
		};
	}
	else // NICHT eine Stufe davor
	{	
		if (TAL_Wert >= NEW_Wert)
		{
			B_Say (self, other, "$NOLEARNYOUREBETTER"); //Jesteœ ju¿ lepszy!
			return 0;
		}
		else if ((TAL_Wert+1) < NEW_Wert) //d.h. i.d.R. TAL_Wert=2 und NEW_Wert=0, außer bei TALENT_MAGE
		{
			B_Say (self, other, "$NOLEARNYOUALREADYKNOW"); //Musisz siê jeszcze wiele nauczyæ zanim zostaniesz Mistrzem!
			return 0;
		};
	};	
};	
	
	

	
	
	


		
	
	
	

	
	
	
	
	

	
	
	

