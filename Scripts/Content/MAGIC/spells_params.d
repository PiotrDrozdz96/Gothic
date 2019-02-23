
// **************************************************
// Zauberspr�che
// Hier stehen die Definitionen der
// logischen Spr�che
// Autor: Carsten Edenfeld
// **************************************************

// SpellCat
CONST INT SPELL_GOOD		= 	0;
CONST INT SPELL_NEUTRAL		= 	1;
CONST INT SPELL_BAD			= 	2;


CONST INT SPL_DONTINVEST 	= 	0;		// Es k�nnen keine weiteren Manapunkte investiert werden. Erst durch CTRL loslassen geht der Spell ab
CONST INT SPL_RECEIVEINVEST	= 	1;		// Wirkung durchgef�hrt, es k�nnen weitere Invest kommen, zB.bei Heal nach jedem P�ppel
CONST INT SPL_SENDCAST		= 	2;		// Starte den Zauber-Effekt (wie CTRL loslassen), automatischer Abbruch
CONST INT SPL_SENDSTOP		= 	3;		// Beende Zauber ohne Effekt
CONST INT SPL_NEXTLEVEL		=	4;		// setze den Spruch auf den n�chsten Level



// ************************************************************************************************
// zum Casten ben�tigtes, bzw. bei aufladbaren Spells maximal investierbares Mana
// ************************************************************************************************

const int	SPL_SENDCAST_LIGHT			=	5; //
const int	SPL_SENDCAST_FIREBOLT		=	5; //
const int	SPL_SENDCAST_FIREBALL		=	10; //
const int	SPL_SENDCAST_FIRESTORM		=	20; //
const int	SPL_SENDCAST_FIRERAIN		=	60; //
const int	SPL_SENDCAST_TELEPORT		=	5; //

const int	SPL_SENDCAST_TRF_MEATBUG	=	5; //
const int	SPL_SENDCAST_TRF_MOLERAT	=	5; //
const int	SPL_SENDCAST_TRF_SCAVENGER	=	5; //
const int	SPL_SENDCAST_TRF_BLOODFLY	=	10; //
const int	SPL_SENDCAST_TRF_WOLF		=	10; //
const int	SPL_SENDCAST_TRF_LURKER		=	5; //
const int	SPL_SENDCAST_TRF_WARAN		=	10; //
const int	SPL_SENDCAST_TRF_ORCDOG		=	15; //
const int	SPL_SENDCAST_TRF_CRAWLER	=	10; //
const int	SPL_SENDCAST_TRF_SNAPPER	=	10; //
const int	SPL_SENDCAST_TRF_SHADOWBEAST=	15; //

const int	SPL_SENDCAST_THUNDERBOLT	=	7; //
const int	SPL_SENDCAST_THUNDERBALL	=	50; //
const int	SPL_SENDCAST_ICECUBE		=	30; //
const int	SPL_SENDCAST_ICEWAVE		=	60; //

const int	SPL_SENDCAST_SUMMONGOBBO	=	15; //
const int	SPL_SENDCAST_SUMMONWOLF		=	30; //
const int	SPL_SENDCAST_SUMMONDEMON	=	75; //
const int	SPL_SENDCAST_SUMMONSKELETON	=	45; //
const int	SPL_SENDCAST_SUMMONGOLEM	=	60; //
const int	SPL_SENDCAST_ARMYOFDARKNESS	=	100; //

const int	SPL_SENDCAST_MASSDEATH		=	150; //Runa Uriziela ??
const int	SPL_SENDCAST_DESTROYUNDEAD	=	5; //Przez quest nie mog� zwi�kszy� ??
const int	SPL_SENDCAST_WINDFIST		=	50; //
const int	SPL_SENDCAST_STORMFIST		=	50; //
const int	SPL_SENDCAST_CHARM			=	10; // 
const int	SPL_SENDCAST_SLEEP			=	5; // przez quest nie mog� zwi�kszy� ??
const int	SPL_SENDCAST_FEAR			=	20; //
const int	SPL_SENDCAST_BERZERK		=	20; //
const int	SPL_SENDCAST_BREATHOFDEATH	=	75; //
const int	SPL_SENDCAST_NEW1			=	5;		// Spell SPL_NEW1 (URIZIEL-Rune mit speziellen Spieler-BreathOfDeath)
const int	SPL_SENDCAST_SHRINK			=	5; // przez quest nie mog� zwi�kszy� ??


