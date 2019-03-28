func void B_Orc_AssessWarn()
{
	// if(other.aivar[AIV_PARTYMEMBER])
	// {
	// 	if(Npc_IsInState(other,zs_sm_attack))
	// 	{
	// 		if(Npc_GetDistToNpc(self,victim) < 1000)
	// 		{
	// 			if(Npc_GetAttitude(self,victim) == ATT_FRIENDLY)
	// 			{
	// 				b_start_orc_attack(self,other);
	// 				return;
	// 			};
	// 		};
	// 	};
	// };
	if(C_NpcIsOrc(victim))
	{
		if(Npc_IsInState(victim,ZS_Orc_Attack))
		{
			if((Npc_GetDistToNpc(self,victim) < 1000) && (Npc_GetDistToNpc(self,other) < 3000))
			{
				if(Npc_GetAttitude(self,other) == ATT_HOSTILE)
				{
					if(C_OtherIsToleratedEnemy(self,other))
					{
						if(victim.aivar[AIV_ATTACKREASON] == AIV_AR_MURDER)
						{
							b_orc_assessandmemorize(NEWS_MURDER,NEWS_SOURCE_WITNESS,self,other,self);
							self.aivar[AIV_ATTACKREASON] = AIV_AR_MURDER;
							b_start_orc_attack(self,other);
							return;
						};
						b_start_orc_watchfight(self,other,victim);
					}
					else
					{
						b_start_orc_attack(self,other);
					};
				};
			};
		}
		else if(Npc_IsInState(victim,zs_orc_upset))
		{
			if((Npc_GetDistToNpc(self,victim) < 1000) && (Npc_GetDistToNpc(self,other) < 1200))
			{
				if(Npc_IsInState(self,ZS_Orc_Guard))
				{
					Npc_SetTarget(self,other);
					Npc_ClearAIQueue(self);
					B_MM_DeSynchronize(self);
					AI_Standup(self);
					B_WhirlAround(self,other);
					b_orc_tolerateenemy(self,other);
				};
				if(Npc_IsInState(self,ZS_Orc_Sleep) || Npc_IsInState(self,zs_orc_sitcampfire))
				{
					if(C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT))
					{
						return;
					}
					else if(C_BodyStateContains(self,BS_SIT))
					{
						if(self.aivar[AIV_PASSGATE])
						{
							AI_PlayAniBS(self,"T_GUARDSLEEPSLOWWAKEUP",BS_SIT);
							self.aivar[AIV_PASSGATE] = 0;
							Npc_PercEnable(self,PERC_ASSESSENEMY,b_orc_assessenemy);
						};
						if(Npc_CanSeeNpc(self,other))
						{
							AI_LookAtNpc(self,other);
						};
						self.aivar[AIV_GUARDPASSAGE_STATUS] += 10;
					}
					else
					{
						B_Orc_SmartTurn(self,other);
						AI_Wait(self,1);
					};
				};
			};
		}
		else
		{
		};
		return;
	};
	// B_ORC_REMOVEWEAPON.slf = ;
	AI_StopLookAt(self);
	if(self.weapon)
	{
		AI_StartState(self,zs_orc_removeweapon,0,"");
	};
};
