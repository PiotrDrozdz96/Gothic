//---------------------------------------------------------------------
//	DROPS -  MOST COMPLICATED SHIELD CONDITION EVER
//---------------------------------------------------------------------

instance SHIELD_Destroyer (C_Item) 
{	
	name 				=	"";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	0;

	damageTotal			= 	181;
	damagetype			=	DAM_EDGE;
	range    			=  	0;		
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	0;
	on_equip 			= 	destroy_shield;

	description			= 	name;
};

func void destroy_shield()
{
	Npc_RemoveInvItem 		(self, SHIELD_Destroyer);
};

func int equip_it_shield()
{
	if(Npc_GetTalentSkill(self,NPC_TALENT_SHIELD) == 2)
	{
		Mdl_ApplyOverlayMds(self,"SHIELD_ST2.MDS");
		Shield_Equip = TRUE;
	}
	else if(Npc_GetTalentSkill(self,NPC_TALENT_SHIELD) == 1)
	{
		Mdl_ApplyOverlayMds(self,"SHIELD_ST1.MDS");
		Shield_Equip = TRUE;
	}
	else
	{
		CreateInvItems 		(self,	SHIELD_Destroyer,	1);
		AI_EquipBestMeleeWeapon	(self);
		AI_UnequipWeapons	(self);
		PrintScreen	("Nie umiesz pos³ugiwaæ siê Tarcz¹", -1,-1,"FONT_OLD_20_WHITE.TGA",2);
	};
	return Shield_Equip;
};

func void unequip_it_shield()
{
	Mdl_RemoveOverlayMds(self,"SHIELD_ST1.MDS");
	Mdl_RemoveOverlayMds(self,"SHIELD_ST2.MDS");
	Shield_Equip = FALSE;
};

//-----------------------------------------------------------
// shield in oldStoryMod
//-----------------------------------------------------------

