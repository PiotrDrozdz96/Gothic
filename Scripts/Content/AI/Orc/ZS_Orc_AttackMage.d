
func void zs_orc_attackmage()
{
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,b_orc_reacttocombatdamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSMURDER,b_orc_combatassessmurder);
	Npc_PercEnable(self,PERC_ASSESSENEMY,b_orcattackmage_assessenemy);
	Npc_SetPercTime(self,1);
	AI_SetWalkMode(self,NPC_RUN);
	Npc_GetTarget(self);
	if(!Hlp_IsValidNpc(other))
	{
		other = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
		Npc_SetTarget(self,other);
	}
	else
	{
		Npc_GetTarget(self);
		self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
	};
	AI_StopLookAt(self);
	B_SelectWeapon(self,other);
	self.aivar[AIV_PASSGATE] = 0;
	self.fight_tactic = FAI_HUMAN_MAGE;
};

func int zs_orc_attackmage_loop()
{
	if(self.aivar[AIV_PASSGATE] == 5)
	{
		Npc_SetTrueGuild(self,self.guild);
		self.aivar[AIV_PASSGATE] = 0;
		self.aivar[AIV_INVINCIBLE] = 0;
	}
	else if(self.aivar[AIV_PASSGATE] == 10)
	{
		b_clearperceptions(self);
		self.aivar[AIV_INVINCIBLE] = TRUE;
		Npc_SetTrueGuild(self,GIL_None);
		AI_RemoveWeapon(self);
		return LOOP_END;
	};
	if(Npc_GetStateTime(self) >= 2)
	{
		Npc_SetStateTime(self,0);
	};
	if(Hlp_GetInstanceID(other) != self.aivar[AIV_LASTTARGET])
	{
		other = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
		Npc_SetTarget(self,other);
	};
	Npc_GetTarget(self);
	if(Npc_GetDistToNpc(self,other) > 4000)
	{
		self.aivar[AIV_PASSGATE] = 10;
		return LOOP_CONTINUE;
	};
	if((C_BodyStateContains(other,BS_SWIM) && !Npc_CanSeeNpcFreeLOS(self,other)) || C_BodyStateContains(other,BS_DIVE) || other.aivar[AIV_INVINCIBLE])
	{
		Npc_ClearAIQueue(self);
		AI_Wait(self,0.5);
		return LOOP_CONTINUE;
	};
	if(C_NpcIsDown(other) || !Hlp_IsValidNpc(other))
	{
		Npc_PerceiveAll(self);
		if(Npc_GetNextTarget(self))
		{
			if(!Hlp_IsValidNpc(other) || C_NpcIsDown(other) || !Npc_CanSeeNpcFreeLOS(self,other) || C_OtherIsToleratedEnemy(self,other) || (Npc_GetDistToNpc(self,other) > self.aivar[AIV_PCISSTRONGER]))
			{
				self.aivar[AIV_PASSGATE] = 10;
				return LOOP_CONTINUE;
			}
			else
			{
				self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
			};
		}
		else
		{
			self.aivar[AIV_PASSGATE] = 10;
			return LOOP_CONTINUE;
		};
	};
	if(self.attribute[ATR_MANA] < self.attribute[ATR_MANA_MAX])
	{
		Npc_ChangeAttribute(self,ATR_MANA,self.attribute[ATR_MANA_MAX] - self.attribute[ATR_MANA]);
		self.aivar[44] = Npc_GetActiveSpell(self);
		if(self.aivar[44] == SPL_THUNDERBALL)
		{
			AI_Wait(self,0.8);
		}
		else if(self.aivar[44] == SPL_BREATHOFDEATH)
		{
			AI_Wait(self,0.5);
		}
		else if((self.aivar[44] == SPL_FIRESTORM) || (self.aivar[44] == SPL_FIREBALL))
		{
			AI_Wait(self,0.3);
		}
		else
		{
			AI_Wait(self,0.1);
		};
		B_SelectWeapon(self,other);
		return LOOP_CONTINUE;
	};
	if(Npc_IsInFightMode(self,FMODE_MELEE))
	{
		if(Npc_GetDistToNpc(self,other) < 300)
		{
			self.fight_tactic = FAI_HUMAN_Strong;
			AI_Attack(self);
		}
		else
		{
			self.fight_tactic = FAI_HUMAN_MAGE;
			Npc_ClearAIQueue(self);
			Npc_SetTrueGuild(self,GIL_None);
			AI_RemoveWeapon(self);
			B_SelectWeapon(self,other);
			self.aivar[AIV_PASSGATE] = 5;
			self.aivar[AIV_INVINCIBLE] = 1;
		};
		return LOOP_CONTINUE;
	};
	if(Npc_GetDistToNpc(self,other) > 120)
	{
		AI_Attack(self);
	}
	else
	{
		AI_TurnToNPC(self,other);
		AI_PlayAni(self,"T_MAGJUMPB");
		AI_Attack(self);
	};
	return LOOP_CONTINUE;
};

func void zs_orc_attackmage_end()
{
	self.fight_tactic = FAI_HUMAN_MAGE;
	Npc_SetTrueGuild(self,self.guild);
	Npc_ClearAIQueue(self);
	b_clearperceptions(self);
	AI_Standup(self);
	AI_Wait(self,0.5);
	self.aivar[AIV_ATTACKREASON] = AIV_AR_NONE;
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_INVINCIBLE] = 0;
};

func void b_orcattackmage_assessenemy()
{
	if(Npc_GetStateTime(self) > 2)
	{
		if(C_BodyStateContains(self,BS_STAND))
		{
			if(Npc_GetActiveSpellLevel(self))
			{
				return;
			};
			Npc_ClearAIQueue(self);
			Npc_SetTrueGuild(self,GIL_None);
			AI_Standup(self);
			self.aivar[44] = Npc_GetActiveSpell(self);
			if(self.aivar[44] == SPL_FIREBALL)
			{
				Npc_RemoveInvItem(self,ItArRuneFireball);
				CreateInvItem(self,ItArRuneFireball);
			}
			else if(self.aivar[44] == SPL_PYROKINESIS)
			{
				Npc_RemoveInvItem(self,ItArRunePyrokinesis);
				CreateInvItem(self,ItArRunePyrokinesis);
			}
			else if(self.aivar[44] == SPL_THUNDERBALL)
			{
				Npc_RemoveInvItem(self,ItArRuneThunderbolt);
				CreateInvItem(self,ItArRuneThunderbolt);
			}
			else if(self.aivar[44] == SPL_CHAINLIGHTNING)
			{
				Npc_RemoveInvItem(self,ItArRuneChainLightning);
				CreateInvItem(self,ItArRuneChainLightning);
			}
			else if(self.aivar[44] == SPL_FIRESTORM)
			{
				Npc_RemoveInvItem(self,ItArRuneFirestorm);
				CreateInvItem(self,ItArRuneFirestorm);
			}
			else if(self.aivar[44] == SPL_BREATHOFDEATH)
			{
				Npc_RemoveInvItem(self,ItArRuneBreathOfDeath);
				CreateInvItem(self,ItArRuneBreathOfDeath);
			};
			AI_ReadySpell(self,self.aivar[44],1);
			self.aivar[AIV_PASSGATE] = 5;
			self.aivar[AIV_INVINCIBLE] = 1;
			Npc_SetStateTime(self,0);
			return;
		};
		if(C_BodyStateContains(self,BS_RUN))
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			Npc_SetStateTime(self,0);
			return;
		};
	};
};