// ************************************************************************************************
// Schaden der direkten Kampfspr�che
// ************************************************************************************************
const int	SPL_DAMAGE_FIREBOLT			=	30;
const int	SPL_DAMAGE_FIREBALL			=	15;		//pro Level
const int	SPL_DAMAGE_FIRESTORM		=	15;
const int	SPL_DAMAGE_FIRERAIN			=	300;

const int	SPL_DAMAGE_THUNDERBOLT		=	40;
const int	SPL_DAMAGE_THUNDERBALL		=	25;		//pro Level

const int	SPL_DAMAGE_MASSDEATH		=	400;
const int	SPL_DAMAGE_BREATHOFDEATH	=	500;
const int	SPL_DAMAGE_DESTROYUNDEAD	=	9999;	//soll halt wirklich killen!

const int	SPL_DAMAGE_WINDFIST			=	10;
const int	SPL_DAMAGE_STORMFIST		=	15;



// ************************************************************************************************
// HPs, die den Opfern in den Opferzust�nden abgezogen werden:
// ************************************************************************************************

const int   SPL_FREEZE_DAMAGE		 	=	60;	// IceCube, IceWave
const int   SPL_ZAPPED_DAMAGE_PER_SEC 	=	25;	// ChainLightning
const int   SPL_PYRO_DAMAGE_PER_SEC		=	40;	// Pyrokinesis

const int	SPL_HEALING_HP_PER_MP		=	10;	// Heal (HP pro Mana)


// ************************************************************************************************
// Zeit, die das Oper im ZS bleibt (in sec.)
// ************************************************************************************************

// Achtung: wenn bei FREEZE (9) und SHORTZAPPED (2) die Werte ge�ndert werden, mu� auch die Lebensdauer der PFX angepasst werden
const int	SPL_TIME_SHORTZAPPED		=	2;	// Thunderball
const int	SPL_TIME_FREEZE				=	9;	// IceCube, IceWave
const int   SPL_TIME_SLEEP				=	30;	// Sleep
const int	SPL_TIME_BERZERK			=	30;	// Berzerk


// Ranges f�r NSC-Magie-Auswahllogik
const int	SPL_RANGE_ICEATTACK			=	300;	
const int	SPL_RANGE_WINDFIST			=	1200;	
const int	SPL_RANGE_STORMFIST			=	1200;	
const int	SPL_RANGE_SLEEP				=	1000;	
const int	SPL_RANGE_CHAINLIGHTNING	=	1000; //Opfer in ZS, dort wird schaden angegeben	




// folgendes array verweist auf den _SpezialEffekt_ Klassennamen nach dem "SPELL_",
const STRING spellFXInstanceNames[MAX_SPELL] =
{
	"Light",
	"Fireball",
	"Transform",
	"Fear",
	"Heal",
	"Lightning",
	"Demon",
	"Skeleton",
	"Forget",
	"WindFist",
	"Telekinesis",
	"Charm",
	"Sleep",
	"Pyrokinesis",
	"MassDeath",
	"Control",
	"DestroyUndead",
	"Firebolt",
	"Firestorm",
	"Firerain",
	"Speed",
	"Teleport",
	"Teleport",
	"Teleport",
	"Teleport",
	"Teleport",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Transform",
	"Chainlightning",
	"Thunderbolt",
	"Thunderball",
	"Icecube",
	"Icewave",
	"Golem",
	"ArmyOfDarkness",
	"Stormfist",
	"Telekinesis2",
	"BreathOfDeath",
	"Shrink",
	"Undress",
	"Dance",
	"Berzerk",
	"BreathOfDeath",
	"Teleport",
	"Skeleton",
	"Skeleton",
	"New5"
};


