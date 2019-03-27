
var C_NPC MASTER;

func int C_PreyToPredator(var C_Npc prey,var C_Npc predator)
{
	if(predator.guild == GIL_WOLF)
	{
		if((prey.guild == GIL_SCAVENGER) || (prey.guild == GIL_MOLERAT))
		{
			return TRUE;
		};
	}
	else if(predator.guild == GIL_ORCDOG)
	{
		if((prey.guild == GIL_SCAVENGER) || (prey.guild == GIL_MOLERAT))
		{
			return TRUE;
		};
	}
	else if(predator.guild == GIL_SNAPPER)
	{
		if((prey.guild == GIL_SCAVENGER) || (prey.guild == GIL_MOLERAT))
		{
			return TRUE;
		};
	}
	else if(predator.guild == GIL_SHADOWBEAST)
	{
		if((prey.guild == GIL_SCAVENGER) || (prey.guild == GIL_MOLERAT) || (prey.guild == GIL_WOLF) || (prey.guild == GIL_GOBBO))
		{
			return TRUE;
		};
	}
	else if(predator.id == 945)
	{
		if((prey.guild == GIL_SCAVENGER) || (prey.guild == GIL_MOLERAT))
		{
			return TRUE;
		};
	};
	return FALSE;
};

func int c_wanttoeat(var C_Npc slf,var C_Npc oth)
{
	if(oth.aivar[AIV_PLUNDERED] > 10)
	{
		return FALSE;
	};
	if(slf.guild == GIL_SHADOWBEAST)
	{
		if(oth.guild < GIL_SEPERATOR_HUM)
		{
			return TRUE;
		}
		else if(oth.guild == GIL_SCAVENGER)
		{
			return TRUE;
		}
		else if(oth.guild == GIL_MOLERAT)
		{
			return TRUE;
		}
		else if(oth.guild == GIL_SNAPPER)
		{
			return TRUE;
		}
		else if(oth.guild == GIL_WOLF)
		{
			return TRUE;
		}
		else if(oth.guild == GIL_ORCDOG)
		{
			return TRUE;
		}
		else if(oth.guild > GIL_SEPERATOR_ORC)
		{
			return TRUE;
		};
	}
	else if(slf.guild == GIL_SNAPPER)
	{
		if(oth.guild < GIL_SEPERATOR_HUM)
		{
			return TRUE;
		}
		else if(oth.guild == GIL_SCAVENGER)
		{
			return TRUE;
		}
		else if(oth.guild == GIL_MOLERAT)
		{
			return TRUE;
		}
		else if(oth.guild == GIL_WOLF)
		{
			return TRUE;
		}
		else if(oth.guild == GIL_ORCDOG)
		{
			return TRUE;
		}
		else if(oth.guild > GIL_SEPERATOR_ORC)
		{
			return TRUE;
		};
	}
	else if((slf.aivar[AIV_IMPORTANT] == ID_BLACKWOLF) || (slf.guild == GIL_WOLF))
	{
		if(oth.guild < GIL_SEPERATOR_HUM)
		{
			return TRUE;
		}
		else if(oth.guild == GIL_SCAVENGER)
		{
			return TRUE;
		}
		else if(oth.guild == GIL_MOLERAT)
		{
			return TRUE;
		};
	}
	else if((slf.guild == GIL_LURKER) || (slf.guild == GIL_MINECRAWLER) || (slf.guild == GIL_SCAVENGER) || (slf.guild == GIL_WARAN))
	{
		if(oth.guild < GIL_SEPERATOR_HUM)
		{
			return TRUE;
		}
		else if(oth.guild > GIL_SEPERATOR_ORC)
		{
			return TRUE;
		};
	};
	return FALSE;
};

func void b_playrandomani(var C_Npc slf,var int ani)
{
	if(ani == 1)
	{
		if(slf.aivar[AIV_DONTUSEMOB] > 0)
		{
			AI_PlayAni(slf,"R_ROAM1");
		};
	}
	else if(ani == 2)
	{
		if(slf.aivar[AIV_DONTUSEMOB] > 1)
		{
			AI_PlayAni(slf,"R_ROAM2");
		};
	}
	else if(ani == 3)
	{
		if(slf.aivar[AIV_DONTUSEMOB] > 2)
		{
			AI_PlayAni(slf,"R_ROAM3");
		};
	};
};

func void B_MM_DeSynchronize(var C_Npc slf)
{
	var int random;
	random = Hlp_Random(100) % 5;
	if(random == 1)
	{
		AI_Wait(slf,0.3);
	}
	else if(random == 2)
	{
		AI_Wait(slf,0.6);
	}
	else if(random == 3)
	{
		AI_Wait(slf,0.9);
	}
	else if(random == 4)
	{
		AI_Wait(slf,1.2);
	};
};

func void B_MM_AssessBody()
{
	var C_Npc attackednpc;
	if((Npc_GetDistToNpc(self,other) > self.aivar[AIV_PCISSTRONGER]) || !Npc_CanSeeNpcFreeLOS(self,other))
	{
		return;
	};
	if(self.aivar[AIV_PLUNDERED] == PRIO_ATTACKER)
	{
		return;
	};
	if(!c_wanttoeat(self,other))
	{
		return;
	};
	if(Npc_IsInState(self,ZS_MM_Attack))
	{
		attackednpc = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
		if(Npc_GetDistToNpc(self,attackednpc) <= self.aivar[3])
		{
			return;
		};
	};
	Npc_ClearAIQueue(self);
	B_MM_DeSynchronize(self);
	AI_StartState(self,ZS_MM_EatBody,0,"");
};

func void ZS_MM_EatBody()
{
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,B_MM_ReactToOthersDamage);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_MM_ReactToOthersDamage);
	AI_GotoNpc(self,other);
	AI_StopLookAt(self);
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
};

func int ZS_MM_EatBody_loop()
{
	if(!Hlp_IsValidNpc(other))
	{
		return LOOP_END;
	};
	if(Hlp_GetInstanceID(other) != self.aivar[AIV_LASTTARGET])
	{
		other = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
	};
	if(other.aivar[AIV_PLUNDERED] > 20)
	{
		return LOOP_END;
	};
	if(!self.aivar[AIV_PASSGATE])
	{
		Npc_PercEnable(self,PERC_ASSESSENEMY,B_MM_AssessEnemy);
		AI_StopLookAt(self);
		AI_TurnToNPC(self,other);
		B_MM_DeSynchronize(self);
		AI_PlayAni(self,"T_STAND_2_EAT");
		self.aivar[AIV_PASSGATE] = 1;
		Npc_SetStateTime(self,0);
		self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 5) + 5;
	}
	else if(Npc_GetStateTime(self) > self.aivar[AIV_GUARDPASSAGE_STATUS])
	{
		Npc_SetStateTime(self,0);
		self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 5) + 5;
		other.aivar[AIV_PLUNDERED] += 1;
		AI_StopLookAt(self);
		AI_PlayAni(self,"T_EAT_2_STAND");
		if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 6)
		{
			b_playrandomani(self,1);
		}
		else if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 7)
		{
			b_playrandomani(self,2);
		}
		else if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 8)
		{
			b_playrandomani(self,3);
		}
		else
		{
			B_MM_DeSynchronize(self);
		};
		AI_StopLookAt(self);
		AI_TurnToNPC(self,other);
		AI_PlayAni(self,"T_STAND_2_EAT");
	};
	return LOOP_CONTINUE;
};

