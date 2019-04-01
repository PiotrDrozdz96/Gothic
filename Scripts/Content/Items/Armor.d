/*******************************************************************************************
**	ArmorCosts                                         				  **
*******************************************************************************************/
const int	ARMOR_VALUE_MULTIPLIER	= 30;	// wird mit Schutzwert gegen EDGE-Schaden multipliziert

const int VALUE_TPL_ARMOR_L = 1350;
const int VALUE_TPL_ARMOR_M = 1650;
const int VALUE_TPL_ARMOR_H = 2100;

const int VALUE_STT_ARMOR_M =  750;
const int VALUE_STT_ARMOR_H = 1200;

const int VALUE_GRD_ARMOR_L = 1350;
const int VALUE_GRD_ARMOR_M = 1650;
const int VALUE_GRD_ARMOR_H = 2100;

const int VALUE_KDF_ARMOR_L = 1200;
const int VALUE_KDF_ARMOR_H = 1500;

const int VALUE_KDW_ARMOR_L = 1950;
const int VALUE_KDW_ARMOR_H = 2100;

const int VALUE_ORG_ARMOR_L =  750;
const int VALUE_ORG_ARMOR_M = 1200;
const int VALUE_ORG_ARMOR_H = 1350;

const int VALUE_SLD_ARMOR_L = 1350;
const int VALUE_SLD_ARMOR_M = 1650;
const int VALUE_SLD_ARMOR_H = 2100;

const int VALUE_NOV_ARMOR_L = 500;
const int VALUE_NOV_ARMOR_M = 750;
const int VALUE_NOV_ARMOR_H = 1200;

const int VALUE_VLK_ARMOR_L = 250;
const int VALUE_VLK_ARMOR_M = 500;
const int VALUE_VLK_ARMOR_H = 600;

const int VALUE_SFB_ARMOR_L = 250;

/*******************************************************************************************
**	ChangeBodySkin                                         				  **
*******************************************************************************************/

FUNC VOID default_skin()
{
	if(hero.id == 0){
		Mdl_SetVisualBody (hero,"hum_body_Naked0",	4,			1,	"Hum_Head_Pony",		9, 			0,			-1);
	};
};

/*******************************************************************************************
**	OldCamp	                                         	  		 						  **
*******************************************************************************************/

/******************************************************************************************/
// Volk

