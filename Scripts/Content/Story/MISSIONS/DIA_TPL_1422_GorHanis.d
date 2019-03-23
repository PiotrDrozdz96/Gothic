// **************************************************
//						 EXIT 
// **************************************************

instance Info_GorHanis_Exit (C_INFO)
{
	npc				= TPL_1422_GorHanis;
	nr				= 999;
	condition		= Info_GorHanis_Exit_Condition;
	information		= Info_GorHanis_Exit_Info;
	permanent		= 1;
	description 	= DIALOG_ENDE;
};                       

FUNC INT Info_GorHanis_Exit_Condition()
{
	return 1;
};

func VOID Info_GorHanis_Exit_Info()
{
	AI_StopProcessInfos	( self );
};

// **************************************************
//				Was machst du hier?
// **************************************************

instance Info_GorHanis_What(C_INFO)
{
	npc				= TPL_1422_GorHanis;
	nr				= 1;
	condition		= Info_GorHanis_What_Condition;
	information		= Info_GorHanis_What_Info;
	permanent		= 0;
	description 	= "Co tu robisz?";
};                       

FUNC INT Info_GorHanis_What_Condition()
{
	return 1;
};

func VOID Info_GorHanis_What_Info()
{
	AI_Output (other, self,"Info_GorHanis_What_15_00"); //Co tu robisz?
	AI_Output (self, other,"Info_GorHanis_What_08_01"); //Ja? Walczê ku chwale wielkiego Œni¹cego!
};

// **************************************************
//					Arena
// **************************************************

instance Info_GorHanis_Arena(C_INFO)
{
	npc				= TPL_1422_GorHanis;
	nr				= 1;
	condition		= Info_GorHanis_Arena_Condition;
	information		= Info_GorHanis_Arena_Info;
	permanent		= 0;
	description 	= "Walczysz na arenie?";
};                       

FUNC INT Info_GorHanis_Arena_Condition()
{
	if (Npc_KnowsInfo(self,Info_GorHanis_What))
	{
		return 1;
	};
};

func VOID Info_GorHanis_Arena_Info()
{
	AI_Output (other, self,"Info_GorHanis_Arena_15_00"); //Walczysz na arenie?
	AI_Output (self, other,"Info_GorHanis_Arena_08_01"); //Zosta³em wybrany przez moich mistrzów, by broniæ na arenie honoru obozu na bagnie.
	AI_Output (self, other,"Info_GorHanis_Arena_08_02"); //Przyœwieca mi wiêc wy¿szy cel. Walczê, by pokazaæ niewiernym jak wielka jest potêga Œni¹cego!
};

// **************************************************
//					Schläfer
// **************************************************

instance Info_GorHanis_Sleeper(C_INFO)
{
	npc				= TPL_1422_GorHanis;
	nr				= 2;
	condition		= Info_GorHanis_Sleeper_Condition;
	information		= Info_GorHanis_Sleeper_Info;
	permanent		= 0;
	description 	= "Kim jest Œni¹cy?";
};                       

FUNC INT Info_GorHanis_Sleeper_Condition()
{
	if (Npc_KnowsInfo(self,Info_GorHanis_What))
	{
		return 1;
	};
};

func VOID Info_GorHanis_Sleeper_Info()
{
	AI_Output (other, self,"Info_GorHanis_Sleeper_15_00"); //Kim jest Œni¹cy?
	AI_Output (self, other,"Info_GorHanis_Sleeper_08_01"); //W naszym obozie znajdziesz œwiêtych mê¿ów, którzy odpowiedz¹ ci na to pytanie znacznie lepiej ni¿ ja.
	AI_Output (self, other,"Info_GorHanis_Sleeper_08_02"); //Powiem ci tylko tyle: Œni¹cy bêdzie naszym zbawicielem. Przyprowadzi³ nas tutaj i z jego pomoc¹ uda siê nam st¹d wydostaæ.
	AI_Output (other, self,"Info_GorHanis_Sleeper_15_03"); //Chcesz przez to powiedzieæ, ¿e czekacie a¿ wasz bóg zwróci wam wolnoœæ?
	AI_Output (self, other,"Info_GorHanis_Sleeper_08_04"); //Tak! Nasze oczekiwanie wkrótce dobiegnie koñca. W tej chwili przygotowujemy siê do rytua³u wielkiego przyzwania.
};

// **************************************************
//					Große Anrufung
// **************************************************