func void ZS_MM_EatBody_end()
{
	AI_PlayAni(self,"T_EAT_2_STAND");
};

func void B_MM_AssessEnemy()
{
	if(Npc_IsDead(other))
	{
		return;
	};
	self.aivar[AIV_FOUNDPERSON] = Npc_GetDistToNpc(self,other);
	if(self.aivar[AIV_FOUNDPERSON] <= self.aivar[AIV_PCISSTRONGER])
	{
		Npc_SetPercTime(self,0.5);
	}
	else
	{
		Npc_SetPercTime(self,1);
	};
	if(self.aivar[AIV_FOUNDPERSON] < self.aivar[AIV_PCISSTRONGER])
	{
		if(!Npc_CanSeeNpcFreeLOS(self,other))
		{
			return;
		};
		if(other.aivar[AIV_INVINCIBLE] == TRUE)
		{
			return;
		};
		if(Wld_GetGuildAttitude(self.guild,other.guild) != ATT_HOSTILE)
		{
			return;
		};
		if(self.aivar[AIV_OBSERVEINTRUDER] == FALSE)
		{
			if(C_BodyStateContains(other,BS_SWIM) || C_BodyStateContains(other,BS_DIVE))
			{
				return;
			};
		};
		if(self.aivar[AIV_IMPORTANT] == ID_SWAMPSHARK)
		{
			if(other.id == 1356)
			{
				return;
			};
		};
		if(!Npc_CanSeeNpc(self,other))
		{
			if(C_BodyStateContains(other,BS_STAND) || C_BodyStateContains(other,BS_SNEAK))
			{
				if(self.aivar[AIV_FOUNDPERSON] > 300)
				{
				};
			};
		};
		if(C_PreyToPredator(self,other))
		{
			Npc_SetTarget(self,other);
			Npc_ClearAIQueue(self);
			AI_StartState(self,ZS_MM_Flee,0,"");
			return;
		};
		if(C_PreyToPredator(other,self))
		{
			if(Npc_IsInState(self,ZS_MM_EatBody))
			{
				if(self.aivar[AIV_FOUNDPERSON] > self.aivar[3])
				{
					return;
				};
			};
			Npc_SetTarget(self,other);
			Npc_ClearAIQueue(self);
			AI_StartState(self,ZS_MM_Attack,0,"");
			return;
		};
		if(Npc_IsInState(self,zs_mm_hunt))
		{
			if(self.aivar[AIV_FOUNDPERSON] > self.aivar[3])
			{
				return;
			};
			if(self.aivar[AIV_FOUNDPERSON] > 900)
			{
				if(!Npc_IsInState(other,ZS_MM_Flee))
				{
					return;
				};
			};
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			Npc_SetTarget(self,other);
			AI_StartState(self,ZS_MM_Attack,0,"");
			return;
		};
		if(Npc_IsInState(self,ZS_MM_EatBody))
		{
			if(self.aivar[AIV_FOUNDPERSON] > self.aivar[3])
			{
				return;
			};
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			Npc_SetTarget(self,other);
			AI_StartState(self,ZS_MM_Attack,0,"");
			return;
		};
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_AssessEnemy,0,"");
		return;
	};
	if(Npc_IsInState(self,zs_mm_hunt))
	{
		other = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
		if(Npc_GetDistToNpc(self,other) > (self.aivar[AIV_PCISSTRONGER] + 2))
		{
			Npc_ClearAIQueue(self);
		};
		return;
	};
};

func void ZS_MM_AssessEnemy()
{
	Npc_SetPercTime(self,0.5);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,B_MM_ReactToOthersDamage);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_MM_ReactToOthersDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_MM_AssessWarn);
	if(self.aivar[AIV_FINDABLE] == HUNTER)
	{
		AI_Standup(self);
		AI_TurnToNPC(self,other);
		AI_PlayAni(self,"T_WARN");
		AI_SetWalkMode(self,NPC_WALK);
		Npc_SetTarget(self,other);
		AI_StartState(self,zs_mm_hunt,0,"");
		return;
	};
	if((self.aivar[AIV_FINDABLE] == PASSIVE) || (self.aivar[AIV_FINDABLE] == PACKHUNTER))
	{
		AI_Standup(self);
		AI_LookAtNpc(self,other);
		AI_StopLookAt(self);
		AI_TurnToNPC(self,other);
	};
};

func int ZS_MM_AssessEnemy_loop()
{
	if(Npc_IsDead(other))
	{
		return LOOP_END;
	};
	self.aivar[AIV_FOUNDPERSON] = Npc_GetDistToNpc(self,other);
	if(self.aivar[AIV_FOUNDPERSON] > self.aivar[AIV_PCISSTRONGER])
	{
		return LOOP_END;
	};
	if(self.aivar[AIV_FOUNDPERSON] > self.aivar[AIV_BEENATTACKED])
	{
		B_SmartTurnToNpc(self,other);
		Npc_SetStateTime(self,0);
		AI_Wait(self,0.5);
		return LOOP_CONTINUE;
	};
	if(self.aivar[AIV_FOUNDPERSON] > self.aivar[3])
	{
		if(Npc_GetStateTime(self) > self.aivar[AIV_HAS_ERPRESSED])
		{
			Npc_SetTarget(self,other);
			Npc_ClearAIQueue(self);
			AI_StartState(self,ZS_MM_Attack,0,"");
			return LOOP_END;
		};
		AI_StopLookAt(self);
		AI_TurnToNPC(self,other);
		AI_PlayAni(self,"T_WARN");
		Npc_SendPassivePerc(self,PERC_ASSESSWARN,other,self);
		return LOOP_CONTINUE;
	};
	if(self.aivar[AIV_FOUNDPERSON] <= self.aivar[3])
	{
		Npc_SetTarget(self,other);
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		AI_StartState(self,ZS_MM_Attack,0,"");
		return LOOP_END;
	};
	return LOOP_CONTINUE;
};

func void ZS_MM_AssessEnemy_end()
{
	AI_StopLookAt(self);
};

func void zs_mm_hunt()
{
	Npc_SetPercTime(self,0.5);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_MM_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,B_MM_ReactToOthersDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSBODY,B_MM_AssessBody);
	Npc_GetTarget(self);
	AI_Standup(self);
	AI_TurnToNPC(self,other);
	if(!Npc_IsPlayer(other) && !Npc_CanSeeNpc(other,self) && (self.aivar[AIV_IMPORTANT] == ID_SHADOWBEAST))
	{
		AI_SetWalkMode(self,NPC_SNEAK);
	}
	else
	{
		AI_SetWalkMode(self,NPC_WALK);
	};
	AI_GotoNpc(self,other);
	self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
};