const STRING spellFXAniLetters[MAX_SPELL] =
{
	"SLE",	//	SPL_LIGHT
	"FIB",  //  SPL_FIREBALL
	"TRF",  //  SPL_TRANSFORM
	"FEA",  //  SPL_FEAR
	"HEA",  //  SPL_HEAL
	"XXX",  //  SPL_LIGHTNING
	"SUM",  //  SPL_SUMMONDEMON
	"SUM",  //  SPL_SUMMONSKELETON
	"XXX",  //  SPL_FORGET
	"WND",  //  SPL_WINDFIST
	"TEL",  //  SPL_TELEKINESIS
	"SLE",  //  SPL_CHARM
	"SLE",  //  SPL_SLEEP
	"PYR",  //  SPL_PYROKINESIS
	"FEA",  //  SPL_MASSDEATH
	"CON",  //  SPL_CONTROL
	"FIB",  //  SPL_DESTROYUNDEAD
	"FBT",	//	SPL_FIREBOLT
	"FIB",  //  SPL_FIRESTORM
	"FEA",  //  SPL_FIRERAIN
	"XXX",  //  SPL_SPEED
	"HEA",  //  SPL_TELEPORT1
	"HEA",  //  SPL_TELEPORT2
	"HEA",  //  SPL_TELEPORT3
	"HEA",  //  SPL_TELEPORT4
	"HEA",  //  SPL_TELEPORT5
	"TRF",  //  SPL_TRF_BLOODFLY
	"TRF",  //  SPL_TRF_BLOODHOUND
	"TRF",  //  SPL_TRF_CRAWLER
	"TRF",  //  SPL_TRF_LURKER
	"TRF",  //  SPL_TRF_MEATBUG
	"TRF",  //  SPL_TRF_MOLERAT
	"TRF",  //  SPL_TRF_ORCDOG
	"TRF",  //  SPL_TRF_RAZOR
	"TRF",  //  SPL_TRF_SCAVENGER
	"TRF",  //  SPL_TRF_SCAVENGER2
	"TRF",  //  SPL_TRF_SHADOWBEAS
	"TRF",  //  SPL_TRF_SNAPPER
	"TRF",  //  SPL_TRF_WARAN
	"TRF",  //  SPL_TRF_WOLF
	"LIN",  //  SPL_CHAINLIGHTNING
	"FBT",  //  SPL_THUNDERBOLT
	"FIB",  //  SPL_THUNDERBALL
	"FRZ",  //  SPL_ICECUBE
	"FEA",  //  SPL_ICEWAVE
	"SUM",  //  SPL_SUMMONGOLEM
	"SUM",  //  SPL_ARMYOFDARKNESS
	"WND",  //  SPL_STORMFIST
	"XXX",  //  SPL_TELEKINESIS2
	"FIB",  //  SPL_BREATHOFDEATH
	"SLE",  //  SPL_SHRINK
	"XXX",  //  SPL_UNDRESS
	"XXX",  //  SPL_DANCE
	"SLE",	//	SPL_BERZERK
	"FIB",  //  SPL_NEW1
	"HEA",  //  SPL_TELEPORT6
	"SUM",  //  SPL_SUMMONGOBBO
	"SUM",  //  SPL_NEW4
	"NE5"   //  SPL_NEW5
};


// *****************
// Kreis des Feuers
// *****************

// bei allen Spells, in denen die "targetCollectRange" nicht angegeben ist wird der Wert aus der Focus.d benutzt!
// Dieser Wert ist auch die Obergrenze f�r die Reichweite der Spells und sollte sinnvollerweise so hoch sein, wie der Wert f�r Fernkampf

// FIXME: 	Bei allen Spells, bei denen der Schaden im Opfer-Zustand angegeben ist, kann KEIN Schadenstyp angwegeben werden!
//			Der Abzug von HPs erfolgt dann �ber den ChangeAttribute-Befehl! 