instance Info_GorHanis_Summoning (C_INFO)
{
	npc				= TPL_1422_GorHanis;
	nr				= 2;
	condition		= Info_GorHanis_Summoning_Condition;
	information		= Info_GorHanis_Summoning_Info;
	permanent		= 0;
	description 	= "Na czym polega rytua³, który planujecie?";
};                       

FUNC INT Info_GorHanis_Summoning_Condition()
{
	if (Npc_KnowsInfo(self,Info_GorHanis_Sleeper))
	{
		return 1;
	};
};

func VOID Info_GorHanis_Summoning_Info()
{
	AI_Output (other, self,"Info_GorHanis_Summoning_15_00"); //Na czym polega rytua³, który planujecie?
	AI_Output (self, other,"Info_GorHanis_Summoning_08_01"); //Nasi prorocy przewidzieli, ¿e wspólne przywo³anie Œni¹cego jest jedyn¹ drog¹ do odzyskania wolnoœci!
	AI_Output (self, other,"Info_GorHanis_Summoning_08_02"); //Jeœli chcesz siê jeszcze czegoœ dowiedzieæ, powinieneœ udaæ siê do naszego obozu.
};

// **************************************************
//					Weg zum ST
// **************************************************

instance Info_GorHanis_WayToST(C_INFO)
{
	npc				= TPL_1422_GorHanis;
	nr				= 0;
	condition		= Info_GorHanis_WayToST_Condition;
	information		= Info_GorHanis_WayToST_Info;
	permanent		= 1;
	description 	= "Móg³byœ opisaæ mi drogê do waszego obozu?";
};                       

FUNC INT Info_GorHanis_WayToST_Condition()
{
	if ( Npc_KnowsInfo(hero,Info_GorHanis_Sleeper) || Npc_KnowsInfo(hero,Info_GorHanis_Summoning) )
	{
		return 1;
	};
};

func VOID Info_GorHanis_WayToST_Info()
{
	AI_Output (other, self,"Info_GorHanis_WayToST_15_00"); //Móg³byœ opisaæ mi drogê do waszego obozu?
	AI_Output (self, other,"Info_GorHanis_WayToST_08_01"); //W Starym Obozie znajdziesz kilku Nowicjuszy Bractwa, którzy chêtnie wska¿¹ ci drogê do obozu na bagnie. ZnajdŸ któregoœ z nich i porozmawiaj z nim!
};

// **************************************************
//					FORDERN
// **************************************************

instance Info_GorHanis_Charge (C_INFO)
{
	npc				= TPL_1422_GorHanis;
	nr				= 3;
	condition		= Info_GorHanis_Charge_Condition;
	information		= Info_GorHanis_Charge_Info;
	permanent		= 0;
	description 	= "Wyzywam ciê na pojedynek na arenie!";
};                       

FUNC INT Info_GorHanis_Charge_Condition()
{
	if (Npc_KnowsInfo (hero,Info_GorHanis_Arena))
	{
		return 1;
	};
};

func VOID Info_GorHanis_Charge_Info()
{
	AI_Output (other, self,"Info_GorHanis_Charge_15_00"); //Wyzywam ciê na pojedynek na arenie!
	AI_Output (self, other,"Info_GorHanis_Charge_08_01"); //Zabicie kogoœ takiego jak ty nie przysporzy raczej chwa³y Œni¹cemu.
	AI_Output (self, other,"Info_GorHanis_Charge_08_02"); //Stanê z tob¹ w szranki dopiero w tedy, gdy oka¿esz siê godnym rywalem.
	AI_Output (self, other,"Info_GorHanis_Charge_08_03"); //Ale jestem pewien, ¿e wojownicy z Nowego Obozu nie bêd¹ mieli takich skrupu³ów...
};

// **************************************
//				Fordern REAL
// **************************************
var int Hanis_Charged;
// **************************************

// **************************************************
//					NOCHMAL FORDERN
// **************************************************

instance Info_GorHanis_ChargeGood (C_INFO)
{
	npc				= TPL_1422_GorHanis;
	nr				= 3;
	condition		= Info_GorHanis_ChargeGood_Condition;
	information		= Info_GorHanis_ChargeGood_Info;
	permanent		= 1;
	description 	= "Czy jestem ju¿ doœæ silny, ¿eby siê z tob¹ zmierzyæ?";
};                       

FUNC INT Info_GorHanis_ChargeGood_Condition()
{
	if (Npc_KnowsInfo (hero,Info_GorHanis_Charge))
	{
		return 1;
	};
};

