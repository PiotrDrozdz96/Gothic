
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
//1H Mace
const int WEAPON_1H_Mace_01    =   8;
const int WEAPON_1H_Mace_02    =   9;
const int WEAPON_1H_Mace_03    =   10;
//2H Axe
const int WEAPON_2H_Axe_01     =   11;
const int WEAPON_2H_Axe_02     =   12;
const int WEAPON_2H_Axe_03     =   13;
const int WEAPON_2H_Axe_04     =   14;

CONST INT MAX_WEAPONS          =   15;

var int PLAYER_TALENT_SMITH[MAX_WEAPONS];
var int PLAYER_TALENT_SMITHLEVEL;

func string HlpSmith_GetName(var int waffe)
{
    //1H Sword
    if      (waffe == WEAPON_Common     ){ return "Niewykoñczony miecz";    }
    else if (waffe == WEAPON_1H_Sword_01){ return "Miecz Bojowy";           }
    else if (waffe == WEAPON_1H_Sword_02){ return "Miecz Zwyciêstwa";       }
    else if (waffe == WEAPON_1H_Sword_03){ return "Rêka Stra¿nika";         }
    //2H Sword
    else if (waffe == WEAPON_2H_Sword_01){ return "Lekki miecz dwurêczny";  }
    else if (waffe == WEAPON_2H_Sword_02){ return "Miecz Królewski";        }           
    else if (waffe == WEAPON_2H_Sword_03){ return "Ciê¿ki dwurêczniak";     }
    else if (waffe == WEAPON_2H_Sword_04){ return "Mœciwa Stal";            }
    //1H Mace
    else if (waffe == WEAPON_1H_Mace_01 ){ return "¯elazna Maczuga";        }
    else if (waffe == WEAPON_1H_Mace_02 ){ return "£omotacz";               }
    else if (waffe == WEAPON_1H_Mace_03 ){ return "£amacz Serc";            }
    //2H Axe
    else if (waffe == WEAPON_2H_Axe_01  ){ return "Lekki topór bojowy";     }
    else if (waffe == WEAPON_2H_Axe_02  ){ return "Ostrze Najemnika";       }
    else if (waffe == WEAPON_2H_Axe_03  ){ return "Topór Wojenny";          }
    else if (waffe == WEAPON_2H_Axe_04  ){ return "Krzyk Wojownika";        };

};

func int HlpSmith_GetDamage(var int waffe)
{
    //1H Sword
    if      (waffe == WEAPON_Common     ){ return 25;}
    else if (waffe == WEAPON_1H_Sword_01){ return 35;}
    else if (waffe == WEAPON_1H_Sword_02){ return 45;}
    else if (waffe == WEAPON_1H_Sword_03){ return 60;}
    //2H Sword
    else if (waffe == WEAPON_2H_Sword_01){ return 30;}
    else if (waffe == WEAPON_2H_Sword_02){ return 50;}
    else if (waffe == WEAPON_2H_Sword_03){ return 70;}
    else if (waffe == WEAPON_2H_Sword_04){ return 90;}
    //1H Mace
    else if (waffe == WEAPON_1H_Mace_01 ){ return 35;}
    else if (waffe == WEAPON_1H_Mace_02 ){ return 45;}
    else if (waffe == WEAPON_1H_Mace_03 ){ return 60;}
    //2H Axe
    else if (waffe == WEAPON_2H_Axe_01  ){ return 35;}
    else if (waffe == WEAPON_2H_Axe_02  ){ return 40;}
    else if (waffe == WEAPON_2H_Axe_03  ){ return 60;}
    else if (waffe == WEAPON_2H_Axe_04  ){ return 80;};
};

func int HlpSmith_GetCond(var int waffe)
{
    //1H Sword
    if      (waffe == WEAPON_Common     ){ return 20;}
    else if (waffe == WEAPON_1H_Sword_01){ return 30;}
    else if (waffe == WEAPON_1H_Sword_02){ return 35;}
    else if (waffe == WEAPON_1H_Sword_03){ return 50;}
    //2H Sword
    else if (waffe == WEAPON_2H_Sword_01){ return 32;}
    else if (waffe == WEAPON_2H_Sword_02){ return 50;}
    else if (waffe == WEAPON_2H_Sword_03){ return 50;}
    else if (waffe == WEAPON_2H_Sword_04){ return 90;}
    //1H Mace
    else if (waffe == WEAPON_1H_Mace_01 ){ return 25;}
    else if (waffe == WEAPON_1H_Mace_02 ){ return 35;}
    else if (waffe == WEAPON_1H_Mace_03 ){ return 50;}
    //2H Axe
    else if (waffe == WEAPON_2H_Axe_01  ){ return 40;}
    else if (waffe == WEAPON_2H_Axe_02  ){ return 40;}
    else if (waffe == WEAPON_2H_Axe_03  ){ return 60;}
    else if (waffe == WEAPON_2H_Axe_04  ){ return 80;};
};