func int zs_mm_hunt_loop()
{
	return LOOP_END;
};

func void zs_mm_hunt_end()
{
	AI_SetWalkMode(self,NPC_RUN);
	AI_PlayAni(self,"T_WARN");
};

func void B_MM_ReactToDamage()
{
	if(!Hlp_IsValidNpc(other))
	{
		return;
	};
	Npc_PercDisable(self,PERC_ASSESSENEMY);
	Npc_SetTarget(self,other);
	Npc_ClearAIQueue(self);
	if(Npc_IsInState(self,ZS_MM_Rtn_Sleep))
	{
		if(C_BodyStateContains(self,BS_LIE))
		{
			if(self.aivar[AIV_IMPORTANT] == ID_SHADOWBEAST)
			{
				AI_PlayAni(self,"T_STANDUPQUICK");
				AI_StandupQuick(self);
			}
			else if(self.aivar[AIV_IMPORTANT] == ID_BLOODFLY)
			{
				AI_SetWalkMode(self,NPC_RUN);
			}
			else
			{
				AI_PlayAni(self,"T_SLEEP_2_STAND");
				AI_StandupQuick(self);
			};
		}
		else
		{
			AI_Standup(self);
		};
	};
	self.aivar[AIV_PLUNDERED] = PRIO_ATTACKER;
	if(C_PreyToPredator(self,other))
	{
		AI_StartState(self,ZS_MM_Flee,0,"");
	}
	else
	{
		AI_StartState(self,ZS_MM_Attack,0,"");
	};
};

func void B_MM_ReactToOthersDamage()
{
	if((Npc_GetDistToNpc(self,victim) > self.aivar[AIV_PCISSTRONGER]) || !Npc_CanSeeNpcFreeLOS(self,victim))
	{
		return;
	};
	if(C_PreyToPredator(self,other))
	{
		Npc_SetTarget(self,other);
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_Flee,0,"");
		return;
	};
	if((Wld_GetGuildAttitude(self.guild,victim.guild) == ATT_FRIENDLY) && (Wld_GetGuildAttitude(self.guild,other.guild) != ATT_FRIENDLY))
	{
		Npc_SetTarget(self,other);
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_Attack,0,"");
		return;
	};
	if((Wld_GetGuildAttitude(self.guild,other.guild) == ATT_FRIENDLY) && (Wld_GetGuildAttitude(self.guild,victim.guild) != ATT_FRIENDLY))
	{
		Npc_SetTarget(self,victim);
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_Attack,0,"");
		return;
	};
};

func void B_MM_ReactToCombatDamage()
{
	if(!Hlp_IsValidNpc(other))
	{
		return;
	};
	self.aivar[AIV_PLUNDERED] = PRIO_ATTACKER;
	if(C_PreyToPredator(self,other))
	{
		Npc_SetTarget(self,other);
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_Flee,0,"");
	};
	if(Hlp_GetInstanceID(other) != self.aivar[AIV_LASTTARGET])
	{
		if(other.aivar[AIV_IMPORTANT] == ID_SKELETONMAGE)
		{
			if((self.aivar[AIV_IMPORTANT] == ID_SKELETON) || (self.aivar[AIV_IMPORTANT] == ID_SKELETONSCOUT) || (self.aivar[AIV_IMPORTANT] == ID_SKELETONWARRIOR))
			{
				return;
			};
		};
		if((self.aivar[AIV_PARTYMEMBER] == -1) && (other.aivar[AIV_PARTYMEMBER] == -1))
		{
			return;
		};
		if(other.aivar[AIV_IMPORTANT] == ID_SLEEPER)
		{
			return;
		};
		if(self.aivar[38] == Hlp_GetInstanceID(other))
		{
			Npc_SetTarget(self,other);
			self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
		}
		else
		{
			self.aivar[38] = Hlp_GetInstanceID(other);
		};
	};
};

func void b_mm_reacttomurder()
{
	if(Npc_IsInFightMode(other,FMODE_FAR))
	{
		return;
	};
	B_MM_ReactToOthersDamage();
};

func void b_mm_assesssurprise()
{
	Npc_SetTarget(self,other);
};

func void ZS_MM_Attack()
{
	if(C_NpcIsMonsterMage(self))
	{
		B_FullStop(self);
		AI_StartState(self,ZS_MM_AttackMage,0,"");
		return;
	};
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSBODY,B_MM_AssessBody);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToCombatDamage);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,b_mm_assesssurprise);
	B_MM_DeSynchronize(self);
	AI_Standup(self);
	Npc_GetTarget(self);
	if(Hlp_IsValidNpc(other) && !C_NpcIsDown(other))
	{
		Npc_SendPassivePerc(self,PERC_ASSESSWARN,other,self);
		self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
		AI_LookAtNpc(self,other);
		AI_StopLookAt(self);
	};
	if(Npc_HasEquippedMeleeWeapon(self) && !Npc_HasReadiedMeleeWeapon(self))
	{
		AI_DrawWeapon(self);
	};
	AI_SetWalkMode(self,NPC_RUN);
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
};

