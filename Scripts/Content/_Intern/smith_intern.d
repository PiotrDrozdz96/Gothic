
//1H Sword
const int WEAPON_Common        =   0;
const int WEAPON_1H_Sword_01   =   1;
const int WEAPON_1H_Sword_02   =   2;
const int WEAPON_1H_Sword_03   =   3;
//2H Sword
const int WEAPON_2H_Sword_01   =   4;
const int WEAPON_2H_Sword_02   =   5;
const int WEAPON_2H_Sword_03   =   6;
const int WEAPON_2H_Sword_04   =   7;
const int WEAPON_2H_Sword_05   =   8;

CONST INT MAX_WEAPONS          =   9;

var int PLAYER_TALENT_SMITH[MAX_WEAPONS];
var int PLAYER_TALENT_SMITHLEVEL;

func string HlpSmith_GetName(var int waffe)
{
    //1H Sword
    if      (waffe == WEAPON_Common     ){ return "Niewykoñczony miecz";        }
    else if (waffe == WEAPON_1H_Sword_01){ return "Miecz Bojowy";               }
    else if (waffe == WEAPON_1H_Sword_02){ return "Miecz Zwyciêstwa";           }
    else if (waffe == WEAPON_1H_Sword_03){ return "Rze¿nik";                    }
    //2H Sword
    else if (waffe == WEAPON_2H_Sword_01){ return "Lekki miecz dwurêczny";      }
    else if (waffe == WEAPON_2H_Sword_02){ return "Miecz Królewski";            }
    else if (waffe == WEAPON_2H_Sword_03){ return "Miecz Demonów";              }
    else if (waffe == WEAPON_2H_Sword_04){ return "Ciê¿ki dwurêczniak";         }
    else if (waffe == WEAPON_2H_Sword_05){ return "Mœciwa Stal";                };
};

func int HlpSmith_GetDamage(var int waffe)
{
    //1H Sword
    if      (waffe == WEAPON_Common     ){ return 25;}
    else if (waffe == WEAPON_1H_Sword_01){ return 35;}
    else if (waffe == WEAPON_1H_Sword_02){ return 45;}
    else if (waffe == WEAPON_1H_Sword_03){ return 64;}
    //2H Sword
    else if (waffe == WEAPON_2H_Sword_01){ return 30;}
    else if (waffe == WEAPON_2H_Sword_02){ return 50;}
    else if (waffe == WEAPON_2H_Sword_03){ return 55;}
    else if (waffe == WEAPON_2H_Sword_04){ return 70;}
    else if (waffe == WEAPON_2H_Sword_05){ return 90;};
};

func int HlpSmith_GetCond(var int waffe)
{
    //1H Sword
    if      (waffe == WEAPON_Common     ){ return 20;}
    else if (waffe == WEAPON_1H_Sword_01){ return 30;}
    else if (waffe == WEAPON_1H_Sword_02){ return 35;}
    else if (waffe == WEAPON_1H_Sword_03){ return 64;}
    //2H Sword
    else if (waffe == WEAPON_2H_Sword_01){ return 32;}
    else if (waffe == WEAPON_2H_Sword_02){ return 50;}
    else if (waffe == WEAPON_2H_Sword_03){ return 60;}
    else if (waffe == WEAPON_2H_Sword_04){ return 50;}
    else if (waffe == WEAPON_2H_Sword_05){ return 90;};
};