INSTANCE Spell_Light (C_Spell_Proto)
{
	spelltype 				= SPELL_NEUTRAL;
	targetCollectAlgo		= TARGET_COLLECT_NONE;
	targetCollectRange		= 0;
	targetCollectAzi		= 0;
	targetCollectElev		= 0;
};


INSTANCE Spell_Firebolt (C_Spell_Proto)		// hei�t jetzt "Magic Missile"
{
	damage_per_level		= SPL_DAMAGE_FIREBOLT;
	spelltype 				= SPELL_BAD;
	damageType				= DAM_FIRE;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType		= TARGET_TYPE_NPCS;
};


INSTANCE Spell_Fireball (C_Spell_Proto)
{
	damage_per_level		= SPL_DAMAGE_FIREBALL;
	spelltype 				= SPELL_BAD;
	damageType				= DAM_FIRE;
	isMultiEffect			= 0;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType		= TARGET_TYPE_NPCS;
};


INSTANCE Spell_Firestorm (C_Spell_Proto)
{
	damage_per_level		= SPL_DAMAGE_FIRESTORM;
	spelltype 				= SPELL_BAD;
	damageType				= DAM_FIRE;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType		= TARGET_TYPE_NPCS;
};


INSTANCE Spell_FireRain (C_Spell_Proto)
{
	damage_per_level		= SPL_DAMAGE_FIRERAIN; // 2 Level n�tig f�r PFX = 200 Feuerschaden!
	spelltype 				= SPELL_BAD;
	damageType				= DAM_FIRE;
	targetCollectAlgo		= TARGET_COLLECT_ALL_FALLBACK_NONE;	// Opfer werden aber erst durch Kollision mit dem Effekt "angez�ndet"
	targetCollectRange		= 1000;					// 10m
	targetCollectAzi		= 360;
	targetCollectElev		= 60;

};


INSTANCE Spell_Teleport (C_Spell_Proto)
{
	time_per_mana			= 750;
	spelltype 				= SPELL_NEUTRAL;
	targetCollectAlgo		= TARGET_COLLECT_CASTER;
	canTurnDuringInvest		= 0;
	targetCollectRange		= 0;
	targetCollectAzi		= 0;
	targetCollectElev		= 0;
};


// *****************
// Kreis des Wassers
// *****************

INSTANCE Spell_Heal (C_Spell_Proto)
{
	time_per_mana			= 250;
	spelltype 				= SPELL_NEUTRAL;
	targetCollectAlgo		= TARGET_COLLECT_CASTER;
	canTurnDuringInvest		= 0;
	targetCollectRange		= 0;
	targetCollectAzi		= 0;
	targetCollectElev		= 0;
};


INSTANCE Spell_Transform (C_Spell_Proto)
{
	time_per_mana			= 250;
	spelltype 				= SPELL_BAD;
	targetCollectAlgo		= TARGET_COLLECT_NONE;
	canTurnDuringInvest		= 0;
	targetCollectRange		= 0;
	targetCollectAzi		= 0;
	targetCollectElev		= 0;
};


INSTANCE Spell_ChainLightning (C_Spell_Proto)
{
	time_per_mana			= 750;
	spelltype 				= SPELL_BAD;
	damage_per_level 		= 0;					//	Wird nicht benutzt, da Aufrechterhaltungs-Spruch! Damage in zs_Zapped
	damageType				= DAM_MAGIC;
	isMultiEffect			= 1;
	targetCollectAlgo		= TARGET_COLLECT_ALL;
	targetCollectRange		= 1500;					// 15m
//	targetCollectAzi		= 180;
//	targetCollectElev		= 60;
	targetCollectType		= TARGET_TYPE_NPCS;
};


INSTANCE Spell_Thunderbolt (C_Spell_Proto)
{
	spelltype 				= SPELL_BAD;
	damage_per_level 		= SPL_DAMAGE_THUNDERBOLT;
	damageType				= DAM_MAGIC;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType		= TARGET_TYPE_NPCS;
};