func VOID Info_GorHanis_ChargeGood_Info()
{
	AI_Output (other, self,"Info_GorHanis_ChargeGood_15_00"); //Czy jestem ju¿ doœæ silny, ¿eby siê z tob¹ zmierzyæ?
	if(Kapitel == 2)
	&&(other.level >= 10)
	{
		AI_Output (self, other,"Info_GorHanis_ChargeGood_08_02"); //Tak! Jesteœ godnym rywalem!
		AI_StopProcessInfos	( self );
	
		Hanis_Charged = TRUE;
	
		Npc_ExchangeRoutine(self,"GUIDE");
	}
	else
	{
		AI_Output (self, other,"Info_GorHanis_ChargeGood_08_01"); //Nie! Jesteœ jeszcze zbyt s³aby. Nie sprostasz mi w walce!
	};
};

// **************************************
//				IN DER ARENA
// **************************************

instance Info_GorHanis_InArena (C_INFO)
{
	npc				= TPL_1422_GorHanis;
	nr				= 1;
	condition		= Info_GorHanis_InArena_Condition;
	information		= Info_GorHanis_InArena_Info;
	permanent		= 0;
	important 		= 1;
};                       

FUNC INT Info_GorHanis_InArena_Condition()
{
	if ( (Hanis_Charged == TRUE) && (Npc_GetDistToWp (hero,"OCR_ARENABATTLE_TRAIN") < 500) )
	{
		return 1;
	};
};

func VOID Info_GorHanis_InArena_Info()
{
	AI_Output (self, other,"Info_GorHanis_InArena_08_01"); //Œni¹cy bêdzie naszym zbawicielem.
	AI_StopProcessInfos	( self );
			
	Npc_ExchangeRoutine(self,"START");
		
	Npc_SetTarget(self,other);
	AI_StartState(self,ZS_ATTACK,1,"");
};

// **************************************
//				IN SLEEPER TEMPLE
// **************************************

instance Info_GorHanisOT_Exit (C_INFO)
{
	npc				= TPL_1464_GorHanisOT;
	nr				= 999;
	condition		= Info_GorHanisOT_Exit_Condition;
	information		= Info_GorHanisOT_Exit_Info;
	permanent		= 1;
	description 	= DIALOG_ENDE;
};                       

FUNC INT Info_GorHanisOT_Exit_Condition()
{
	return 1;
};

func VOID Info_GorHanisOT_Exit_Info()
{
	AI_StopProcessInfos	( self );
};

instance Info_TPL_1422_GorHanis (C_INFO)
{
	npc				= TPL_1464_GorHanisOT;
	condition		= Info_TPL_1422_GorHanis_Condition;
	information		= Info_TPL_1422_GorHanis_Info;
	important		= 1;
	permanent		= 0;
};

FUNC int Info_TPL_1422_GorHanis_Condition()
{
	return 1;	
};

func void Info_TPL_1422_GorHanis_Info()
{
	AI_Output (self, other,"Info_TPL_1422_GorHanis_08_01"); //Co ciê tu sprowadza?
	Info_ClearChoices(Info_TPL_1422_GorHanis);
	Info_AddChoice(Info_TPL_1422_GorHanis, "Œni¹cy zwróci³ siê do mnie.", Info_TPL_1422_GorHanis1);
	Info_AddChoice(Info_TPL_1422_GorHanis, "To nie twoja sprawa.", Info_TPL_1422_GorHanis2);
};

func void Info_TPL_1422_GorHanis1()
{
	AI_Output (other, self,"DIA_Lester_Show_15_02"); //Prze¿y³em objawienie. Œni¹cy zwróci³ siê do mnie.
	AI_Output (self, other,"Info_TPL_1422_GorHanis1_08_01"); //IdŸ ju¿! I nie traæ ani chwili.
	Info_ClearChoices(Info_TPL_1422_GorHanis);
	AI_StopProcessInfos(self);
};


func void Info_TPL_1422_GorHanis2()
{
	AI_Output (other, self,"DIA_BaalTaran_IntoCastle_ForgetIt_15_00"); //To nie twoja sprawa.
	AI_Output (self, other,"Info_TPL_1422_GorHanis2_08_02"); //Tylko nie próbuj ze mn¹ ¿adnych numerów, jasne?
	Info_ClearChoices(Info_TPL_1422_GorHanis);
	AI_StopProcessInfos(self);
};