INSTANCE VLK_ARMOR_L(C_Item)
{
	name 					=	"Lekkie spodnie Kopacza";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	10;
	protection [PROT_BLUNT] = 	10;
	protection [PROT_POINT] = 	10;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_VLK_ARMOR_L;

	wear 					=	WEAR_TORSO;
 
	visual 					=	"vlkl.3ds";
	visual_change 			=	"Hum_VLKL_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE VLK_ARMOR_M(C_Item)
{
	name 					=	"Spodnie Kopacza";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	15;
	protection [PROT_BLUNT] = 	15;
	protection [PROT_POINT] =   15;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_VLK_ARMOR_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"vlkm.3ds";
	visual_change 			=	"Hum_VLKM_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

INSTANCE VLK_ARMOR_H(C_Item)
{
	name 					=	"Spodnie Kopacza z kapturem";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	17;
	protection [PROT_BLUNT] = 	17;
	protection [PROT_POINT] =   17;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_VLK_ARMOR_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"vlkm.3ds";
	visual_change 			=	"Hum_VLKH_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	on_equip				=	equip_vlkh;
	on_unequip				=	unequip_vlkh;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

FUNC VOID equip_vlkh()
{
	if(hero.id == 0){
		Mdl_SetVisualBody (hero,"hum_body_Naked0",	4,			1,	"Hum_Head_Bald",		9, 			0,			-1);
	};
};

FUNC VOID unequip_vlkh()
{
	if(hero.id == 0){
		Mdl_SetVisualBody (hero,"hum_body_Naked0",	4,			1,	"Hum_Head_Pony",		9, 			0,			-1);
	};
};

/******************************************************************************************/
// Schatten

INSTANCE STT_ARMOR_M(C_Item)
{
	name 					=	"Strój Cienia";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	20;
	protection [PROT_BLUNT] = 	20;
	protection [PROT_POINT] = 	20;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_STT_ARMOR_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"sttm.3ds";
	visual_change 			=	"Hum_STTM_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	on_equip				=	STT_ARMOR_M_equip;
	on_unequip				=	default_skin;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

FUNC VOID STT_ARMOR_M_equip()
{
	if(hero.id == 0){
		Mdl_SetVisualBody (hero,"hum_body_Naked0",	0,			1,	"Hum_Head_Pony",		9, 			0,			-1);
	};
};

/******************************************************************************************/
INSTANCE STT_ARMOR_H(C_Item)
{
	name 					=	"Zbroja Cienia";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	30;
	protection [PROT_POINT] = 	30;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_STT_ARMOR_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"stth.3ds";
	visual_change 			=	"Hum_STTS_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE STT_ARMOR_H1(C_Item)
{
	name 					=	"Strój Cienia - z³odzieja";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	22;
	protection [PROT_BLUNT] = 	22;
	protection [PROT_POINT] = 	22;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_STT_ARMOR_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"sttm.3ds";
	visual_change 			=	"Hum_STTS1_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	on_equip 				= 	STT_ARMOR_H1_equip;
	on_unequip 				=	STT_ARMOR_H1_unequip;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	"Premia do zrêcznoœci:";COUNT[1]	= 8;
	TEXT[2]					=	NAME_Prot_Edge;			COUNT[2]	= protection	[PROT_EDGE];
	TEXT[3]					=	NAME_Prot_Point;		COUNT[3]	= protection	[PROT_POINT];
	// TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

FUNC VOID STT_ARMOR_H1_equip()
{
	self.attribute[ATR_DEXTERITY] += 8;
};

FUNC VOID STT_ARMOR_H1_unequip()
{
	self.attribute[ATR_DEXTERITY] -= 8;
};

/******************************************************************************************/
INSTANCE STT_ARMOR_H2(C_Item)
{
	name 					=	"Zbroja Cienia z kopalni";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	30;
	protection [PROT_POINT] = 	30;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_STT_ARMOR_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"stth.3ds";
	visual_change 			=	"Hum_STTS2_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
// Gardisten		                                                  					 **

INSTANCE GRD_ARMOR_L(C_Item)
{
	name 					=	"Lekka zbroja Stra¿nika";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	40;
	protection [PROT_BLUNT] = 	40;
	protection [PROT_POINT] = 	40;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_GRD_ARMOR_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"grdl.3ds";
	visual_change 			=	"Hum_GRDL_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	on_equip				=	GRD_ARMOR_L_equip;
	on_unequip				=	default_skin;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

FUNC VOID GRD_ARMOR_L_equip()
{
	if(hero.id == 0){
		Mdl_SetVisualBody (hero,"hum_body_Naked0",	0,			1,	"Hum_Head_Pony",		9, 			0,			-1);
	};
};

/******************************************************************************************/
INSTANCE GRD_ARMOR_M(C_Item)
{
	name 					=	"Zbroja Stra¿nika";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	=	50;
	protection [PROT_BLUNT] = 	50;
	protection [PROT_POINT] = 	50;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_GRD_ARMOR_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"grdm.3ds";
	visual_change 			=	"Hum_GRDM_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE GRD_ARMOR_H(C_Item)
{
	name 					=	"Ciê¿ka zbroja Stra¿nika";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	=	70;
	protection [PROT_BLUNT] = 	70;
	protection [PROT_POINT] = 	70;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_GRD_ARMOR_H;

	wear 					=	WEAR_TORSO;
 
	visual 					=	"grdh.3ds";
	visual_change 			=	"Hum_GRDS_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
// Erz-Barone		                                                 					  **

INSTANCE EBR_ARMOR_M(C_Item)
{
	name 					=	"Ozdobna szata";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	40;
	protection [PROT_BLUNT] = 	40;
	protection [PROT_POINT] = 	40;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	wear 					=	WEAR_TORSO;
    ownerGuild 				= 	GIL_EBR;


	visual 					=	"ebrm.3ds";
	visual_change 			=	"Hum_EBRM_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE EBR_ARMOR_H(C_Item)
{
	name 					=	"Pancerz Gomeza";


	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	85;
	protection [PROT_BLUNT] = 	85;
	protection [PROT_POINT] = 	85;
	protection [PROT_FIRE] 	= 	30;
	protection [PROT_MAGIC] = 	0;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	wear 					=	WEAR_TORSO;
  	ownerGuild 				= 	GIL_EBR;

	owner					=   EBR_100_GOMEZ;
	visual 					=	"ebrh.3ds";
	visual_change 			=	"Hum_EBRS_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE EBR_ARMOR_H2(C_Item)
{
	name 					=	"Ciê¿ki pancerz Magnata";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	70;
	protection [PROT_BLUNT] = 	70;
	protection [PROT_POINT] = 	70;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	wear 					=	WEAR_TORSO;
    ownerGuild 				= 	GIL_EBR;

	visual 					=	"ebrh2.3ds";
	visual_change 			=	"Hum_EBRS_ARMOR2.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};


/*******************************************************************************************
**	NewCamp 						                                        	  		  **
*******************************************************************************************/

/******************************************************************************************/
// Schürferbund

instance SFB_ARMOR_L(C_Item)
{
	name 					=	"Spodnie Kreta";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	10;
	protection [PROT_BLUNT] = 	10;
	protection [PROT_POINT] = 	10;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_SFB_ARMOR_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"sfbl.3ds";
	visual_change 			=	"Hum_SFBL_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
// Organisatoren

INSTANCE ORG_ARMOR_L(C_Item)
{
	name 					=	"Lekki strój Szkodnika";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	20;
	protection [PROT_BLUNT] = 	20;
	protection [PROT_POINT] = 	20;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_ORG_ARMOR_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"orgl.3ds";
	visual_change 			=	"Hum_ORGL_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ORG_ARMOR_M(C_Item)
{
	name 					=	"Cie¿ki Strój Szkodnika";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	25;
	protection [PROT_BLUNT] = 	25;
	protection [PROT_POINT] = 	25;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_ORG_ARMOR_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"orgm.3ds";
	visual_change 			=	"Hum_ORGM_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ORG_ARMOR_H(C_Item)
{
	name 					=	"Lekka zbroja Najemnika";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	30;
	protection [PROT_POINT] = 	30;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_ORG_ARMOR_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"orgh.3ds";
	visual_change 			=	"Hum_ORGS_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE SLD_ARMOR_L(C_Item)
{
	name 					=	" Stara Lekka zbroja Najemnika";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT]	= 	30;
	protection [PROT_POINT] = 	30;
	protection [PROT_FIRE] 	=	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_SLD_ARMOR_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"sldl.3ds";
	visual_change 			=	"Hum_SLDL_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
instance SLD_ARMOR_M(C_Item)
{
	name 					=	"Zbroja Najemnika";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	45;
	protection [PROT_BLUNT] = 	45;
	protection [PROT_POINT] = 	45;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	5;

	value 					=	VALUE_SLD_ARMOR_M;

	wear 					=	WEAR_TORSO;
 
	visual 					=	"sldm.3ds";
	visual_change 			=	"Hum_SLDM_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE SLD_ARMOR_H(C_Item)
{
	name 					=	"Ciê¿ka zbroja Najemnika";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	60;
	protection [PROT_BLUNT] = 	60;
	protection [PROT_POINT] = 	60;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	10;

	value 					=	VALUE_SLD_ARMOR_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"sldh.3ds";
	visual_change 			=	"Hum_SLDS_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};


/*******************************************************************************************
**	PsiCamp 		                                               	  					  **
*******************************************************************************************/

/******************************************************************************************/
// Novizen

INSTANCE NOV_ARMOR_L(C_Item)
{
	name 					=	"Przepaska Nowicjusza";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=   10;
	protection [PROT_BLUNT] = 	10;
	protection [PROT_POINT] = 	10;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_NOV_ARMOR_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"novl.3ds";
	visual_change 			=	"Hum_NOVL_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	on_equip				=	NOV_ARMOR_L_equip;
	on_unequip				=	default_skin;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

FUNC VOID NOV_ARMOR_L_equip()
{
	if(hero.id == 0){
		Mdl_SetVisualBody (hero,"hum_body_Naked0",	0,			1,	"Hum_Head_Bald",		118, 			0,			-1);
	};
};

/******************************************************************************************/
INSTANCE NOV_ARMOR_M(C_Item)
{
	name 					=	"Lekka zbroja Nowicjusza";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	20;
	protection [PROT_BLUNT] = 	20;
	protection [PROT_POINT] = 	20;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;
	wear 					=	WEAR_TORSO;

	value 					=	VALUE_NOV_ARMOR_M;

 
	visual 					=	"novm.3ds";
	visual_change 			=	"Hum_NOVM_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	on_equip				=	NOV_ARMOR_M_equip;
	on_unequip				=	default_skin;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

FUNC VOID NOV_ARMOR_M_equip()
{
	if(hero.id == 0){
		Mdl_SetVisualBody (hero,"hum_body_Naked0",	1,			1,	"Hum_Head_Bald",		124, 			0,			-1);
	};
};


/******************************************************************************************/
INSTANCE NOV_ARMOR_H(C_Item)
{
	name 					=	"Zbroja Nowicjusza";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	25;
	protection [PROT_BLUNT] = 	25;
	protection [PROT_POINT] = 	25;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_NOV_ARMOR_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"novh.3ds";
	visual_change 			=	"Hum_NOVS_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	on_equip				=	NOV_ARMOR_H_equip;
	on_unequip				=	default_skin;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

FUNC VOID NOV_ARMOR_H_equip()
{
	if(hero.id == 0){
		Mdl_SetVisualBody (hero,"hum_body_Naked0",	1,			1,	"Hum_Head_Bald",		124, 			0,			-1);
	};
};


/******************************************************************************************/
// Templer

INSTANCE TPL_ARMOR_L(C_Item)
{
	name 					=	"Lekka zbroja Œwi¹tynna";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	30;
	protection [PROT_POINT] = 	30;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_TPL_ARMOR_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"tpll.3ds";
	visual_change 			=	"Hum_TPLL_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	on_equip				=	TPL_ARMOR_L_equip;
	on_unequip				=	default_skin;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

FUNC VOID TPL_ARMOR_L_equip()
{
	if(hero.id == 0){
		Mdl_SetVisualBody (hero,"hum_body_Naked0",	1,			1,	"Hum_Head_Bald",		119, 			0,			-1);
	};
};

/******************************************************************************************/
INSTANCE TPL_ARMOR_M(C_Item)
{
	name 					=	"Zbroja Œwi¹tynna";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	45;
	protection [PROT_BLUNT] = 	45;
	protection [PROT_POINT] = 	45;
	protection [PROT_FIRE] 	= 	25;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_TPL_ARMOR_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"tplm.3ds";
	visual_change 			=	"Hum_TPLM_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	on_equip				=	TPL_ARMOR_M_equip;
	on_unequip				=	default_skin;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

FUNC VOID TPL_ARMOR_M_equip()
{
	if(hero.id == 0){
		Mdl_SetVisualBody (hero,"hum_body_Naked0",	1,			1,	"Hum_Head_Bald",		121, 			0,			-1);
	};
};

/******************************************************************************************/
INSTANCE TPL_ARMOR_H(C_Item)
{
	name 					=	"Ciê¿ka zbroja Œwi¹tynna";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	70;
	protection [PROT_BLUNT] = 	70;
	protection [PROT_POINT] = 	70;
	protection [PROT_FIRE] 	= 	35;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_TPL_ARMOR_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"tplh.3ds";
	visual_change 			=	"Hum_TPLS_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	on_equip				=	TPL_ARMOR_H_equip;
	on_unequip				=	default_skin;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

FUNC VOID TPL_ARMOR_H_equip()
{
	if(hero.id == 0){
		Mdl_SetVisualBody (hero,"hum_body_Naked0",	1,			1,	"Hum_Head_Bald",		120, 			0,			-1);
	};
};

/******************************************************************************************/
// Gurus

INSTANCE GUR_ARMOR_M(C_Item)
{
	name 					=	"Szata Guru";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	=	35;
	protection [PROT_BLUNT] = 	35;
	protection [PROT_POINT] = 	35;
	protection [PROT_FIRE] 	= 	25;
	protection [PROT_MAGIC] = 	25;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	wear 					=	WEAR_TORSO;
    ownerGuild 				= 	GIL_GUR;

	visual 					=	"gurm.3ds";
	visual_change 			=	"Hum_GURM_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	on_equip				=	GUR_ARMOR_M_equip;
	on_unequip				=	default_skin;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

FUNC VOID GUR_ARMOR_M_equip()
{
	if(hero.id == 0){
		Mdl_SetVisualBody (hero,"hum_body_Naked0",	1,			1,	"Hum_Head_Bald",		122, 			0,			-1);
	};
};

/******************************************************************************************/
INSTANCE GUR_ARMOR_H(C_Item)
{
	name 					=	"Zdobiona szata Guru";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	=	55;
	protection [PROT_BLUNT] = 	55;
	protection [PROT_POINT] = 	55;
	protection [PROT_FIRE] 	= 	35;
	protection [PROT_MAGIC] = 	35;
	wear 					=	WEAR_TORSO;

 	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

   ownerGuild 				= 	GIL_GUR;
	visual 					=	"gurh.3ds";
	visual_change 			=	"Hum_GURS_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	on_equip				=	GUR_ARMOR_H_equip;
	on_unequip				=	default_skin;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

FUNC VOID GUR_ARMOR_H_equip()
{
	if(hero.id == 0){
		Mdl_SetVisualBody (hero,"hum_body_Naked0",	1,			1,	"Hum_Head_Bald",		123, 			0,			-1);
	};
};


/*******************************************************************************************
**	MAGIER		                                                  						**
*******************************************************************************************/

/******************************************************************************************/
// Feuermagier

INSTANCE KDF_ARMOR_L(C_Item)
{
	name 					=	"Szata Ognia";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	40;
	protection [PROT_BLUNT] = 	40;
	protection [PROT_POINT] = 	40;
	protection [PROT_FIRE] 	= 	20;
	protection [PROT_MAGIC] = 	20;
	wear 					=	WEAR_TORSO;

 	value 					=	VALUE_KDF_ARMOR_L;

	visual 					=	"kdfl.3ds";
	visual_change 			=	"Hum_KDFL_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE KDF_ARMOR_H(C_Item)
{
	name 					=	"Szata Arcymaga Ognia";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	65;
	protection [PROT_BLUNT] = 	65;
	protection [PROT_POINT] = 	65;
	protection [PROT_FIRE] 	= 	35;
	protection [PROT_MAGIC] = 	35;
	wear 					=	WEAR_TORSO;

	value 					=	VALUE_KDF_ARMOR_H;

	visual 					=	"kdfh.3ds";
	visual_change 			=	"Hum_KDFS_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
// Wassermagier

INSTANCE KDW_ARMOR_L(C_Item)
{
	name 					=	"Szata Wody";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	50;
	protection [PROT_BLUNT] = 	50;
	protection [PROT_POINT] = 	50;
	protection [PROT_FIRE] 	= 	25;
	protection [PROT_MAGIC] = 	25;

	value 					=	VALUE_KDF_ARMOR_H;

	wear 					=	WEAR_TORSO;
	
	visual 					=	"kdwl.3ds";
	visual_change 			=	"Hum_KDWL_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE KDW_ARMOR_H(C_Item)
{
	name 					=	"Zdobiona szata Wody";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	80;
	protection [PROT_BLUNT] = 	80;
	protection [PROT_POINT] = 	80;
	protection [PROT_FIRE] 	= 	40;
	protection [PROT_MAGIC] = 	40;
	wear 					=	WEAR_TORSO;

	value 					=	VALUE_KDW_ARMOR_H;

	visual 					=	"kdwh.3ds";
	visual_change 			=	"Hum_KDWS_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

/******************************************************************************************/
// Dämonenbeschwörer

INSTANCE DMB_ARMOR_M(C_Item)
{
	name 					=	"Szata Mrocznych Sztuk";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	= 	80;
	protection [PROT_BLUNT] = 	80;
	protection [PROT_POINT] = 	80;
	protection [PROT_FIRE] 	= 	45;
	protection [PROT_MAGIC] = 	45;

	wear 					=	WEAR_TORSO;

 	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	ownerGuild 				= 	GIL_DMB;

	visual 					=	"dmbm.3ds";
	visual_change 			=	"Hum_DMBM_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};



/*******************************************************************************************
**	Spezial-Rüstungen                                                                     **
*******************************************************************************************/

// FIXME: hier fehlen noch die Visuals für die Erz-Rüstungen und das INV-Item für die CRAWLERPLATTEN-RÜSTUNG 

// Crawler-Plattenrüstung
INSTANCE CRW_ARMOR_H(C_Item)
{
	name 					=	"Zbroja z pancerzy pe³zaczy";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	= 	80;
	protection [PROT_BLUNT] = 	80;
	protection [PROT_POINT] = 	80;
	protection [PROT_FIRE] 	= 	30;
	protection [PROT_MAGIC] = 	5;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	wear 					=	WEAR_TORSO;
	visual 					=	"crws.3ds";
	visual_change 			=	"Hum_CRAWLER_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_WOOD;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};



/******************************************************************************************/
// Erz-Rüstungen
INSTANCE ORE_ARMOR_M(C_Item)
{
	name 					=	"Staro¿ytna zbroja magiczna";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	= 	100;
	protection [PROT_BLUNT] = 	100;
	protection [PROT_POINT] = 	100;
	protection [PROT_FIRE] 	= 	100;
	protection [PROT_MAGIC] = 	100;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER * 2; // x2 weil einzigartig

	wear 					=	WEAR_TORSO;

	visual 					=	"magie.3ds";
	visual_change 			=	"Hum_MAGIE_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_WOOD;

	description				=	name;
	TEXT[0]					=	"Tê staro¿ytn¹ zbrojê wykonano z magicznej rudy.";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

INSTANCE ORE_ARMOR_H(C_Item)
{
	name 					=	"Wzmocniona zbroja magiczna";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	= 	110;
	protection [PROT_BLUNT] = 	110;
	protection [PROT_POINT] = 	110;
	protection [PROT_FIRE] 	= 	110;
	protection [PROT_MAGIC] = 	110;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER * 2;	// x2 weil einzigartig

	wear 					=	WEAR_TORSO;

	visual 					=	"magie.3ds";
	visual_change 			=	"Hum_MAGIE_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_WOOD;

	description				=	name;
	TEXT[0]					=	"Kowal Stone jeszcze j¹ ulepszy³!";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};




/*******************************************************************************************
**	Der Richter                                                                       **
*******************************************************************************************/
INSTANCE LAW_ARMOR (C_Item)
{
	name 					=	"Szata sêdziego";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	= 	20;
	protection [PROT_BLUNT] = 	20;
	protection [PROT_POINT] = 	20;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	wear 					=	WEAR_TORSO;
    ownerGuild 				= 	GIL_DMB;

	visual 					=	"dmbm.3ds";
	visual_change 			=	"Hum_LAW_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};






/*******************************************************************************************
**	Wache für Intro-Cutscene                                                          **
*******************************************************************************************/
INSTANCE GRD_ARMOR_I(C_Item)
{
	name 					=	"Pancerz Stra¿y Królewskiej";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	=	50;
	protection [PROT_BLUNT] = 	50;
	protection [PROT_POINT] = 	50;
	protection [PROT_FIRE] 	= 	25;
	protection [PROT_MAGIC] = 	1;

	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	wear 					=	WEAR_TORSO;
    ownerGuild 				= 	GIL_GRD;

	visual 					=	"grdi.3ds";
	visual_change 			=	"Hum_GRDI_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};



/*******************************************************************************************
**	Nackte Babes
*******************************************************************************************/
INSTANCE BAB_ARMOR_NUDE (C_Item)
{
	name 					=	"Go³a babka";
	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;
	value 					=	1;

	protection [PROT_EDGE] 	= 	0;
	protection [PROT_BLUNT] = 	0;
	protection [PROT_POINT] = 	0;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	wear 					=	WEAR_TORSO;

	visual 					=	"vobbox.3ds";
	visual_change 			=	"Bab_ARMOR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
};

/******************************************************************************************/
INSTANCE BAB_ARMOR_BIKINI (C_Item)
{
	name 					=	"Babka w bikini";
	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;
	value 					=	1;

	protection [PROT_EDGE] 	= 	0;
	protection [PROT_BLUNT] = 	0;
	protection [PROT_POINT] = 	0;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	wear 					=	WEAR_TORSO;

	visual 					=	"vobbox.3ds";
	visual_change 			=	"Bab_ARMOR.asc";
	visual_skin 			=	1;
	material 				=	MAT_LEATHER;
};
/******************************************************************************************/
/**********************************Drops_Armor*********************************************/
INSTANCE KDF_ARMOR_H2(C_Item)
{
	name 					=	"Stara Szata Xardasa";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	= 	90;
	protection [PROT_BLUNT] = 	90;
	protection [PROT_POINT] = 	90;
	protection [PROT_FIRE] 	= 	45;
	protection [PROT_MAGIC] = 	45;

	wear 					=	WEAR_TORSO;

 	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	ownerGuild 				= 	GIL_DMB;

	visual 					=	"dmbm.3ds";
	visual_change 			=	"Hum_DMBM_ARMOR.asc";
	visual_skin 			=	1;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

INSTANCE DMB_ARMOR_GUR(C_Item)
{
	name 					=	"Szata Mrocznych Sztuk";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE] 	= 	85;
	protection [PROT_BLUNT] = 	85;
	protection [PROT_POINT] = 	85;
	protection [PROT_FIRE] 	= 	45;
	protection [PROT_MAGIC] = 	45;

	wear 					=	WEAR_TORSO;

 	value 					=	protection [PROT_EDGE] * ARMOR_VALUE_MULTIPLIER;

	ownerGuild 				= 	GIL_DMB;

	visual 					=	"dmbm.3ds";
	visual_change 			=	"Hum_DMBM_ARMOR.asc";
	visual_skin 			=	2;
	material 				=	MAT_LEATHER;
	on_equip				=	DMB_ARMOR_GUR_equip;
	on_unequip				=	default_skin;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

FUNC VOID DMB_ARMOR_GUR_equip()
{
	if(hero.id == 0){
		Mdl_SetVisualBody (hero,"hum_body_Naked0",	1,			1,	"Hum_Head_Bald",		125, 			0,			-1);
	};
};

INSTANCE BDT_ARMOR_M(C_Item)
{
	name 					=	"Œredni pancerz bandyty";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	35;
	protection [PROT_BLUNT] = 	35;
	protection [PROT_POINT] = 	35;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_ORG_ARMOR_L;

	wear 					=	WEAR_TORSO;

	visual 					=	"orgl.3ds";
	visual_change 			=	"Hum_ORGL_ARMOR.asc";
	visual_skin 			=	1;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};

INSTANCE BDT_ARMOR_H(C_Item)
{
	name 					=	"Cie¿ki pancerz bandyty";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	45;
	protection [PROT_BLUNT] = 	45;
	protection [PROT_POINT] = 	45;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_ORG_ARMOR_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"orgm.3ds";
	visual_change 			=	"Hum_ORGM_ARMOR.asc";
	visual_skin 			=	1;
	material 				=	MAT_LEATHER;

	description				=	name;
	//TEXT[0]				=	"";
	TEXT[1]					=	NAME_Prot_Edge;			COUNT[1]	= protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		COUNT[2]	= protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			COUNT[3]	= protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		COUNT[4]	= protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;				COUNT[5]	= value;
};