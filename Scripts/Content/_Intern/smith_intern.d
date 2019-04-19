
const int WEAPON_Common        =   0;
const int WEAPON_1H_Sword_01   =   1;
const int WEAPON_1H_Sword_02   =   2;
const int WEAPON_1H_Sword_03   =   3;

CONST INT MAX_WEAPONS          =   4;

var int PLAYER_TALENT_SMITH[MAX_WEAPONS];
var int PLAYER_TALENT_SMITHLEVEL;

func string HlpSmith_GetName(var int waffe)
{
    if      (waffe == WEAPON_Common     ){ return ItMw_1H_Sword_01.name;        }
    else if (waffe == WEAPON_1H_Sword_01){ return ItMw_1H_Sword_04.name;        }
    else if (waffe == WEAPON_1H_Sword_02){ return ItMw_1H_Sword_Long_04.name;   }
    else if (waffe == WEAPON_1H_Sword_03){ return ItMw_1H_Sword_Bastard_02.name;};
};

func int HlpSmith_GetDamage(var int waffe)
{
    if      (waffe == WEAPON_Common     ){ return ItMw_1H_Sword_01.damageTotal;        }
    else if (waffe == WEAPON_1H_Sword_01){ return ItMw_1H_Sword_04.damageTotal;        }
    else if (waffe == WEAPON_1H_Sword_02){ return ItMw_1H_Sword_Long_04.damageTotal;   }
    else if (waffe == WEAPON_1H_Sword_03){ return ItMw_1H_Sword_Bastard_02.damageTotal;};
};

func int HlpSmith_GetCond(var int waffe)
{
    if      (waffe == WEAPON_Common     ){ return ItMw_1H_Sword_01.cond_value[2];        }
    else if (waffe == WEAPON_1H_Sword_01){ return ItMw_1H_Sword_04.cond_value[2];        }
    else if (waffe == WEAPON_1H_Sword_02){ return ItMw_1H_Sword_Long_04.cond_value[2];   }
    else if (waffe == WEAPON_1H_Sword_03){ return ItMw_1H_Sword_Bastard_02.cond_value[2];};
};