func int ZS_MM_Attack_Loop()
{
	Npc_GetTarget(self);
	if(C_BodyStateContains(self,BS_SWIM))
	{
		b_iaminwater(self);
	};
	if(self.aivar[AIV_PARTYMEMBER] == -1)
	{
		if(self.aivar[47])
		{
			MASTER = Hlp_GetNpc(self.aivar[47]);
			if((master.aivar[AIV_PASSGATE] == -1) || (master.attribute[ATR_HITPOINTS] <= 0) || (Npc_GetDistToNpc(self,master) > 3000))
			{
				Npc_ChangeAttribute(self,ATR_HITPOINTS,-self.attribute);
			};
		};
		if(!Npc_RefuseTalk(self))
		{
			Npc_ChangeAttribute(self,ATR_HITPOINTS,-1);
			Npc_SetRefuseTalk(self,self.aivar[21]);
		};
	};
	if(self.aivar[AIV_PASSGATE] == 10)
	{
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		if(Npc_HasReadiedMeleeWeapon(self))
		{
			if(self.aivar[AIV_PARTYMEMBER] != -1)
			{
				self.aivar[AIV_INVINCIBLE] = TRUE;
				Npc_SetTrueGuild(self,GIL_None);
				AI_Wait(self,0.2);
				AI_RemoveWeapon(self);
			};
		};
		return LOOP_END;
	};
	if((Npc_GetDistToNpc(self,other) > (self.senses_range - 200)) && self.aivar[AIV_PASSGATE])
	{
		self.aivar[AIV_PASSGATE] = 10;
		return LOOP_CONTINUE;
	};
	if((Npc_GetStateTime(self) > self.aivar[5]) && (self.aivar[AIV_PASSGATE] == FALSE))
	{
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		AI_PlayAni(self,"T_WARN");
		self.aivar[AIV_PASSGATE] = TRUE;
		self.aivar[AIV_LASTDISTTOWP] = Npc_GetDistToNpc(self,other);
		self.aivar[AIV_GUARDPASSAGE_STATUS] = Npc_GetStateTime(self);
	};
	if(self.aivar[AIV_PASSGATE] == TRUE)
	{
		if(!Npc_IsPlayer(other))
		{
			self.aivar[AIV_PASSGATE] = 10;
			return LOOP_CONTINUE;
		};
		if(Npc_GetDistToNpc(self,other) > (self.senses_range - 200))
		{
			self.aivar[AIV_PASSGATE] = 10;
			return LOOP_CONTINUE;
		};
		if(Npc_GetStateTime(self) > self.aivar[AIV_GUARDPASSAGE_STATUS])
		{
			if((Npc_GetDistToNpc(self,other) < self.aivar[AIV_LASTDISTTOWP]) || (!C_BodyStateContains(other,BS_RUN) && !C_BodyStateContains(other,BS_JUMP)))
			{
				AI_StopLookAt(self);
				self.aivar[AIV_PASSGATE] = FALSE;
				Npc_SetStateTime(self,0);
				self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
			}
			else
			{
				if(!Npc_CanSeeNpc(self,other))
				{
					AI_TurnToNPC(self,other);
				}
				else
				{
					AI_LookAtNpc(self,other);
				};
				self.aivar[AIV_LASTDISTTOWP] = Npc_GetDistToNpc(self,other);
				self.aivar[AIV_GUARDPASSAGE_STATUS] = Npc_GetStateTime(self);
			};
		};
		return LOOP_CONTINUE;
	};
	if((C_BodyStateContains(other,BS_SWIM) || C_BodyStateContains(other,BS_DIVE)) && !self.aivar[AIV_OBSERVEINTRUDER] && !self.aivar[AIV_PASSGATE])
	{
		Npc_ClearAIQueue(self);
		AI_Standup(self);
		self.aivar[AIV_PASSGATE] = BS_SWIM;
		self.aivar[AIV_LASTDISTTOWP] = Npc_GetDistToNpc(self,other);
		self.aivar[AIV_GUARDPASSAGE_STATUS] = Npc_GetStateTime(self);
		AI_PlayAni(self,"T_WARN");
	};
	if(self.aivar[AIV_PASSGATE] == BS_SWIM)
	{
		if((Npc_GetDistToNpc(self,other) <= self.aivar[AIV_LASTDISTTOWP]) && !C_BodyStateContains(other,BS_SWIM) && !C_BodyStateContains(other,BS_DIVE))
		{
			AI_StopLookAt(self);
			self.aivar[AIV_PASSGATE] = FALSE;
			Npc_SetStateTime(self,0);
			self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
		}
		else
		{
			if(!Npc_CanSeeNpc(self,other))
			{
				AI_TurnToNPC(self,other);
			}
			else
			{
				AI_LookAtNpc(self,other);
			};
			AI_Wait(self,1);
		};
		if(Npc_GetStateTime(self) > (self.aivar[AIV_GUARDPASSAGE_STATUS] + self.aivar[5]))
		{
			AI_PlayAni(self,"T_WARN");
			AI_Wait(self,1);
			self.aivar[AIV_PASSGATE] = 10;
			return LOOP_CONTINUE;
		};
		return LOOP_CONTINUE;
	};
	if(!C_BodyStateContains(other,BS_RUN) && !C_BodyStateContains(other,BS_JUMP) && (Npc_GetStateTime(self) > 0))
	{
		Npc_SetStateTime(self,0);
		self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
	};
	if(C_BodyStateContains(other,BS_LIE))
	{
		Npc_ClearAIQueue(self);
		if(Npc_GetDistToNpc(self,other) > 500)
		{
			AI_GotoNpc(self,other);
		};
		AI_Wait(self,0.5);
		return LOOP_CONTINUE;
	};
	if(Hlp_IsValidNpc(other))
	{
		if(!C_NpcIsDown(other))
		{
			if(other.aivar[AIV_INVINCIBLE] == FALSE)
			{
				AI_Attack(self);
			}
			else
			{
				Npc_ClearAIQueue(self);
			};
			self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
		}
		else if((self.aivar[AIV_PLUNDERED] == PRIO_PREY) && c_wanttoeat(self,other))
		{
			self.aivar[AIV_PASSGATE] = 10;
		}
		else
		{
			Npc_PerceiveAll(self);
			Npc_GetNextTarget(self);
			if(!Hlp_IsValidNpc(other))
			{
				self.aivar[AIV_PASSGATE] = 10;
			}
			else if(C_NpcIsDown(other) || other.aivar[AIV_INVINCIBLE] || (Wld_GetGuildAttitude(self.guild,other.guild) != ATT_HOSTILE) || ((Npc_GetDistToNpc(self,other) > self.aivar[3]) && !Npc_IsPlayer(other)))
			{
				self.aivar[AIV_PASSGATE] = 10;
			}
			else
			{
				Npc_ClearAIQueue(self);
				AI_Standup(self);
				self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
			};
		};
	}
	else
	{
		Npc_PerceiveAll(self);
		Npc_GetNextTarget(self);
		if(!Hlp_IsValidNpc(other))
		{
			self.aivar[AIV_PASSGATE] = 10;
		}
		else if(C_NpcIsDown(other) || other.aivar[AIV_INVINCIBLE] || (Wld_GetGuildAttitude(self.guild,other.guild) != ATT_HOSTILE) || ((Npc_GetDistToNpc(self,other) > self.aivar[3]) && !Npc_IsPlayer(other)))
		{
			self.aivar[AIV_PASSGATE] = 10;
		}
		else
		{
			Npc_ClearAIQueue(self);
			AI_Standup(self);
			self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
		};
	};
	return LOOP_CONTINUE;
};

func void ZS_MM_Attack_End()
{
	AI_StopLookAt(self);
	self.aivar[AIV_PLUNDERED] = PRIO_PREY;
	other = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
	if(self.aivar[AIV_INVINCIBLE])
	{
		Npc_SetTrueGuild(self,self.guild);
		self.aivar[AIV_INVINCIBLE] = 0;
	};
	if(Npc_IsDead(other) && c_wanttoeat(self,other))
	{
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_EatBody,0,"");
	};
};

func void ZS_MM_Flee()
{
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_SendPassivePerc(self,PERC_ASSESSWARN,other,self);
	B_MM_DeSynchronize(self);
	AI_Standup(self);
	AI_SetWalkMode(self,NPC_RUN);
};

func int ZS_MM_Flee_Loop()
{
	Npc_GetTarget(self);
	if(Npc_GetDistToNpc(self,other) < 2000)
	{
		AI_Flee(self);
		return LOOP_CONTINUE;
	}
	else
	{
		Npc_ClearAIQueue(self);
	};
	return LOOP_END;
};

func void ZS_MM_Flee_End()
{
};

