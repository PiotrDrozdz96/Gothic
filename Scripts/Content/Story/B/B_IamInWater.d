
func void b_iaminwater(var C_Npc slf)
{
	if(slf.guild == GIL_SKELETON)
	{
		B_FullStop(slf);
		b_clearperceptions(self);
		AI_StartState(slf,zs_iamdrowned,0,"");
		return;
	};
};

func void zs_iamdrowned()
{
	AI_PlayAniBS(self,"T_SWIM_2_DIVE",BS_DIVE);
	self.aivar[21] = self.attribute[ATR_HITPOINTS] / 3;
};

func int zs_iamdrowned_loop()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,-self.aivar[21]);
	return LOOP_CONTINUE;
};

func void zs_iamdrowned_end()
{
};

