func void B_Orc_DrawWeapon()
{
	if(Npc_IsInFightMode(other,FMODE_FIST))
	{
		return;
	};
	if(Npc_IsPlayer(other))
	{
		if(!Npc_CanSeeNpcFreeLOS(self,other) && (Npc_GetDistToNpc(self,other) > 500))
		{
			return;
		};
		if(Wld_GetGuildAttitude(self.guild,other.guild) == ATT_HOSTILE)
		{
			b_orc_assessenemy();
		};
		if(self.guild == GIL_ORCSHAMAN)
		{
			b_start_orc_attack(self,other);
			return;
		};
		if(C_BodyStateContains(self,BS_STAND))
		{
			Npc_ClearAIQueue(self);
			AI_StandupQuick(self);
			AI_TurnToNPC(self,other);
			if(Npc_GetDistToNpc(self,other) < 300)
			{
				AI_SetWalkMode(self,NPC_WALK);
				AI_Dodge(self);
			};
			if(Npc_IsInFightMode(other,FMODE_MAGIC))
			{
				B_Say(self,other,"$STOPMAGIC");
			}
			else
			{
				B_Say(self,other,"$WEAPONDOWN");
			};
			Npc_SetStateTime(self,0);
			self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
		};
		if(Npc_GetPermAttitude(self,other))
		{
			Npc_SetTempAttitude(self,Npc_GetPermAttitude(self,other) - 1);
		};
		if(!Npc_IsInState(self,zs_orc_upset) && !Npc_IsInState(self,zs_orc_followpc))
		{
			b_clearperceptions(self);
			AI_StartState(self,zs_orc_upset,1,"");
		};
	};
};