func void B_MM_AssessWarn()
{
	if(Npc_GetDistToNpc(self,other) > self.aivar[AIV_PCISSTRONGER])
	{
		return;
	};
	if(!Npc_CanSeeNpcFreeLOS(self,other))
	{
		if(Npc_GetDistToNpc(self,other) > (self.aivar[AIV_PCISSTRONGER] / 3))
		{
			return;
		};
	};
	if(C_PreyToPredator(self,other))
	{
		Npc_SetTarget(self,other);
		b_clearperceptions(self);
		AI_StartState(self,ZS_MM_Flee,0,"");
		return;
	};
	if(C_PreyToPredator(self,victim))
	{
		if(Npc_GetDistToNpc(self,victim) < self.aivar[AIV_PCISSTRONGER])
		{
			Npc_SetTarget(self,victim);
			Npc_ClearAIQueue(self);
			AI_StartState(self,ZS_MM_Flee,0,"");
		};
		return;
	};
	if(self.aivar[AIV_FINDABLE] == PACKHUNTER)
	{
		if(self.guild == other.guild)
		{
			if(Npc_IsInState(other,ZS_MM_Attack))
			{
				Npc_SetTarget(self,victim);
				Npc_ClearAIQueue(self);
				AI_Standup(self);
				AI_StartState(self,ZS_MM_Attack,0,"");
				return;
			};
			if(Npc_IsInState(other,ZS_MM_AssessEnemy) && !Npc_IsInState(self,ZS_MM_AssessEnemy))
			{
				Npc_ClearAIQueue(self);
				AI_Standup(self);
				AI_SetWalkMode(self,NPC_RUN);
				AI_GotoNpc(self,victim);
				return;
			};
			if(Npc_IsInState(self,ZS_MM_AssessEnemy))
			{
				AI_TurnToNPC(self,victim);
			};
		};
	};
};

func void ZS_MM_AllScheduler()
{
	self.aivar[AIV_PLUNDERED] = PRIO_PREY;
	if(Wld_IsTime(self.aivar[AIV_WARNTARGET],0,self.aivar[AIV_LASTHITBYRANGEDWEAPON],0) || (self.aivar[AIV_WARNTARGET] == OnlyRoutine))
	{
		AI_StartState(self,ZS_MM_Rtn_Sleep,1,"");
	}
	else if(Wld_IsTime(self.aivar[AIV_HASBEENDEFEATEDINPORTALROOM],0,self.aivar[AIV_HangAroundStatus],0) || (self.aivar[AIV_HASBEENDEFEATEDINPORTALROOM] == OnlyRoutine))
	{
		AI_StartState(self,ZS_MM_Rtn_Rest,1,"");
	}
	else if(Wld_IsTime(self.aivar[AIV_Trigger3],0,self.aivar[14],0) || (self.aivar[AIV_Trigger3] == OnlyRoutine))
	{
		AI_StartState(self,ZS_MM_Rtn_Roam,1,"");
	}
	else if(Wld_IsTime(self.aivar[15],0,self.aivar[AIV_FIGHTSPEACHFLAG],0) || (self.aivar[15] == OnlyRoutine))
	{
		AI_StartState(self,ZS_MM_Rtn_EatGround,1,"");
	}
	else if(Wld_IsTime(self.aivar[AIV_ITEMSTATUS],0,self.aivar[AIV_ITEMFREQ],0) || (self.aivar[AIV_ITEMSTATUS] == OnlyRoutine))
	{
		AI_StartState(self,ZS_MM_Rtn_Wusel,1,"");
	}
	else
	{
		AI_StartState(self,ZS_MM_Rtn_Default,1,"");
	};
};

func void ZS_MM_Rtn_Default()
{
	monsterrtnperception();
	if(self.aivar[AIV_IMPORTANT] == ID_SKELETONMAGE)
	{
		self.aivar[AIV_PASSGATE] = NPC_RUN;
	}
	else
	{
		self.aivar[AIV_PASSGATE] = NPC_WALK;
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	if(Npc_GetTrueGuild(self) != self.guild)
	{
		Npc_SetTrueGuild(self,self.guild);
		self.aivar[AIV_INVINCIBLE] = 0;
	};
};

func int ZS_MM_Rtn_Default_loop()
{
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		AI_Wait(self,1);
		return LOOP_CONTINUE;
	};
	if(Npc_GetDistToWP(self,self.wp) > 500)
	{
		AI_SetWalkMode(self,self.aivar[AIV_PASSGATE]);
		AI_GotoWP(self,self.wp);
		return LOOP_CONTINUE;
	};
	AI_AlignToWP(self);
	AI_SetWalkMode(self,NPC_RUN);
	AI_Wait(self,0.5);
	self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	return LOOP_CONTINUE;
};

func void ZS_MM_Rtn_Default_end()
{
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_LOCATION] = 0;
};

func void B_MM_AssessEnemy_Sleep()
{
	if(C_BodyStateContains(self,BS_LIE))
	{
		if(Npc_GetDistToNpc(self,other) < 200)
		{
			B_MM_AssessEnemy();
		};
	}
	else
	{
		B_MM_AssessEnemy();
	};
};

func void B_MM_AssessQuietSound_Sleep()
{
	if(Npc_GetDistToNpc(self,other) <= self.aivar[AIV_BEENATTACKED])
	{
		if(Wld_GetGuildAttitude(self.guild,other.guild) == ATT_HOSTILE)
		{
			B_MM_AssessEnemy();
		};
	};
};

func void ZS_MM_Rtn_Sleep()
{
	Npc_SetPercTime(self,1);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_MM_ReactToDamage);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,B_MM_ReactToOthersDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_MM_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSQUIETSOUND,B_MM_AssessQuietSound_Sleep);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_MM_AssessEnemy_Sleep);
	B_MM_DeSynchronize(self);
	if(self.aivar[AIV_IMPORTANT] == ID_BLOODFLY)
	{
		AI_SetWalkMode(self,NPC_RUN);
	}
	else
	{
		AI_SetWalkMode(self,NPC_WALK);
	};
	if(Npc_GetDistToWP(self,self.wp) > 1000)
	{
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = (Hlp_Random(100) % 10) + 1;
};

func int ZS_MM_Rtn_Sleep_loop()
{
	var float time;
	if(!Wld_IsTime(self.aivar[AIV_WARNTARGET],0,self.aivar[AIV_LASTHITBYRANGEDWEAPON],self.aivar[AIV_PASSGATE]) && (self.aivar[AIV_WARNTARGET] != OnlyRoutine))
	{
		Npc_ClearAIQueue(self);
		if(C_BodyStateContains(self,BS_LIE) || (self.aivar[AIV_IMPORTANT] == ID_BLOODFLY))
		{
			self.aivar[AIV_PASSGATE] = Hlp_Random(100) % 4;
			time = IntToFloat(self.aivar[AIV_PASSGATE]);
			AI_Wait(self,time);
		};
		AI_StartState(self,ZS_MM_AllScheduler,1,"");
		return LOOP_END;
	};
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		AI_Wait(self,1);
	}
	else
	{
		if(self.aivar[AIV_IMPORTANT] == ID_BLOODFLY)
		{
			AI_SetWalkMode(self,NPC_RUN);
		}
		else
		{
			AI_SetWalkMode(self,NPC_WALK);
		};
		if(Wld_IsFPAvailable(self,"FP_SLEEP") && !Npc_IsOnFP(self,"FP_SLEEP"))
		{
			AI_GotoFP(self,"FP_SLEEP");
		}
		else if(Wld_IsFPAvailable(self,"FP_ROAM") && !Npc_IsOnFP(self,"FP_ROAM"))
		{
			AI_GotoFP(self,"FP_ROAM");
		};
		B_MM_DeSynchronize(self);
		if(self.aivar[AIV_IMPORTANT] != ID_SHADOWBEAST)
		{
			AI_PlayAni(self,"T_PERCEPTION");
		};
		if(self.aivar[AIV_IMPORTANT] == ID_BLOODFLY)
		{
			AI_SetWalkMode(self,NPC_WALK);
		}
		else
		{
			AI_PlayAniBS(self,"T_STAND_2_SLEEP",BS_LIE);
		};
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	};
	return LOOP_CONTINUE;
};

