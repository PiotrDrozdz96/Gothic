instance ORC_2941_WARRIOR3(Mst_Default_OrcWarrior)
{
	name[0] = "Ork-wiarus";
	id = 2941;
	level = 35;
	Set_OrcWarrior_Visuals();
	attribute[ATR_STRENGTH] = 85;
	attribute[ATR_HITPOINTS_MAX] = 250;
	attribute[ATR_HITPOINTS] = 250;
	protection[PROT_BLUNT] = 80;
	protection[PROT_EDGE] = 80;
	protection[PROT_POINT] = 80;
	protection[PROT_FIRE] = 40;
	aivar[AIV_IMPORTANT] = ID_ORCWARRIOR3;
	aivar[AIV_TALKBEFOREATTACK] = TRUE;
	EquipItem(self,ItMw2hOrcAxe03);
	daily_routine = rtn_start_2941;
};


func void rtn_start_2941()
{
	TA_Orc_Guard(7,5,23,5,"OW_ORC_PATH_02_MOVE");
	TA_Orc_Guard(23,5,7,5,"OW_ORC_PATH_02_MOVE");
	// TA_Orc_Guard(23,5,7,5,"OW_ORC_PLACE_01_MOVEMENT");
};


instance ORC_2942_WARRIOR3(Mst_Default_OrcWarrior)
{
	name[0] = "Ork-¿o³nierz";
	id = 2942;
	level = 35;
	Set_OrcWarrior_Visuals();
	attribute[ATR_STRENGTH] = 85;
	attribute[ATR_HITPOINTS_MAX] = 250;
	attribute[ATR_HITPOINTS] = 250;
	protection[PROT_BLUNT] = 80;
	protection[PROT_EDGE] = 80;
	protection[PROT_POINT] = 80;
	protection[PROT_FIRE] = 40;
	aivar[AIV_IMPORTANT] = ID_ORCWARRIOR3;
	aivar[AIV_TALKBEFOREATTACK] = TRUE;
	EquipItem(self,ItMw2hOrcAxe03);
	daily_routine = rtn_start_2942;
};


func void rtn_start_2942()
{
	TA_Orc_Guard(5,30,23,30,"OW_ORC_PATH_06_4");
	TA_Orc_Guard(23,30,0,30,"OW_ORC_PATH_06_4");
	TA_Orc_Guard(0,30,5,30,"OW_ORC_PATH_06_4");
	// TA_Orc_Guard(5,30,23,30,"OW_ORC_PATH_06");
	// TA_Orc_Guard(23,30,0,30,"OW_ORC_PATH_06_4");
	// TA_Orc_Guard(0,30,5,30,"OW_PATH_06_13_GUARD");
};


instance ORC_2943_WARRIOR3(Mst_Default_OrcWarrior)
{
	name[0] = "Ork-stra¿nik";
	id = 2943;
	level = 35;
	Set_OrcWarrior_Visuals();
	attribute[ATR_STRENGTH] = 85;
	attribute[ATR_HITPOINTS_MAX] = 250;
	attribute[ATR_HITPOINTS] = 250;
	protection[PROT_BLUNT] = 80;
	protection[PROT_EDGE] = 80;
	protection[PROT_POINT] = 80;
	protection[PROT_FIRE] = 40;
	aivar[AIV_IMPORTANT] = ID_ORCWARRIOR3;
	aivar[AIV_TALKBEFOREATTACK] = TRUE;
	EquipItem(self,ItMw2hOrcAxe03);
	daily_routine = rtn_start_2943;
};


func void rtn_start_2943()
{
	TA_Orc_Guard(5,30,23,20,"OW_PATH_06_13_GUARD");
	TA_Orc_Guard(23,20,5,30,"OW_PATH_06_13_GUARD");
	// TA_Orc_Guard(23,20,5,30,"OW_ORC_BOSS");
};