INSTANCE Spell_Thunderball (C_Spell_Proto)
{
	spelltype 				= SPELL_BAD;
	damage_per_level 		= SPL_DAMAGE_THUNDERBALL;
	damageType				= DAM_MAGIC;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType		= TARGET_TYPE_NPCS;
};


INSTANCE Spell_IceCube (C_Spell_Proto)
{
	spelltype 				= SPELL_BAD;
	damage_per_level 		= 0;					// Schaden wird im zs_MagicFreeze angegeben!
	damageType				= DAM_MAGIC;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectRange		= 1500;					// 15m
	targetCollectType		= TARGET_TYPE_NPCS;
};


INSTANCE Spell_IceWave (C_Spell_Proto)
{
	spelltype 				= SPELL_BAD;
	damage_per_level 		= 0;					// Relativer Schaden je nach Opfer wird im zs_MagicFreeze angegeben!
	damageType				= DAM_MAGIC;
	targetCollectAlgo		= TARGET_COLLECT_ALL_FALLBACK_NONE;	// Opfer werden aber erst durch Kollision mit dem Effekt "eingefroren"
	targetCollectRange		= 1000;					// 10m
	targetCollectAzi		= 360;
	targetCollectElev		= 60;
};



// *****************
// D�monenbeschw�rer
// *****************


INSTANCE Spell_Demon	(C_Spell_Proto)
{
	time_per_mana			= 20;
	spelltype 				= SPELL_BAD;
	targetCollectAlgo		= TARGET_COLLECT_NONE;
	targetCollectRange		= 0;
	targetCollectAzi		= 0;
	targetCollectElev		= 0;
};


INSTANCE Spell_Skeleton (C_Spell_Proto)
{
	time_per_mana			= 30;
	spelltype 				= SPELL_BAD;
	targetCollectAlgo		= TARGET_COLLECT_NONE;
	targetCollectRange		= 0;
	targetCollectAzi		= 0;
	targetCollectElev		= 0;
};


INSTANCE Spell_Golem (C_Spell_Proto)
{
	time_per_mana			= 25;
	spelltype 				= SPELL_BAD;
	targetCollectAlgo		= TARGET_COLLECT_NONE;
	targetCollectRange		= 0;
	targetCollectAzi		= 0;
	targetCollectElev		= 0;
};


INSTANCE Spell_ArmyOfDarkness (C_Spell_Proto)
{
	time_per_mana			= 20;
	spelltype 				= SPELL_BAD;
	targetCollectAlgo		= TARGET_COLLECT_NONE;
	targetCollectRange		= 0;
	targetCollectAzi		= 0;
	targetCollectElev		= 0;
};


INSTANCE Spell_MassDeath(C_Spell_Proto)
{
	damage_per_level		= SPL_DAMAGE_MASSDEATH;	
	spelltype 				= SPELL_BAD;
	damageType				= DAM_MAGIC;
	targetCollectAlgo		= TARGET_COLLECT_ALL_FALLBACK_NONE;	// Opfer werden aber erst durch Kollision mit dem Effekt get�tet
	targetCollectRange		= 1000;					// 10m
	targetCollectAzi		= 360;
	targetCollectElev		= 60;
};


INSTANCE Spell_DestroyUndead(C_Spell_Proto)
{
	damage_per_level 		= SPL_DAMAGE_DESTROYUNDEAD;
	spelltype				= SPELL_NEUTRAL;
	damageType				= DAM_MAGIC;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectRange		= 1500;					// 15m
	targetCollectType		= TARGET_TYPE_UNDEAD;
};



// *****************
//      Psionic
// *****************

INSTANCE Spell_WindFist (C_Spell_Proto)
{
	damage_per_level		= SPL_DAMAGE_WINDFIST;
	spelltype 				= SPELL_BAD;
	damageType				= DAM_FLY;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectRange		= SPL_RANGE_WINDFIST;
	targetCollectType		= TARGET_TYPE_NPCS;
};