func void ZS_MM_Rtn_Sleep_end()
{
	if(self.aivar[AIV_IMPORTANT] == ID_BLOODFLY)
	{
		AI_SetWalkMode(self,NPC_RUN);
	}
	else
	{
		AI_PlayAniBS(self,"T_SLEEP_2_STAND",BS_STAND);
	};
	if(self.aivar[AIV_IMPORTANT] != ID_SHADOWBEAST)
	{
		AI_PlayAni(self,"T_PERCEPTION");
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = 0;
};

func void ZS_MM_Rtn_Roam()
{
	monsterrtnperception();
	B_MM_DeSynchronize(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(Npc_GetDistToWP(self,self.wp) > 1000)
	{
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = (Hlp_Random(100) % 10) + 1;
};

func int ZS_MM_Rtn_Roam_loop()
{
	var float time;
	if(!Wld_IsTime(self.aivar[AIV_Trigger3],0,self.aivar[14],self.aivar[AIV_PASSGATE]) && (self.aivar[AIV_Trigger3] != OnlyRoutine))
	{
		self.aivar[AIV_PASSGATE] = Hlp_Random(100) % 4;
		time = IntToFloat(self.aivar[AIV_PASSGATE]);
		Npc_ClearAIQueue(self);
		AI_Wait(self,time);
		AI_StartState(self,ZS_MM_AllScheduler,1,"");
		return LOOP_END;
	};
	if(self.aivar[AIV_LOCATION] == AIV_L_NOTINPOS)
	{
		self.aivar[AIV_LASTDISTTOWP] = Hlp_Random(100) % 4;
		Npc_ClearAIQueue(self);
		AI_SetWalkMode(self,NPC_WALK);
		if(self.aivar[AIV_LASTDISTTOWP] || (Npc_GetStateTime(self) < 3))
		{
			if(Wld_IsFPAvailable(self,"FP_HUNT") && (Npc_GetStateTime(self) > 10) && STARTMONSTERHUNT)
			{
				AI_GotoFP(self,"FP_HUNT");
			}
			else if(Wld_IsNextFPAvailable(self,"FP_ROAM"))
			{
				AI_GotoNextFP(self,"FP_ROAM");
			}
			else if(Wld_IsFPAvailable(self,"FP_ROAM"))
			{
				AI_GotoFP(self,"FP_ROAM");
			};
		}
		else if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
		{
			AI_GotoWP(self,Npc_GetNextWP(self));
		}
		else
		{
			AI_GotoWP(self,self.wp);
		};
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	}
	else
	{
		self.aivar[AIV_LASTDISTTOWP] = Hlp_Random(100) % 6;
		if(self.aivar[AIV_LASTDISTTOWP] == 0)
		{
			b_playrandomani(self,1);
			self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
		}
		else if(self.aivar[AIV_LASTDISTTOWP] == 1)
		{
			AI_Wait(self,1);
		}
		else if(self.aivar[AIV_LASTDISTTOWP] == 2)
		{
			b_playrandomani(self,2);
			self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
		}
		else if(self.aivar[AIV_LASTDISTTOWP] == 3)
		{
			AI_Wait(self,1.5);
		}
		else if(self.aivar[AIV_LASTDISTTOWP] == 4)
		{
			if(self.aivar[AIV_IMPORTANT] == ID_WOLF)
			{
				if(!Hlp_Random(5))
				{
					if(Wld_IsTime(20,30,4,30))
					{
						AI_StartState(self,zs_mm_shortrest,1,"");
					}
					else
					{
						AI_PlayAni(self,"R_PEE");
					};
				}
				else
				{
					AI_Wait(self,0.5);
				};
			}
			else
			{
				b_playrandomani(self,3);
			};
			self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
		}
		else if(self.aivar[AIV_LASTDISTTOWP] == 5)
		{
			AI_Wait(self,2);
			self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
		};
	};
	return LOOP_CONTINUE;
};

func void ZS_MM_Rtn_Roam_end()
{
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_LASTDISTTOWP] = 0;
};

func void ZS_MM_Rtn_Rest()
{
	monsterrtnperception();
	B_MM_DeSynchronize(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(Npc_GetDistToWP(self,self.wp) > 1000)
	{
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = (Hlp_Random(100) % 10) + 1;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 8) + 4;
};

func int ZS_MM_Rtn_Rest_Loop()
{
	var float time;
	if(!Wld_IsTime(self.aivar[AIV_HASBEENDEFEATEDINPORTALROOM],0,self.aivar[AIV_HangAroundStatus],self.aivar[AIV_PASSGATE]) && (self.aivar[AIV_HASBEENDEFEATEDINPORTALROOM] != OnlyRoutine))
	{
		self.aivar[AIV_PASSGATE] = Hlp_Random(100) % 4;
		time = IntToFloat(self.aivar[AIV_PASSGATE]);
		Npc_ClearAIQueue(self);
		AI_Wait(self,time);
		AI_StartState(self,ZS_MM_AllScheduler,1,"");
		return LOOP_END;
	};
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		if(Npc_GetStateTime(self) > self.aivar[AIV_GUARDPASSAGE_STATUS])
		{
			self.aivar[AIV_LASTDISTTOWP] = Hlp_Random(100) % 5;
			if(self.aivar[AIV_LASTDISTTOWP] == 0)
			{
				b_playrandomani(self,1);
			}
			else if(self.aivar[AIV_LASTDISTTOWP] == 2)
			{
				b_playrandomani(self,2);
			}
			else if(self.aivar[AIV_LASTDISTTOWP] == 4)
			{
				b_playrandomani(self,3);
			}
			else
			{
				B_MM_DeSynchronize(self);
			};
			Npc_SetStateTime(self,0);
			self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 8) + 4;
		}
		else
		{
			AI_Wait(self,1);
		};
	}
	else
	{
		AI_SetWalkMode(self,NPC_WALK);
		if(!Npc_IsOnFP(self,"FP_ROAM"))
		{
			if(Wld_IsFPAvailable(self,"FP_ROAM"))
			{
				AI_GotoFP(self,"FP_ROAM");
			}
			else
			{
				AI_GotoWP(self,self.wp);
				if(Npc_GetStateTime(self) < 10)
				{
					AI_Wait(self,1);
					return LOOP_CONTINUE;
				};
			};
		};
		Npc_SetStateTime(self,0);
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	};
	return LOOP_CONTINUE;
};

func void ZS_MM_Rtn_Rest_End()
{
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_LASTDISTTOWP] = 0;
};

