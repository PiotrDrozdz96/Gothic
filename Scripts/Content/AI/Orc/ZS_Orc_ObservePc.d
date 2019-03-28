
func void zs_orc_observepc()
{
	OrcDefaultPerc();
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
};

func int zs_orc_observepc_loop()
{
	if((Npc_GetDistToNpc(self,hero) > 1500) || Npc_IsDead(hero))
	{
		if(Npc_GetStateTime(self) >= 4)
		{
			return LOOP_END;
		};
	};
	if(Npc_GetDistToNpc(self,hero) < 300)
	{
		AI_TurnToNPC(self,hero);
		self.aivar[AIV_PASSGATE] += 1;
		if(self.aivar[AIV_PASSGATE] == 3)
		{
			AI_PlayAni(self,"T_WARN");
		}
		else if(self.aivar[AIV_PASSGATE] > 3)
		{
			b_start_orc_attack(self,hero);
		}
		else
		{
			AI_Dodge(self);
		};
	};
	if(Npc_GetStateTime(self) >= self.aivar[AIV_GUARDPASSAGE_STATUS])
	{
		AI_TurnToNPC(self,hero);
		AI_LookAtNpc(self,hero);
		self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 4) + 4;
		Npc_SetStateTime(self,0);
	}
	else
	{
		B_Orc_SmartTurn(self,hero);
		AI_Wait(self,1);
	};
	return LOOP_CONTINUE;
};

func void zs_orc_observepc_end()
{
	Npc_ClearAIQueue(self);
	AI_StopLookAt(self);
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
};

func void zs_orcslave_observepc()
{
	OrcDefaultPerc();
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
};

func int zs_orcslave_observepc_loop()
{
	if((Npc_GetDistToNpc(self,hero) > 450) || Npc_IsDead(hero))
	{
		if(Npc_GetStateTime(self) >= 4)
		{
			return LOOP_END;
		};
	};
	if(Npc_GetDistToNpc(self,hero) < 200)
	{
		AI_TurnToNPC(self,hero);
		AI_Dodge(self);
	};
	if(Npc_GetStateTime(self) >= self.aivar[AIV_GUARDPASSAGE_STATUS])
	{
		AI_TurnToNPC(self,hero);
		AI_LookAtNpc(self,hero);
		self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 4) + 4;
		Npc_SetStateTime(self,0);
	}
	else
	{
		B_Orc_SmartTurn(self,hero);
		AI_Wait(self,1);
	};
	return LOOP_CONTINUE;
};

func void zs_orcslave_observepc_end()
{
	Npc_ClearAIQueue(self);
	AI_StopLookAt(self);
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
};