instance IT_SHIELD_SKULL(C_Item)
{
	name = "Tarcza Czaszki";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 650;
	protection[PROT_EDGE] = 20;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 25;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "G3_Armor_Shield_Skull_01.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 20;
	on_equip = equip_it_shield_skull;
	on_unequip = unequip_it_shield_skull;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_skull(){
	self.attribute[ATR_STRENGTH] -= 20;
	equip_it_shield();
}; 

func void unequip_it_shield_skull(){
	self.attribute[ATR_STRENGTH] += 20;
	unequip_it_shield();
};

//-----------------------------------------------------------
// shield in L`hivier
//-----------------------------------------------------------

instance ITSH_REINFORCED_A(C_Item)
{
	name = "Tarcza";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 500;
	protection[PROT_EDGE] = 15;
	protection[PROT_BLUNT] = 15;
	protection[PROT_POINT] = 20;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ITSH_REINFORCED_A.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 20;
	on_equip = equip_it_shield_reinforced_a;
	on_unequip = unequip_it_shield_reinforced_a;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_reinforced_a(){
	self.attribute[ATR_STRENGTH] -= 20;
	equip_it_shield();
}; 

func void unequip_it_shield_reinforced_a(){
	self.attribute[ATR_STRENGTH] += 20;
	unequip_it_shield();
};

instance ITSH_W2_EXECUTIONER(C_Item)
{
	name = "Tarcza Kharima";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 900;
	protection[PROT_EDGE] = 20;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 20;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ITSH_W2_EXECUTIONER.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 15;
	on_equip = equip_it_shield_W2_EXECUTIONER;
	on_unequip = unequip_it_shield_W2_EXECUTIONER;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_W2_EXECUTIONER(){
	self.attribute[ATR_STRENGTH] -= 15;
	equip_it_shield();
}; 

func void unequip_it_shield_W2_EXECUTIONER(){
	self.attribute[ATR_STRENGTH] += 15;
	unequip_it_shield();
};

instance ITSH_WOLF_A(C_Item)
{
	name = "Tarcza Wilka";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 900;
	protection[PROT_EDGE] = 20;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 25;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ITSH_WOLF_A.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 20;
	on_equip = equip_it_shield_WOLF_A;
	on_unequip = unequip_it_shield_WOLF_A;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_WOLF_A(){
	self.attribute[ATR_STRENGTH] -= 20;
	equip_it_shield();
}; 

func void unequip_it_shield_WOLF_A(){
	self.attribute[ATR_STRENGTH] += 20;
	unequip_it_shield();
};

instance ITSH_LONG_A(C_Item)
{
	name = "Antyczna Tarcza";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 1050;
	protection[PROT_EDGE] = 20;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 20;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 20;
	visual = "ITSH_LONG_A.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 25;
	on_equip = equip_it_shield_LONG_A;
	on_unequip = unequip_it_shield_LONG_A;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_LONG_A(){
	self.attribute[ATR_STRENGTH] -= 25;
	equip_it_shield();
}; 

func void unequip_it_shield_LONG_A(){
	self.attribute[ATR_STRENGTH] += 25;
	unequip_it_shield();
};

instance ITSH_STALHRIM_S_SM(C_Item)
{
	name = "Tarcza z czystej rudy";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 2400;
	protection[PROT_EDGE] = 30;
	protection[PROT_BLUNT] = 30;
	protection[PROT_POINT] = 35;
	protection[PROT_FIRE] = 15;
	protection[PROT_MAGIC] = 25;
	visual = "ITSH_STALHRIM_S_SM.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 40;
	on_equip = equip_it_shield_STALHRIM_S_SM;
	on_unequip = unequip_it_shield_STALHRIM_S_SM;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_STALHRIM_S_SM(){
	self.attribute[ATR_STRENGTH] -= 40;
	equip_it_shield();
}; 

func void unequip_it_shield_STALHRIM_S_SM(){
	self.attribute[ATR_STRENGTH] += 40;
	unequip_it_shield();
};

instance ITSH_STALHRIM_B_SM(C_Item)
{
	name = "Ciê¿ka tarcza z czystej rudy";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 3750;
	protection[PROT_EDGE] = 40;
	protection[PROT_BLUNT] = 40;
	protection[PROT_POINT] = 45;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 30;
	visual = "ITSH_Stalhrim_B_SM.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 60;
	on_equip = equip_it_shield_STALHRIM_B_SM;
	on_unequip = unequip_it_shield_STALHRIM_B_SM;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_STALHRIM_B_SM(){
	self.attribute[ATR_STRENGTH] -= 60;
	equip_it_shield();
}; 

func void unequip_it_shield_STALHRIM_B_SM(){
	self.attribute[ATR_STRENGTH] += 60;
	unequip_it_shield();
};

instance ITSH_PALADIN_A(C_Item)
{
	name = "Tarcza paladyna";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 650;
	protection[PROT_EDGE] = 20;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 25;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 10;
	visual = "ITSH_PALADIN_A.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 20;
	on_equip = equip_it_shield_PALADIN_A;
	on_unequip = unequip_it_shield_PALADIN_A;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_PALADIN_A(){
	self.attribute[ATR_STRENGTH] -= 20;
	equip_it_shield();
}; 

func void unequip_it_shield_PALADIN_A(){
	self.attribute[ATR_STRENGTH] += 20;
	unequip_it_shield();
};

instance ITSH_G3_01_OLD(C_Item)
{
	name = "Stara okr¹g³a tarcza";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 7;
	protection[PROT_EDGE] = 5;
	protection[PROT_BLUNT] = 5;
	protection[PROT_POINT] = 5;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ITSH_G3_01_OLD.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 5;
	on_equip = equip_it_shield_G3_01_OLD;
	on_unequip = unequip_it_shield_G3_01_OLD;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_G3_01_OLD(){
	self.attribute[ATR_STRENGTH] -= 5;
	equip_it_shield();
}; 

func void unequip_it_shield_G3_01_OLD(){
	self.attribute[ATR_STRENGTH] += 5;
	unequip_it_shield();
};

instance ITSH_G3_02_V2(C_Item)
{
	name = "Zniszczona tarcza";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 10;
	protection[PROT_EDGE] = 10;
	protection[PROT_BLUNT] = 5;
	protection[PROT_POINT] = 15;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ITSH_G3_02_V2.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	on_equip = equip_it_shield_G3_02_V2;
	on_unequip = unequip_it_shield_G3_02_V2;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_G3_02_V2(){
	self.attribute[ATR_STRENGTH] -= 10;
	equip_it_shield();
}; 

func void unequip_it_shield_G3_02_V2(){
	self.attribute[ATR_STRENGTH] += 10;
	unequip_it_shield();
};

instance ITSH_G3_03(C_Item)
{
	name = "Drewniana tarcza stra¿nika";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 650;
	protection[PROT_EDGE] = 20;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 25;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ITSH_G3_03.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 25;
	on_equip = equip_it_shield_G3_03;
	on_unequip = unequip_it_shield_G3_03;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_G3_03(){
	self.attribute[ATR_STRENGTH] -= 25;
	equip_it_shield();
}; 

func void unequip_it_shield_G3_03(){
	self.attribute[ATR_STRENGTH] += 25;
	unequip_it_shield();
};

instance ITSH_W2_E3_REDANIA(C_Item)
{
	name = "Drewniana elitarna tarcza stra¿nika";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 835;
	protection[PROT_EDGE] = 25;
	protection[PROT_BLUNT] = 25;
	protection[PROT_POINT] = 30;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ITSH_W2_E3_REDANIA.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 40;
	on_equip = equip_it_shield_W2_E3_REDANIA;
	on_unequip = unequip_it_shield_W2_E3_REDANIA;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_W2_E3_REDANIA(){
	self.attribute[ATR_STRENGTH] -= 30;
	equip_it_shield();
}; 

func void unequip_it_shield_W2_E3_REDANIA(){
	self.attribute[ATR_STRENGTH] += 30;
	unequip_it_shield();
};

instance ITSH_G3_04(C_Item)
{
	name = "Zu¿yta tarcza stra¿nika";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 355;
	protection[PROT_EDGE] = 20;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 20;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ITSH_G3_04.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 20;
	on_equip = equip_it_shield_G3_04;
	on_unequip = unequip_it_shield_G3_04;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_G3_04(){
	self.attribute[ATR_STRENGTH] -= 20;
	equip_it_shield();
}; 

func void unequip_it_shield_G3_04(){
	self.attribute[ATR_STRENGTH] += 20;
	unequip_it_shield();
};

instance ITSH_G3_BROKEN(C_Item)
{
	name = "Zniszczona tarcza";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 10;
	protection[PROT_EDGE] = 10;
	protection[PROT_BLUNT] = 5;
	protection[PROT_POINT] = 15;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ITSH_G3_BROKEN.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	on_equip = equip_it_shield;
	on_unequip = unequip_it_shield;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_G3_BROKEN(){
	self.attribute[ATR_STRENGTH] -= 10;
	equip_it_shield();
}; 

func void unequip_it_shield_G3_BROKEN(){
	self.attribute[ATR_STRENGTH] += 10;
	unequip_it_shield();
};

instance ITSH_SM_STEEL(C_Item)
{
	name = "Stalowa tarcza";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 1875;
	protection[PROT_EDGE] = 40;
	protection[PROT_BLUNT] = 40;
	protection[PROT_POINT] = 45;
	protection[PROT_FIRE] = 5;
	protection[PROT_MAGIC] = 5;
	visual = "ITSH_SM_STEEL.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 50;
	on_equip = equip_it_shield_SM_STEEL;
	on_unequip = unequip_it_shield_SM_STEEL;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_SM_STEEL(){
	self.attribute[ATR_STRENGTH] -= 50;
	equip_it_shield();
}; 

func void unequip_it_shield_SM_STEEL(){
	self.attribute[ATR_STRENGTH] += 50;
	unequip_it_shield();
};

instance ITSH_KORSHAN_A(C_Item)
{
	name = "Okr¹g³a tarcza Najemnika";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 1240;
	protection[PROT_EDGE] = 25;
	protection[PROT_BLUNT] = 25;
	protection[PROT_POINT] = 30;
	protection[PROT_FIRE] = 5;
	protection[PROT_MAGIC] = 5;
	visual = "ITSH_KORSHAN_A.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 25;
	on_equip = equip_it_shield_KORSHAN_A;
	on_unequip = unequip_it_shield_KORSHAN_A;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_KORSHAN_A(){
	self.attribute[ATR_STRENGTH] -= 25;
	equip_it_shield();
};

func void unequip_it_shield_KORSHAN_A(){
	self.attribute[ATR_STRENGTH] += 25;
	unequip_it_shield();
};

instance ITSH_R_ROUND(C_Item)
{
	name = "Tarcza wojownika Œni¹cego";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 815;
	protection[PROT_EDGE] = 25;
	protection[PROT_BLUNT] = 25;
	protection[PROT_POINT] = 30;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 15;
	visual = "ITSH_R_ROUND.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 25;
	on_equip = equip_it_shield_R_ROUND;
	on_unequip = unequip_it_shield_R_ROUND;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_R_ROUND(){
	self.attribute[ATR_STRENGTH] -= 25;
	equip_it_shield();
}; 

func void unequip_it_shield_R_ROUND(){
	self.attribute[ATR_STRENGTH] += 25;
	unequip_it_shield();
};

instance ITSH_W2_E2_KAEDWEN(C_Item)
{
	name = "Stara tarcza";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_SHIELD;
	value = 80;
	protection[PROT_EDGE] = 10;
	protection[PROT_BLUNT] = 10;
	protection[PROT_POINT] = 10;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	visual = "ITSH_W2_E2_KAEDWEN.3ds";
	material = MAT_WOOD;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 10;
	on_equip = equip_it_shield_W2_E2_KAEDWEN;
	on_unequip = unequip_it_shield_W2_E2_KAEDWEN;
	description = name;
	text[0] = NAME_Str_grab;
	count[0] = cond_value[2];
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

func void equip_it_shield_W2_E2_KAEDWEN(){
	self.attribute[ATR_STRENGTH] -= 10;
	equip_it_shield();
}; 

func void unequip_it_shield_W2_E2_KAEDWEN(){
	self.attribute[ATR_STRENGTH] += 10;
	unequip_it_shield();
};


//-----------------------------------------------------------
// MeeleWeapon_1H
//-----------------------------------------------------------

INSTANCE ITMW_1H_URIZIEL_1 (C_Item)
{	
	name 				=	"URIZIEL";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD|ITEM_MISSION;	
	material 			=	MAT_METAL;

	value 				=	900;
	

	damageTotal			= 	90;
	damagetype			=	DAM_EDGE;
	range    			=  	150;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	30;
	visual 				=	"ItMw_1H_URIZIEL.3DS";

	description			= 	name;
	TEXT[0]				=	"Xardas twierdzi, ¿e miecz nazywa siê URIZIEL.";
	TEXT[1]				=	"Jest ponoæ bardzo stary i dysponowa³ niegdyœ";
	TEXT[2]				=	"potê¿n¹ moc¹ magiczn¹, ale j¹ utraci³.";

	TEXT[3]				=	NAME_Damage;				COUNT[3] =	damageTotal;
	TEXT[4] 			=	NAME_Str_needed;			COUNT[4] =	cond_value[2];
	TEXT[5]				=	NAME_Value;					COUNT[5] =	value;
};

INSTANCE ITMW_1H_URIZIEL_2 (C_Item)
{	
	name 				=	"URIZIEL";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD|ITEM_MISSION;	
	material 			=	MAT_METAL;

	value 				=	10000;
	

	damageType			=	DAM_FIRE|DAM_MAGIC;
	damage[DAM_INDEX_FIRE]	=	 30;
	damage[DAM_INDEX_MAGIC]	=	110;
	range    			=  	150;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	30;
	visual 				=	"ItMw_1H_URIZIEL_2.3DS";

	description			= 	name;
	TEXT[0]				=	"To staro¿ytny miecz Uriziel.";
	TEXT[1]				= 	"Uriziel zosta³ magicznie na³adowany.";
	TEXT[2]				=	NAME_Dam_Magic;			COUNT[2]	=	damage[DAM_INDEX_MAGIC];
	TEXT[3]				=	NAME_Dam_Fire;			COUNT[3]	=	damage[DAM_INDEX_FIRE];
	TEXT[4] 			=	NAME_Str_needed;		COUNT[4]	=	cond_value[2];
	TEXT[5]				=	NAME_Value;				COUNT[5]	=	value;
};

INSTANCE ITMW_1H_URIZIEL_3 (C_Item)
{	
	name 				=	"URIZIEL";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_SWD|ITEM_MISSION;	
	material 			=	MAT_METAL;

	value 				=	900;
	

	damageTotal			= 	90;
	damagetype			=	DAM_EDGE;
	range    			=  	150;		

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	30;
	visual 				=	"ItMw_1H_URIZIEL.3DS";

	description			= 	name;
	TEXT[0]				=	"Magiczny kryszta³ zosta³ usuniêty z miecza.";
	TEXT[1]				=	"Jest to wci¹¿ bardzo potê¿na broñ, choæ";
	TEXT[2]				=	"pozbawiona mocy magicznych.";
	TEXT[3]				=	NAME_Damage;				COUNT[3] =	damageTotal;
	TEXT[4] 			=	NAME_Str_needed;			COUNT[4] =	cond_value[2];
	TEXT[5]				=	NAME_Value;					COUNT[5] =	value;
};

//-----------------------------------------------------------
// MageStaff
//-----------------------------------------------------------
INSTANCE ItMW_Staff_Water_01(C_Item)
{	
	name 				=	"Wodny kostur";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	value 				=	950;

	damageTotal  		= 	25;
	damagetype 			=	DAM_BLUNT;
	range    			=  	120;		
	
	on_equip			=	Equip_Water_01;
	on_unequip			=	UnEquip_Water_01;
	
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	50;
	visual 				=	"ItMW_MageStaff_Blades_2H_01.3DS"; 

	description			= 	name;

	TEXT[1]				= NAME_Damage;					COUNT[1]	= damageTotal;
	TEXT[2]				= NAME_Bonus_ManaMax;			COUNT[2]	= 25;
	TEXT[3] 			= NAME_Mana_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

FUNC VOID Equip_Water_01()
{
	Npc_ChangeAttribute(self,ATR_MANA_MAX, 25);
	Npc_ChangeAttribute(self,ATR_MANA, 25);
};
FUNC VOID UnEquip_Water_01()
{
	Npc_ChangeAttribute(self,ATR_MANA_MAX, -25);
	Npc_ChangeAttribute(self,ATR_MANA, -25);
};

//-----------------------------------------------------------
INSTANCE ItMW_Staff_Prot_01 (C_Item)
{
	name 				=	"Kostur Obrony";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	protection [PROT_EDGE] 	= 	15;
	protection [PROT_BLUNT] = 	15;
	protection [PROT_POINT] = 	15;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	15;

	value 				=	900;

	damageTotal			= 	25;
	damagetype 			=	DAM_BLUNT;
	range    			=  	160;

	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	40;

	visual 				=	"ItMw_2H_Staff_03.3DS";

	description			= name;
	TEXT[1]				= NAME_Damage;					COUNT[1]	= damageTotal;
	TEXT[2]				= NAME_Prot_All;				COUNT[2]	= protection[PROT_EDGE];
	TEXT[3] 			= NAME_Mana_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//-----------------------------------------------------------
INSTANCE ItMW_Staff_Fire_01 (C_Item)
{	
	name 				=	"Kostur Ognia";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	value 				=	900;

	damageTotal  		= 	25;
	damagetype 			=	DAM_BLUNT;
	range    			=  	120;		
	
	on_equip			=	Equip_Fire_01;
	on_unequip			=	UnEquip_Fire_01;
	
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	50;
	visual 				=	"ItMW_MageStaff_Good_2H_01.3DS"; 

	description			= 	name;

	TEXT[1]				= NAME_Damage;					COUNT[1]	= damageTotal;
	TEXT[2]				= NAME_Bonus_ManaMax;			COUNT[2]	= 25;
	TEXT[3] 			= NAME_Mana_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

FUNC VOID Equip_Fire_01()
{
	Npc_ChangeAttribute(self,ATR_MANA_MAX, 25);
	Npc_ChangeAttribute(self,ATR_MANA, 25);
};
FUNC VOID UnEquip_Fire_01()
{
	Npc_ChangeAttribute(self,ATR_MANA_MAX, -25);
	Npc_ChangeAttribute(self,ATR_MANA, -25);
};

// *****************************************************
INSTANCE ItMW_Staff_Magic (C_Item)
{	
	name 				=	"Kostur Magii";  

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	value 				=	1000;

	damageTotal  		= 	30;
	damagetype 			=	DAM_BLUNT;
	range    			=  	130;		
	
	on_equip			=	Equip_Magic;
	on_unequip			=	UnEquip_Magic;
	
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	70;
	visual 				=	"ItMW_MageStaff_Good_2H_02.3DS";

	description			= 	name;

	TEXT[1]				= NAME_Damage;					COUNT[1]	= damageTotal;
	TEXT[2]				= NAME_Bonus_ManaMax;			COUNT[2]	= 50;
	TEXT[3] 			= NAME_Mana_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
FUNC VOID Equip_Magic()
{
	Npc_ChangeAttribute(self,ATR_MANA_MAX, 50);
	Npc_ChangeAttribute(self,ATR_MANA, 50);
};
FUNC VOID UnEquip_Magic()
{
	Npc_ChangeAttribute(self,ATR_MANA_MAX, -50);
	Npc_ChangeAttribute(self,ATR_MANA, -50);
};

// *****************************************************
INSTANCE ItMW_Staff_Nature (C_Item)
{	
	name 				=	"Kostur Natury";
	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	value 				=	1050;

	damageTotal  		= 	30;
	damagetype 			=	DAM_BLUNT;
	range    			=  	130;		
	
	on_equip			=	Equip_Nature;
	on_unequip			=	UnEquip_Nature;
	
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	70;
	visual 				=	"ITMW_2H_G3_STAFFDRUID_01.3DS"; 

	description			= 	name;

	TEXT[1]				= NAME_Damage;					COUNT[1]	= damageTotal;
	TEXT[2]				= NAME_Bonus_ManaHpMax;		COUNT[2]	= 30;
	TEXT[3] 			= NAME_Mana_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

FUNC VOID Equip_Nature()
{
	Npc_ChangeAttribute(self,ATR_MANA_MAX, 30);
	Npc_ChangeAttribute(self,ATR_MANA, 30);
	Npc_ChangeAttribute(self,ATR_HITPOINTS_MAX, 30);
	Npc_ChangeAttribute(self,ATR_HITPOINTS, 30);
};
FUNC VOID UnEquip_Nature()
{
	Npc_ChangeAttribute(self,ATR_MANA_MAX, -30);
	Npc_ChangeAttribute(self,ATR_MANA, -30);
	Npc_ChangeAttribute(self,ATR_HITPOINTS_MAX, -30);
	Npc_ChangeAttribute(self,ATR_HITPOINTS, -30);
};

//-----------------------------------------------------------
INSTANCE ItMW_Staff_Prot_02 (C_Item)
{
	name 				=	"Kostur Ochrony";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	protection [PROT_EDGE] 	= 	30;
	protection [PROT_BLUNT] = 	30;
	protection [PROT_POINT] = 	30;
	protection [PROT_FIRE] 	= 	30;
	protection [PROT_MAGIC] = 	30;

	value 				=	1650;

	damageTotal			= 	35;
	damagetype 			=	DAM_BLUNT;
	range    			=  	160;

	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	70;

	visual 				=	"ITMW_2H_G3_STAFFWATER_01.3DS";

	description			= name;
	TEXT[1]				= NAME_Damage;					COUNT[1]	= damageTotal;
	TEXT[2]				= NAME_Prot_All;				COUNT[2]	= protection[PROT_EDGE];
	TEXT[3] 			= NAME_Mana_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

// *****************************************************
INSTANCE ItMW_Staff_Water_02 (C_Item)
{	
	name 				=	"Tajfun";
	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	protection[PROT_MAGIC] = 40;

	value 				=	1800;

	damageTotal  		= 	40;
	damagetype 			=	DAM_BLUNT;
	range    			=  	130;		
	
	on_equip			=	Equip_Magic;
	on_unequip			=	UnEquip_Magic;
	
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	110;
	visual 				=	"ItMW_MageStaff_Blades_2H_02.3DS"; 

	description			= 	name;

	TEXT[0]				= NAME_Damage;					COUNT[0]	= damageTotal;
	TEXT[1]				= NAME_Bonus_ManaMax;			COUNT[1]	= 50;
	TEXT[2]				= NAME_Prot_Magic;				COUNT[2]	= protection[PROT_MAGIC];
	TEXT[3] 			= NAME_Mana_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

// *****************************************************
INSTANCE ItMW_Staff_Fire_02 (C_Item)
{	
	name 				=	"Po¿oga";
	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	protection[PROT_FIRE] = 40;

	value 				=	1800;

	damageTotal  		= 	40;
	damagetype 			=	DAM_BLUNT;
	range    			=  	130;		
	
	on_equip			=	Equip_Magic;
	on_unequip			=	UnEquip_Magic;
	
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	110;
	visual 				=	"ITMW_2H_G3_STAFFFIRE_01.3DS"; 

	description			= 	name;

	TEXT[0]				= NAME_Damage;					COUNT[0]	= damageTotal;
	TEXT[1]				= NAME_Bonus_ManaMax;			COUNT[1]	= 50;
	TEXT[2]				= NAME_Prot_Fire;				COUNT[2]	= protection[PROT_FIRE];
	TEXT[3] 			= NAME_Mana_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

// *****************************************************
INSTANCE ItMW_Staff_Demon (C_Item)
{	
	name 				=	"Otch³añ";
	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	protection[PROT_MAGIC] = 40;

	value 				=	1800;

	damageTotal  		= 	40;
	damagetype 			=	DAM_BLUNT;
	range    			=  	130;		
	
	on_equip			=	Equip_Magic;
	on_unequip			=	UnEquip_Magic;
	
	cond_atr[2]   		=	ATR_MANA_MAX;
	cond_value[2]  		=	110;
	visual 				=	"ITMW_2H_KMR_XARDASSTAFF_01.3DS"; 

	description			= 	name;

	TEXT[0]				= NAME_Damage;					COUNT[0]	= damageTotal;
	TEXT[1]				= NAME_Bonus_ManaMax;			COUNT[1]	= 50;
	TEXT[2]				= NAME_Prot_Magic;				COUNT[2]	= protection[PROT_MAGIC];
	TEXT[3] 			= NAME_Mana_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//-----------------------------------------------------------
INSTANCE ItMW_Staff_Prot_03 (C_Item)
{
	name 				=	"Kostur Niewra¿liwoœci";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_WOOD;

	protection [PROT_EDGE] 	= 	40;
	protection [PROT_BLUNT] = 	40;
	protection [PROT_POINT] = 	40;
	protection [PROT_FIRE] 	= 	40;
	protection [PROT_MAGIC] = 	40;

	value 				=	3180;

	damageTotal			= 	45;
	damagetype 			=	DAM_BLUNT;
	range    			=  	160;

	cond_atr[2]   		= 	ATR_MANA_MAX;
	cond_value[2]  		= 	90;

	visual 				=	"ITMW_2H_STAFF_UNDEAD_01.3DS";

	description			= name;
	TEXT[1]				= NAME_Damage;					COUNT[1]	= damageTotal;
	TEXT[2]				= NAME_Prot_All;				COUNT[2]	= protection[PROT_EDGE];
	TEXT[3] 			= NAME_Mana_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= NAME_TwoHanded;
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

INSTANCE OrcStone_Axe (C_Item)
{
	name 				=	"Kamienny Topór";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_AXE;
	material 			=	MAT_STONE;

	value 				=	0;

	damageTotal			= 	50;
	damagetype			=	DAM_FLY;
	range    			=  	130;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	300;

	visual 				=	"ItMw_2H_Axe_Stone.3DS";

	description			= name;
	TEXT[0]				=	"Topór zabra³em Kamiennemu Orkowi.";
	TEXT[1]				=	"Jest cholernie ciê¿ki,";
	TEXT[2]				=	"nie wiem czy na coœ mi siê przyda.";
	TEXT[4] 			= NAME_Str_needed;				COUNT[4]	= cond_value[2];
	TEXT[5] 			= NAME_TwoHanded;
};