func void ZS_MM_Rtn_EatGround()
{
	monsterrtnperception();
	B_MM_DeSynchronize(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(Npc_GetDistToWP(self,self.wp) > 1000)
	{
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = (Hlp_Random(100) % 10) + 1;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 4) + 7;
};

func int ZS_MM_Rtn_EatGround_Loop()
{
	var float time;
	if(!Wld_IsTime(self.aivar[15],0,self.aivar[AIV_FIGHTSPEACHFLAG],self.aivar[AIV_PASSGATE]) && (self.aivar[15] != OnlyRoutine))
	{
		self.aivar[AIV_PASSGATE] = Hlp_Random(100) % 4;
		time = IntToFloat(self.aivar[AIV_PASSGATE]);
		Npc_ClearAIQueue(self);
		AI_Wait(self,time);
		AI_StartState(self,ZS_MM_AllScheduler,1,"");
		return LOOP_END;
	};
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		if(Npc_GetStateTime(self) > self.aivar[AIV_GUARDPASSAGE_STATUS])
		{
			Npc_SetStateTime(self,0);
			self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 4) + 7;
			if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 7)
			{
				return LOOP_CONTINUE;
			};
			AI_PlayAni(self,"T_EAT_2_STAND");
			if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 8)
			{
				b_playrandomani(self,1);
			}
			else if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 9)
			{
				b_playrandomani(self,2);
			}
			else if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 10)
			{
				b_playrandomani(self,3);
			};
			AI_PlayAni(self,"T_STAND_2_EAT");
		}
		else
		{
			AI_Wait(self,1);
		};
	}
	else
	{
		if(Wld_IsFPAvailable(self,"FP_ROAM") && !Npc_IsOnFP(self,"FP_ROAM"))
		{
			AI_SetWalkMode(self,NPC_WALK);
			AI_GotoFP(self,"FP_ROAM");
		};
		B_MM_DeSynchronize(self);
		AI_PlayAni(self,"T_STAND_2_EAT");
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	};
	return LOOP_CONTINUE;
};

func void ZS_MM_Rtn_EatGround_End()
{
	AI_PlayAni(self,"T_EAT_2_STAND");
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
};

func void ZS_MM_Rtn_Wusel()
{
	monsterrtnperception();
	B_MM_DeSynchronize(self);
	AI_SetWalkMode(self,NPC_RUN);
	if(Npc_GetDistToWP(self,self.wp) > 1000)
	{
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = (Hlp_Random(100) % 10) + 1;
};

func int ZS_MM_Rtn_Wusel_loop()
{
	var float time;
	if(self.aivar[AIV_ITEMSTATUS] != OnlyRoutine)
	{
		if(!Wld_IsTime(self.aivar[AIV_ITEMSTATUS],0,self.aivar[AIV_ITEMFREQ],self.aivar[AIV_PASSGATE]))
		{
			self.aivar[AIV_PASSGATE] = Hlp_Random(100) % 4;
			time = IntToFloat(self.aivar[AIV_PASSGATE]);
			Npc_ClearAIQueue(self);
			AI_Wait(self,time);
			AI_StartState(self,ZS_MM_AllScheduler,1,"");
			return LOOP_END;
		};
	};
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		self.aivar[AIV_LASTDISTTOWP] = Hlp_Random(100) % 3;
		if(self.aivar[AIV_LASTDISTTOWP] == 0)
		{
			b_playrandomani(self,1);
		}
		else if(self.aivar[AIV_LASTDISTTOWP] == 1)
		{
			b_playrandomani(self,2);
		}
		else
		{
			b_playrandomani(self,3);
		};
		if(Npc_GetStateTime(self) > self.aivar[AIV_GUARDPASSAGE_STATUS])
		{
			B_MM_DeSynchronize(self);
			self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
		};
	}
	else
	{
		Npc_ClearAIQueue(self);
		if(!Npc_IsOnFP(self,"FP_ROAM"))
		{
			if(Wld_IsFPAvailable(self,"FP_ROAM"))
			{
				AI_GotoFP(self,"FP_ROAM");
			}
			else if(Wld_IsNextFPAvailable(self,"FP_ROAM"))
			{
				AI_GotoNextFP(self,"FP_ROAM");
			}
			else if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp))
			{
				AI_GotoWP(self,Npc_GetNextWP(self));
			}
			else
			{
				AI_GotoWP(self,self.wp);
			};
		}
		else if(Wld_IsNextFPAvailable(self,"FP_ROAM"))
		{
			AI_GotoNextFP(self,"FP_ROAM");
		}
		else
		{
			AI_GotoWP(self,self.wp);
		};
		if(self.aivar[AIV_IMPORTANT] == ID_BLOODFLY)
		{
			AI_PlayAni(self,"T_FISTRUN_2_FISTRUNL");
			return LOOP_CONTINUE;
		};
		Npc_SetStateTime(self,0);
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
		self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 5) + 5;
	};
	return LOOP_CONTINUE;
};

func void ZS_MM_Rtn_Wusel_end()
{
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_LASTDISTTOWP] = 0;
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
};

func void zs_mm_shortrest()
{
	monsterrtnperception();
	B_MM_DeSynchronize(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(Npc_GetDistToWP(self,self.wp) > 1000)
	{
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 5) + 10;
};

func int zs_mm_shortrest_loop()
{
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		if(Npc_GetStateTime(self) > self.aivar[AIV_GUARDPASSAGE_STATUS])
		{
			if(!Hlp_Random(3))
			{
				if(C_BodyStateContains(self,BS_SIT))
				{
					AI_PlayAniBS(self,"T_SIT_2_STAND",BS_STAND);
				};
				AI_StartState(self,ZS_MM_AllScheduler,1,"");
				return LOOP_END;
			}
			else if(C_BodyStateContains(self,BS_SIT))
			{
				AI_PlayAniBS(self,"R_HOWL",BS_SIT);
			};
			self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 5) + 10;
			Npc_SetStateTime(self,0);
		};
	}
	else
	{
		AI_SetWalkMode(self,NPC_WALK);
		if(Wld_IsFPAvailable(self,"FP_REST"))
		{
			AI_GotoFP(self,"FP_REST");
		};
		AI_PlayAniBS(self,"T_STAND_2_SIT",BS_SIT);
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	};
	return LOOP_CONTINUE;
};

func void zs_mm_shortrest_end()
{
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
};

