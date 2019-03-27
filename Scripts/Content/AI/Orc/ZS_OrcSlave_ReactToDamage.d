
func void zs_orcslave_reacttodamage()
{
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	AI_Standup(self);
	AI_PlayAni(self,"T_FRIGHTENED");
	if(Hlp_IsValidNpc(other))
	{
		B_WhirlAround(self,other);
		if(Npc_GetDistToNpc(self,other) < 300)
		{
			AI_Dodge(self);
		};
		Npc_SetTarget(self,other);
		if(C_NpcIsHuman(other))
		{
			self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
		}
		else if(other.aivar[AIV_PARTYMEMBER] == 1)
		{
			self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(hero);
		}
		else
		{
			b_start_orc_attack(self,other);
		};
	}
	else
	{
		self.aivar[AIV_LASTTARGET] = 0;
	};
};

func int zs_orcslave_reacttodamage_loop()
{
	if(self.aivar[AIV_LASTTARGET] == 0)
	{
		return LOOP_END;
	};
	if(!Hlp_IsValidNpc(other))
	{
		other = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
	};
	if(C_NpcIsDown(other))
	{
		return LOOP_END;
	};
	if(Npc_GetDistToNpc(self,other) > 2000)
	{
		if(Npc_IsInFightMode(other,FMODE_FAR) || Npc_IsInFightMode(other,FMODE_MAGIC))
		{
			if(Npc_GetDistToNpc(self,other) > 4000)
			{
				return LOOP_END;
			};
		}
		else
		{
			return LOOP_END;
		};
	};
	// if(CURRENTLEVEL == OLDMINE_ZEN)
	// {
	// 	AI_SetWalkMode(self,NPC_RUN);
	// 	if(Npc_GetDistToWP(self,"OM_CAVE1_60") > Npc_GetDistToWP(self,"OM_CAVE3_19"))
	// 	{
	// 		AI_GotoWP(self,"OM_CAVE1_60");
	// 	}
	// 	else
	// 	{
	// 		AI_GotoWP(self,"OM_CAVE3_19");
	// 	};
	// }
	// else
	// {
		Npc_SetTarget(self,other);
		Npc_GetTarget(self);
		AI_Flee(self);
	//};
	return LOOP_CONTINUE;
};

func void zs_orcslave_reacttodamage_end()
{
	Npc_ClearAIQueue(self);
	AI_Standup(self);
	AI_PlayAni(self,"T_PERCEPTION");
	self.aivar[AIV_LASTTARGET] = 0;
};

