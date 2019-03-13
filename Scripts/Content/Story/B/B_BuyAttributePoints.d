func void B_BuyAttributePoints (var C_NPC typ, var int ATR, var int AtrPlus)
{
	// --------- Umwandeln von var in const
	var int Typ_Atr;
	if 		(ATR == ATR_STRENGTH)	{	Typ_Atr = typ.attribute[ATR_STRENGTH];	}
	else if (ATR == ATR_DEXTERITY)	{	Typ_Atr = typ.attribute[ATR_DEXTERITY];	}
	else if (ATR == ATR_MANA_MAX)	{	Typ_Atr = typ.attribute[ATR_MANA_MAX];	};
	
	// --------- Steigern oder verbieten	
	var string AtrPlusSTRING; AtrPlusSTRING	= IntToString(AtrPlus);
	var string PrintSTRING; 
	
	if (!(typ.lp < AtrPlus))
	{
		if (ATR == ATR_STRENGTH)
		{
			if (Typ_Atr + AtrPlus <= 100)
			{
				typ.lp = typ.lp - AtrPlus;
				if (Shield_Equip){
					CreateInvItems 		(typ,	SHIELD_Destroyer,	1);
					AI_EquipBestMeleeWeapon	(typ);
					AI_UnequipWeapons	(typ);
					PrintScreen	("Przed treningiem zdejmij tarczê", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
				}
				else
				{
					typ.attribute[ATR_STRENGTH] = typ.attribute[ATR_STRENGTH] + AtrPlus;
					PrintString = ConcatStrings(NAME_BuyAttributeSTR, AtrPlusSTRING);
					PrintScreen	(PrintSTRING, -1,-1,"FONT_OLD_20_WHITE.TGA",1);
				};
			}
			else {
				PrintScreen	("100 punktów to wartoœæ maksymalna!", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
				B_Say (self, other, "$NOLEARNOVERMAX");
			};
		}
		else if (ATR == ATR_DEXTERITY)
		{
			if (Typ_Atr + AtrPlus <= 100)
			{
				typ.lp = typ.lp - AtrPlus;
				typ.attribute[ATR_DEXTERITY] = typ.attribute[ATR_DEXTERITY] + AtrPlus;
				PrintString = ConcatStrings(NAME_BuyAttributeDEX, AtrPlusSTRING);
				PrintScreen	(PrintSTRING, -1,-1,"FONT_OLD_20_WHITE.TGA",1);
			}
			else 
			{
				PrintScreen	("100 punktów to wartoœæ maksymalna!", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
				B_Say (self, other, "$NOLEARNOVERMAX");
			};
		}
		else if (ATR == ATR_MANA_MAX)
		{
			if (Typ_Atr + AtrPlus <= 200)
			{
				typ.lp = typ.lp - AtrPlus;
				typ.attribute[ATR_MANA_MAX] = typ.attribute[ATR_MANA_MAX] + AtrPlus;
				PrintString = ConcatStrings(NAME_BuyAttributeMAN, AtrPlusSTRING);
				PrintScreen	(PrintString, -1,-1,"FONT_OLD_20_WHITE.TGA",1);
			}
			else 
			{
				PrintScreen	("200 punktów to wartoœæ maksymalna!", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
				B_Say (self, other, "$NOLEARNOVERMAX");
			};
		};
	}
	else 
	{
		PrintScreen	("Za ma³o punktów umiejêtnoœci!", -1,-1,"FONT_OLD_20_WHITE.TGA",1);
		B_Say (self, other, "$NOLEARNNOPOINTS");
	};
};
