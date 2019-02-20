//KURZBOGEN//

INSTANCE ItRw_Bow_Small_01 (C_Item)
{
	name 				=	"Krótki ³uk";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	40;//20;

	damageTotal			=	15 + 10;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	10;
	visual 				=	"ItRw_Bow_Small_01.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 15;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_Small_02 (C_Item)
{
	name 				=	"£uk kawaleryjski";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	80;//40;

	damageTotal			=	20 + 20;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	20;
	visual 				=	"ItRw_Bow_Small_02.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 20;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_Small_03 (C_Item)
{
	name 				=	"£uk polowy";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	120;//60;

	damageTotal			=	25 + 20;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	20;
	visual 				=	"ItRw_Bow_Small_03.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 25;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_Small_04 (C_Item)
{
	name 				=	"£uk myœliwski";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	160;//80;

	damageTotal			=	30 + 30;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	30;
	visual 				=	"ItRw_Bow_Small_04.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 30;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_Small_05 (C_Item)
{
	name 				=	"Koœciany ³uk";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	200;//100;

	damageTotal			=	35 + 35;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	35;
	visual 				=	"ItRw_Bow_Small_05.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 35;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
//LANGBOGEN//
/******************************************************************************************/
// Org & SLD
INSTANCE ItRw_Bow_Long_01 (C_Item)
{
	name 				=	"D³ugi ³uk";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	240;//120;

	damageTotal			=	40 + 40;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	40;
	visual 				=	"ItRw_Bow_Long_01.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 40;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_Long_02 (C_Item)
{
	name 				=	"£uk kolczasty";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	280;//140;

	damageTotal			=	45 + 45;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	45;
	visual 				=	"ItRw_Bow_Long_02.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 45;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_Long_03 (C_Item)
{
	name 				=	"£uk wierzbowy";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	320;//160;

	damageTotal			=	50 + 50;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	50;
	visual 				=	"ItRw_Bow_Long_03.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 50;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_Long_04 (C_Item)
{
	name 				=	"£uk dêbowy";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	360;//180;

	damageTotal			=	50 + 55;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	55;
	visual 				=	"ItRw_Bow_Long_04.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 50;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_Long_05 (C_Item)
{
	name 				=	"Wilcze k³y";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	440;//220;

	damageTotal			=	50 + 60;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	60;
	visual 				=	"ItRw_Bow_Long_05.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 50;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_Long_06 (C_Item)
{
	name 				=	"Podmuch wiatru";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	480;//240;

	damageTotal			=	55 + 60;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	60;
	visual 				=	"ItRw_Bow_Long_06.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 55;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItRw_Bow_Long_07 (C_Item)
{
	name 				=	"£uk ¿o³nierski";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	520;//260;

	damageTotal			=	55 + 65;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	65;
	visual 				=	"ItRw_Bow_Long_07.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 55;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_Long_08 (C_Item)
{
	name 				=	"£uk z poro¿a";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;
	
	value 				=	560;//280;

	damageTotal			=	55 + 70;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	70;
	visual 				=	"ItRw_Bow_Long_08.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 55;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_Long_09 (C_Item)
{
	name 				=	"£uk Nimroda";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;
	
	value 				=	600;//300;

	damageTotal			=	55 + 75;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	75;
	visual 				=	"ItRw_Bow_Long_08.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 55;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
//KRIEGSBOGEN//
/******************************************************************************************/
INSTANCE ItRw_Bow_War_01 (C_Item)
{
	name 				=	"£uk wojenny";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;
	
	value 				=	640;//320;

	damageTotal			=	60 + 75;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	75;
	visual 				=	"ItRw_Bow_War_01.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 60;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_War_02 (C_Item)
{
	name 				=	"Pogromca orków";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;
	
	value 				=	680;//340;

	damageTotal			=	65 + 80;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	80;
	visual 				=	"ItRw_Bow_War_02.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 65;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_War_03 (C_Item)
{
	name 				=	"Gromow³adny";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;
	
	value 				=	720;//360;

	damageTotal			=	70 + 90;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	90;
	visual 				=	"ItRw_Bow_War_03.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 70;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_War_04 (C_Item)
{
	name 				=	"Piekielny ³uk";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;
	
	value 				=	760;//380;

	damageTotal			=	75 + 95;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	95;
	visual 				=	"ItRw_Bow_War_04.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 75;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItRw_Bow_War_05 (C_Item)
{
	name 				=	"£uk œmierci";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;
	
	value 				=	1000;//500;

	damageTotal			=	75 + 100;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	100;
	visual 				=	"ItRw_Bow_War_04.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 75;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

/******************************************************************************************/
//ARMBRUST//
/******************************************************************************************/
INSTANCE ItRw_Crossbow_01(C_Item)
{
	name 				=	"Lekka kusza";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;
	on_equip			=	Condition_Crossbow_01;
	
	value 				=	180;

	damageTotal			= 	40 + 25;
	damagetype			=	DAM_POINT;
	munition			=	ItAmBolt;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	25;
	visual 				=	"ItRwCrossbow1.mms";

	description			= name;
	TEXT[1]				= NAME_Damage;					COUNT[1]	= 40;
	TEXT[2] 			= NAME_Dex_needed;				COUNT[2]	= cond_value[2];
	TEXT[3]				= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

FUNC VOID Condition_Crossbow_01()
{
	if(hero.attribute[ATR_STRENGTH]<25){
		AI_UnequipWeapons	(hero);
		G_CanNotUse	(1, ATR_STRENGTH, 25);
	};
};

/******************************************************************************************/
INSTANCE ItRw_Crossbow_02(C_Item)
{
	name 				=	"Kusza";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;
	on_equip			=	Condition_Crossbow_02;
	
	value 				=	780;//390;

	damageTotal			= 	55 + 40;
	damagetype			=	DAM_POINT;
	munition			=	ItAmBolt;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	40;
	visual 				=	"ItRwCrossbow2.mms";

	description			= name;
	TEXT[1]				= NAME_Damage;					COUNT[1]	= 55;
	TEXT[2] 			= NAME_Dex_needed;				COUNT[2]	= cond_value[2];
	TEXT[3]				= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

FUNC VOID Condition_Crossbow_02()
{
	if(hero.attribute[ATR_STRENGTH]<40){
		AI_UnequipWeapons	(hero);
		G_CanNotUse	(1, ATR_STRENGTH, 40);
	};
};

/******************************************************************************************/
INSTANCE ItRw_Crossbow_03(C_Item)
{
	name 				=	"Ciê¿ka kusza";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;
	on_equip			=	Condition_Crossbow_03;
	
	value 				=	1000;//500;

	damageTotal			= 	70 + 55;
	damagetype			=	DAM_POINT;
	munition			=	ItAmBolt;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	55;
	visual 				=	"ItRwCrossbow3.mms";

	description			= name;
	TEXT[1]				= NAME_Damage;					COUNT[1]	= 70;
	TEXT[2] 			= NAME_Dex_needed;				COUNT[2]	= cond_value[2];
	TEXT[3]				= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

FUNC VOID Condition_Crossbow_03()
{
	if(hero.attribute[ATR_STRENGTH]<55){
		AI_UnequipWeapons	(hero);
		G_CanNotUse	(1, ATR_STRENGTH, 55);
	};
};

/******************************************************************************************/
INSTANCE ItRw_Crossbow_04(C_Item)
{
	name 				=	"Kusza wojenna";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_CROSSBOW;
	material 			=	MAT_WOOD;
	on_equip			=	Condition_Crossbow_04;
	
	value 				=	1300;//650;

	damageTotal			= 	85 + 75;
	damagetype			=	DAM_POINT;
	munition			=	ItAmBolt;
	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	75;
	visual 				=	"ItRwCrossbow4.mms";

	description			= name;
	TEXT[1]				= NAME_Damage;					COUNT[1]	= 85;
	TEXT[2] 			= NAME_Dex_needed;				COUNT[2]	= cond_value[2];
	TEXT[3]				= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

FUNC VOID Condition_Crossbow_04()
{
	if(hero.attribute[ATR_STRENGTH]<75){
		AI_UnequipWeapons	(hero);
		G_CanNotUse	(1, ATR_STRENGTH, 75);
	};
};


/******************************************************************************************/
//MUNITION//
/******************************************************************************************/
INSTANCE ItAmArrow(C_Item)
{
	name 				=	"Strza³a";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_BOW|ITEM_MULTI;

	value 				=	1;

	visual 				=	"ItAm_Arrow_01.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItAmBolt(C_Item)
{
	name 				=	"Be³t";

	mainflag 			=	ITEM_KAT_MUN;
	flags 				=	ITEM_CROSSBOW|ITEM_MULTI;

	value 				=	1;

	visual 				=	"ItAm_Bolt_01.3ds";
	material 			=	MAT_WOOD;

	description			= name;
	//TEXT[0]			= "";					COUNT[0]	= ;
	//TEXT[1]			= "";					COUNT[1]	= ;
	//TEXT[2]			= NAME_Damage;			COUNT[2]	= damageTotal;
	//TEXT[3] 			= NAME_Dex_needed;		COUNT[3]	= cond_value[2];
	//TEXT[4]			= ""; 					COUNT[4]	= ;
	TEXT[5]				= NAME_Value;			COUNT[5]	= value;
};

//-----------------------------------------------------------
//DIEGO
//-----------------------------------------------------------
INSTANCE Diegos_Bogen (C_Item)
{
	name 				= "£uk Diego";

	mainflag 			= ITEM_KAT_FF;
	flags 				= ITEM_BOW;
	material 			= MAT_WOOD;

	value 				= 390;

	damageTotal 		= 60 + 75;
	damagetype			= DAM_POINT;
	munition			= ItAmArrow;

	cond_atr[2]   		= ATR_DEXTERITY;
	cond_value[2]  		= 75;

	owner 				= PC_THIEF;
	visual 				= "ItRwLongbow.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 60;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};

//-----------------------------------------------------------
//WOLF
//-----------------------------------------------------------
INSTANCE Wolfs_Bogen (C_Item)
{
	name 				=	"£uk Wilka";

	mainflag 			=	ITEM_KAT_FF;
	flags 				=	ITEM_BOW;
	material 			=	MAT_WOOD;

	value 				=	200;

	damageTotal			=	35 + 35;
	damagetype			=	DAM_POINT;
	munition			=	ItAmArrow;

	cond_atr[2]   		= 	ATR_DEXTERITY;
	cond_value[2]  		= 	35;

	owner 				=   ORG_855_WOLF;
	visual 				=	"ItRwLongbow.mms";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= 35;
	TEXT[3] 			= NAME_Dex_needed;				COUNT[3]	= cond_value[2];
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};