INSTANCE Spell_StormFist (C_Spell_Proto)
{
	damage_per_level		= SPL_DAMAGE_STORMFIST;
	spelltype 				= SPELL_BAD;
	damageType				= DAM_FLY;
	//isMultiEffect			= 1;
	targetCollectAlgo		= TARGET_COLLECT_ALL_FALLBACK_NONE;
	targetCollectRange		= SPL_RANGE_STORMFIST;					// 10m
	targetCollectAzi		= 60;
	targetCollectElev		= 60;
	targetCollectType		= TARGET_TYPE_NPCS;
};


INSTANCE Spell_Telekinesis (C_Spell_Proto)
{
	time_per_mana			= 5000;
	spelltype				= SPELL_NEUTRAL;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS;
	canTurnDuringInvest		= FALSE;
	canChangeTargetDuringInvest = FALSE;
};


INSTANCE Spell_Charm (C_Spell_Proto)
{
	spelltype 				= SPELL_BAD;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS;
	targetCollectRange		= 1000;					// 10m
	targetCollectType		= TARGET_TYPE_HUMANS;
};


INSTANCE Spell_Sleep(C_Spell_Proto)
{
	spelltype 				= SPELL_NEUTRAL;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS;
	targetCollectRange		= 1000;					// 10m
	targetCollectType		= TARGET_TYPE_HUMANS;
};


INSTANCE Spell_Pyrokinesis(C_Spell_Proto)
{
	time_per_mana			= 250;
	damage_per_level		= 0;					//	Wird nicht benutzt, da Aufrechterhaltungs-Spruch! Damage-Angabe in zs_Pyro
	spelltype 				= SPELL_BAD;
	damageType				= DAM_MAGIC;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS;
	targetCollectRange		= 1000;					// 10m
	targetCollectType		= TARGET_TYPE_NPCS;
};


INSTANCE Spell_Control(C_Spell_Proto)
{
	spelltype 				= SPELL_BAD;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS;
	targetCollectRange		= 1000;					// 10m
	targetCollectType		= TARGET_TYPE_HUMANS;
};


INSTANCE Spell_Fear (C_Spell_Proto)
{
	damage_per_level		= 0;
	spelltype 				= SPELL_BAD;
	targetCollectAlgo		= TARGET_COLLECT_NONE;	// Opfer werden in der "spell_fear.d" per "AI_SetNpcsToState(self,ZS_Flee, 1000);" bestimmt
	targetCollectRange		= 0;
	targetCollectAzi		= 0;
	targetCollectElev		= 0;
};


INSTANCE Spell_Berzerk (C_Spell_Proto)
{
	spelltype				= SPELL_BAD;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS;
	targetCollectRange		= 1000;					// 10m
	targetCollectType		= TARGET_TYPE_NPCS;
};


INSTANCE Spell_BreathOfDeath(C_Spell_Proto)
{
	damage_per_level		= SPL_DAMAGE_BREATHOFDEATH;
	spelltype 				= SPELL_BAD;
	damageType				= DAM_MAGIC;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType		= TARGET_TYPE_NPCS;
};


INSTANCE Spell_New1(C_Spell_Proto)		// Spell SPL_NEW1 (URIZIEL-Rune mit speziellen Spieler-BreathOfDeath)
{
	time_per_mana			= 100;
	damage_per_level		= 150;
	spelltype 				= SPELL_BAD;
	damageType				= DAM_MAGIC;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType		= TARGET_TYPE_NPCS;
};


INSTANCE Spell_Shrink (C_Spell_Proto)
{
	time_per_mana			= 1000;
	spelltype				= SPELL_NEUTRAL;
	targetCollectAlgo		= TARGET_COLLECT_FOCUS;
	targetCollectRange		= 800;					// 8m
	targetCollectType		= TARGET_TYPE_NPCS;
};