/*

// infos 
instance Info_TPL_1422_GorHanis (C_INFO)
{
	npc				= TPL_1422_GorHanis;
	condition			= Info_TPL_1422_GorHanis_Condition;
	information		= Info_TPL_1422_GorHanis_Info;
	important			= 1;
	permanent		= 0;
};

FUNC int Info_TPL_1422_GorHanis_Condition()
{
	if ( Npc_KnowsInfo ( hero, Info_PC_Mage_LoadSword3 )) {
		return 1;
	};	
};

func void Info_TPL_1422_GorHanis_Info()
{
	AI_Output (self, other,"Info_TPL_1422_GorHanis_08_01"); //Was machst du hier?
};


instance Info_TPL_1422_GorHanis1 (C_INFO)
{
	npc				= TPL_1422_GorHanis;
	condition			= Info_TPL_1422_GorHanis1_Condition;
	information		= Info_TPL_1422_GorHanis1_Info;
	important			= 0;
	permanent		= 0;
	description		= "Ich will helfen den Schläfer zu erwecken."; 
	// Chcê pomóc obudziæ œpi¹cego.
};

FUNC int Info_TPL_1422_GorHanis1_Condition()
{
	if ( Npc_KnowsInfo ( hero, Info_TPL_1422_GorHanis )) {
		return 1;
	};	
};

func void Info_TPL_1422_GorHanis1_Info()
{
	AI_Output (other, self,"Info_TPL_1422_GorHanis1_15_01"); //Ich will helfen den Schläfer zu erwecken.
	AI_Output (self, other,"Info_TPL_1422_GorHanis1_08_02"); //Hmm, siehst gar nicht so aus, als wolltest Du wirklich helfen wollen. Geh aber ruhig weiter, ich halte dich nicht auf, falls du lügst, wird der Hohenpriester dir schon eine Lektion erteilen.
	// Hmm, nie wygl¹dasz, jakbyœ naprawdê chcia³ pomóc. IdŸ dalej, nie zatrzymam ciê, jeœli k³amiesz, Najwy¿szy Kap³an nauczy ciê lekcji.
};



instance Info_TPL_1422_GorHanis2 (C_INFO)
{
	npc				= TPL_1422_GorHanis;
	condition			= Info_TPL_1422_GorHanis2_Condition;
	information		= Info_TPL_1422_GorHanis2_Info;
	important			= 0;
	permanent		= 0;
	description		= "Das geht dich nichts an!"; 
	// To nie twoja sprawa!
};

FUNC int Info_TPL_1422_GorHanis2_Condition()
{
	if ( Npc_KnowsInfo ( hero, Info_TPL_1422_GorHanis )) {
		return 1;
	};	
};

func void Info_TPL_1422_GorHanis2_Info()
{
	AI_Output (other, self,"Info_TPL_1422_GorHanis2_15_01"); //Das geht dich nichts an!
	AI_Output (self, other,"Info_TPL_1422_GorHanis2_08_02"); //Soso, dann lasse ich dich lieber passieren, bevor du mir weh tust (lacht). Am Hohenpriester kommst Du eh nicht vorbei und ich muss mein Schwert nicht mit deinem Blut beschmutzen. 
	// Wiêc pozwolê ci przejœæ zanim mnie zranisz (œmiech). I tak nie mo¿esz omin¹æ Najwy¿szego Kap³ana, a ja nie muszê plamiæ mieczem twojej krwi.
};


instance Info_TPL_1422_GorHanis3 (C_INFO)
{
	npc				= TPL_1422_GorHanis;
	condition			= Info_TPL_1422_GorHanis3_Condition;
	information		= Info_TPL_1422_GorHanis3_Info;
	important			= 0;
	permanent		= 0;
	description		= "Wie seit ihr an dem Priester vorbei gekommen?"; 
};

FUNC int Info_TPL_1422_GorHanis3_Condition()
{
	if ( Npc_KnowsInfo ( hero, Info_TPL_1422_GorHanis2 )) || ( Npc_KnowsInfo ( hero, Info_TPL_1422_GorHanis1 )) {
		return 1;
	};	
};

func void Info_TPL_1422_GorHanis3_Info()
{
	AI_Output (other, self,"Info_TPL_1422_GorHanis3_15_01"); //Wie seit ihr an dem Priester vorbei gekommen?
	AI_Output (self, other,"Info_TPL_1422_GorHanis3_08_02"); //Ich sage es dir, es wird dir eh nicht nutzen. Der Priester hat uns nur passieren lassen, weil Meister Kalom mit im gesprochen hat, dass Glück wirst du nicht haben. Geh nur (lacht).
};

*/