func void ZS_MM_Summoned()
{
	if(!self.aivar[47])
	{
		Npc_PerceiveAll(self);
		if(Wld_DetectNpc(self,-1,ZS_MM_AttackMage,-1))
		{
			if((self.guild == GIL_SKELETON) && ((other.aivar[44] == SPL_SUMMONSKELETON) || (other.aivar[44] == SPL_ARMYOFDARKNESS)))
			{
				self.aivar[47] = Hlp_GetInstanceID(other);
			};
		};
	};
	Npc_SetPercTime(self,0.5);
	Npc_PercEnable(self,PERC_ASSESSENEMY,B_MM_AssessEnemy);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	AI_Standup(self);
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
};

func int ZS_MM_Summoned_loop()
{
	if(self.aivar[47])
	{
		MASTER = Hlp_GetNpc(self.aivar[47]);
		if((master.aivar[AIV_PASSGATE] == -1) || (master.attribute[ATR_HITPOINTS] <= 0) || (Npc_GetDistToNpc(self,master) > 3000))
		{
			Npc_ChangeAttribute(self,ATR_HITPOINTS,-self.attribute);
		};
	};
	if(Npc_GetStateTime(self) > self.aivar[21])
	{
		Npc_ChangeAttribute(self,ATR_HITPOINTS,-1);
		Npc_SetStateTime(self,0);
	};
	if(self.aivar[AIV_LOCATION] == AIV_L_NOTINPOS)
	{
		if(Hlp_IsValidNpc(other))
		{
			AI_TurnToNPC(self,other);
			AI_LookAtNpc(self,other);
			AI_StopLookAt(self);
		}
		else
		{
			AI_StopLookAt(self);
		};
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	};
	AI_Wait(self,0.5);
	return LOOP_CONTINUE;
};

func void ZS_MM_Summoned_End()
{
};

func void zs_mm_rtn_golem_roam()
{
	monsterrtnperception();
	AI_SetWalkMode(self,NPC_WALK);
	if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == FALSE)
	{
		AI_GotoWP(self,self.wp);
	};
};

func void zs_mm_rtn_golem_roam_loop()
{
	AI_SetWalkMode(self,NPC_WALK);
	if((Npc_GetStateTime(self) >= 15) && Hlp_Random(2))
	{
		if(!Npc_IsOnFP(self,"FP_ROAM") && Wld_IsFPAvailable(self,"FP_ROAM"))
		{
			AI_GotoFP(self,"FP_ROAM");
		}
		else if(Npc_IsOnFP(self,"FP_ROAM") && Wld_IsNextFPAvailable(self,"FP_ROAM"))
		{
			AI_GotoNextFP(self,"FP_ROAM");
		}
		else if(Npc_IsOnFP(self,"FP_ROAM"))
		{
			AI_GotoWP(self,self.wp);
			AI_AlignToWP(self);
		};
		if(Hlp_Random(2))
		{
			AI_PlayAni(self,"T_PERCEPTION");
		};
		Npc_SetStateTime(self,0);
	}
	else if(Npc_GetStateTime(self) >= 15)
	{
		if(Hlp_Random(2))
		{
			AI_PlayAni(self,"T_PERCEPTION");
			Npc_SetStateTime(self,0);
		};
	};
	AI_Wait(self,1);
};

func void zs_mm_rtn_golem_roam_end()
{
};

func void b_mm_assessenemy_mcj()
{
	if((Npc_GetDistToNpc(self,other) < 500) && C_NpcIsHuman(other))
	{
		Npc_ClearAIQueue(self);
		AI_StartState(self,zs_mm_react_mcj,0,"");
	};
};

func void b_mm_reacttodamage_mcj()
{
	Npc_SetTarget(self,other);
	Npc_ClearAIQueue(self);
	AI_StartState(self,ZS_MM_Flee,0,"");
};

func void zs_mm_react_mcj()
{
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,b_mm_reacttodamage_mcj);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,b_mm_reacttodamage_mcj);
	Npc_PercEnable(self,PERC_ASSESSMURDER,b_mm_reacttodamage_mcj);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,b_mm_reacttodamage_mcj);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	AI_Standup(self);
	AI_TurnToNPC(self,other);
	if(Hlp_Random(2) == 1)
	{
		AI_PlayAni(self,"T_WARN");
	}
	else
	{
		AI_PlayAni(self,"T_FISTJUMPB");
	};
	AI_SetWalkMode(self,NPC_RUN);
};

func void zs_mm_react_mcj_loop()
{
	if((Npc_GetDistToNpc(self,hero) <= 300) || (Npc_GetStateTime(self) > 3))
	{
		Npc_SetTarget(self,hero);
		Npc_ClearAIQueue(self);
		AI_StartState(self,ZS_MM_Flee,0,"");
	}
	else if(Npc_GetDistToNpc(self,hero) < 550)
	{
		AI_TurnToNPC(self,hero);
	}
	else
	{
		AI_StartState(self,zs_mm_rtn_minecrawlerjunior,0,"");
	};
	AI_Wait(self,0.5);
};

func void zs_mm_react_mcj_end()
{
};

func void zs_mm_rtn_minecrawlerjunior()
{
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,b_mm_reacttodamage_mcj);
	Npc_PercEnable(self,PERC_ASSESSOTHERSDAMAGE,b_mm_reacttodamage_mcj);
	Npc_PercEnable(self,PERC_ASSESSMURDER,b_mm_reacttodamage_mcj);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,b_mm_reacttodamage_mcj);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSQUIETSOUND,b_mm_assessenemy_mcj);
	Npc_PercEnable(self,PERC_DRAWWEAPON,b_mm_assessenemy_mcj);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,b_mm_assessenemy_mcj);
	if(ExploreSunkenTower)
	{
		Npc_ChangeAttribute(self,ATR_HITPOINTS,-self.attribute[ATR_HITPOINTS_MAX]);
	};
	AI_SetWalkMode(self,NPC_RUN);
	if(Hlp_StrCmp(Npc_GetNearestWP(self),self.wp) == FALSE)
	{
		AI_GotoWP(self,self.wp);
	};
};

func void zs_mm_rtn_minecrawlerjunior_loop()
{
	var int randomMove;
	if(Hlp_Random(100) <= 20)
	{
		if(Wld_IsNextFPAvailable(self,"FP_ROAM"))
		{
			AI_GotoNextFP(self,"FP_ROAM");
		}
		else
		{
			AI_GotoWP(self,Npc_GetNearestWP(self));
			AI_GotoWP(self,Npc_GetNextWP(self));
		};
	}
	else
	{
		randomMove = Hlp_Random(2);
		if(randomMove == 0)
		{
			AI_PlayAni(self,"R_ROAM1");
		};
		if(randomMove == 1)
		{
			AI_PlayAni(self,"R_ROAM2");
		};
		if(randomMove == 2)
		{
			AI_PlayAni(self,"R_ROAM3");
		};
	};
};

func void zs_mm_rtn_minecrawlerjunior_end()
{
};

func void zs_mm_minecrawler_omgate()
{
	monsterrtnperception();
	self.wp = "OM_CAVE3_19";
	B_MM_DeSynchronize(self);
	AI_SetWalkMode(self,NPC_RUN);
	AI_GotoWP(self,self.wp);
	AI_StartState(self,ZS_MM_Rtn_Wusel,1,"");
};

