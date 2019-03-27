//#####################################################################################
//  Orc-Perceptions

func void OrcSlavePerc()
{
	Npc_PercEnable(self,PERC_ASSESSFIGHTER,b_orcslave_assessfighter);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,zs_orcslave_reacttodamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_OBSERVEINTRUDER,b_orcslave_assessfighter);
	Npc_PercEnable(self,PERC_DRAWWEAPON,b_orcslave_assessfighter);
	Npc_PercEnable(self,PERC_ASSESSSURPRISE,b_orcslave_assessfighter);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,b_orcslave_assessfightsound);
	Npc_SetPercTime(self,1);
};

func void orcobservingperception()
{
	Npc_PercEnable(self,PERC_ASSESSENEMY,b_orc_assessenemy);
	Npc_PercEnable(self,PERC_ASSESSDAMAGE,B_Orc_AssessDamage);
	Npc_PercEnable(self,PERC_ASSESSMAGIC,B_AssessMagic);
	Npc_PercEnable(self,PERC_ASSESSCASTER,b_orc_assesscaster);
	Npc_PercEnable(self,PERC_ASSESSWARN,B_Orc_AssessWarn);
	Npc_PercEnable(self,PERC_ASSESSMURDER,B_Orc_AssessMurder);
	Npc_PercEnable(self,PERC_DRAWWEAPON,B_Orc_DrawWeapon);
	Npc_PercEnable(self,PERC_ASSESSFIGHTSOUND,b_orc_assessfightsound);
	Npc_PercEnable(self,PERC_ASSESSTHEFT,b_orc_assesstheft);
	Npc_PercEnable(self,PERC_ASSESSTALK,b_orc_assesstalk);
	Npc_PercEnable(self,PERC_ASSESSCALL,b_orc_assesstalk);
	Npc_PercEnable(self,PERC_ASSESSUSEMOB,b_orc_assessusemob);
	Npc_SetPercTime(self,1);
};

func void OrcDefaultPerc()
{
	if(self.guild == GIL_ORCSLAVE)
	{
		OrcSlavePerc();
		return;
	}
	else
	{
		orcobservingperception();
	};
};

func void b_start_orc_attack(var C_Npc slf,var C_Npc oth)
{
	Npc_ClearAIQueue(slf);
	B_MM_DeSynchronize(slf);
	Npc_SetTarget(slf,oth);
	if(self.aivar[AIV_IMPORTANT] == ID_ORCSHAMAN)
	{
		AI_StartState(slf,zs_orc_attackmage,1,"");
	}
	else if(C_BodyStateContains(slf,BS_SIT) || C_BodyStateContains(slf,BS_MOBINTERACT_INTERRUPT))
	{
		AI_StartState(slf,ZS_Orc_Attack,1,"");
	}
	else
	{
		AI_Standup(slf);
		AI_StartState(slf,ZS_Orc_Attack,0,"");
	};
};

func void b_start_orc_watchfight(var C_Npc slf,var C_Npc oth,var C_Npc vct)
{
	if(Npc_IsInState(slf,ZS_Orc_WatchFight))
	{
		return;
	};
	if(Npc_CanSeeNpcFreeLOS(slf,oth) || Npc_CanSeeNpcFreeLOS(slf,vct))
	{
		if((Npc_GetDistToNpc(slf,oth) < 1500) && (Npc_GetDistToNpc(slf,vct) < 1500))
		{
			Npc_ClearAIQueue(slf);
			B_MM_DeSynchronize(slf);
			AI_StartState(slf,ZS_Orc_WatchFight,1,"");
		};
	};
};

func void b_orc_assessandmemorize(var int newsid,var int source,var C_Npc witness,var C_Npc offender,var C_Npc vict)
{
	var C_Npc her;
	her = Hlp_GetNpc(PC_Hero);
	if(Hlp_GetInstanceID(her) == Hlp_GetInstanceID(offender))
	{
		if(!witness.aivar[AIV_DEALDAY])
		{
			witness.aivar[AIV_DEALDAY] = Wld_GetDay() + 1;
		};
		Npc_MemoryEntry(witness,source,offender,newsid,vict);
	};
};

func void b_orc_tolerateenemy(var C_Npc slf,var C_Npc oth)
{
	if(C_NpcIsOrc(slf))
	{
		if((slf.aivar[AIV_IMPORTANT] == ID_ORCSCOUT) || (slf.aivar[AIV_IMPORTANT] == ID_ORCWARRIOR1) || (slf.aivar[AIV_IMPORTANT] == ID_ORCWARRIOR2))
		{
			if(!Npc_IsInState(slf,zs_orc_upset))
			{
				Npc_ClearAIQueue(slf);
				AI_StartState(slf,zs_orc_upset,1,"");
			};
			return;
		};
		if(slf.aivar[AIV_IMPORTANT] == ID_ORCWARRIOR3)
		{
			if(Npc_IsInState(slf,zs_orc_observepc))
			{
				if(C_BodyStateContains(hero,BS_CLIMB) || (Npc_GetDistToWP(hero,"OW_ORC_PATH_07_4") < 500))
				{
					return;
				};
			};
			if(!Npc_IsInState(slf,zs_orc_followpc))
			{
				if(Npc_GetDistToWP(hero,"OW_ORCBRIDGE") < 2000)
				{
					return;
				};
				Npc_PerceiveAll(slf);
				if(Wld_DetectNpc(slf,-1,zs_orc_followpc,-1))
				{
					if(oth.weapon > 1)
					{
						if(!Npc_IsInState(slf,zs_orc_upset))
						{
							Npc_ClearAIQueue(slf);
							AI_StartState(slf,zs_orc_upset,1,"");
						};
					};
					return;
				};
				Npc_ClearAIQueue(slf);
				AI_Standup(self);
				AI_StartState(slf,zs_orc_followpc,1,"");
			};
			return;
		};
		if(slf.aivar[AIV_IMPORTANT] == ID_ORCWARRIOR4)
		{
			if(oth.weapon > 1)
			{
				if(!Npc_IsInState(slf,zs_orc_upset))
				{
					Npc_ClearAIQueue(slf);
					AI_StartState(slf,zs_orc_upset,1,"");
				};
			};
			return;
		};
		if(slf.aivar[AIV_IMPORTANT] == ID_ORCSCOUT_OD)
		{
			if(!Npc_IsInState(slf,zs_orc_upset))
			{
				Npc_ClearAIQueue(slf);
				AI_StartState(slf,zs_orc_upset,1,"");
			};
			return;
		};
		if(!Npc_IsInState(slf,zs_orc_observepc))
		{
			Npc_ClearAIQueue(slf);
			AI_StartState(slf,zs_orc_observepc,1,"");
		};
	};
};

func void b_orc_assessenemy()
{
	var C_Npc her;
	if(Npc_CanSeeNpcFreeLOS(self,other) || (Npc_GetDistToNpc(self,other) < 600))
	{
		if(C_NpcIsOrc(other))
		{
			return;
		}
		else if(C_NpcIsHuman(other))
		{
			if(other.aivar[AIV_INVINCIBLE])
			{
				return;
			};
			if(C_BodyStateContains(other,BS_SWIM) || C_BodyStateContains(other,BS_DIVE))
			{
				return;
			};
			if((Npc_CanSeeNpc(self,other) && (Npc_GetDistToNpc(self,other) < 2000)) || (!C_BodyStateContains(other,BS_SNEAK) && (Npc_GetDistToNpc(self,other) < 1200)) || (Npc_GetDistToNpc(self,other) < 600))
			{
				if(CRIMELEVEL_ORCCITY >= 4)
				{
					her = Hlp_GetNpc(PC_Hero);
					if(Hlp_GetInstanceID(her) == Hlp_GetInstanceID(other))
					{
						if(Wld_GetDay() >= PUNISHDAY_ORCCITY)
						{
							self.aivar[AIV_ATTACKREASON] = AIV_AR_MURDER;
							b_start_orc_attack(self,other);
							return;
						};
					};
				};
				if(C_OtherIsToleratedEnemy(self,other))
				{
					if(self.aivar[AIV_DEALDAY])
					{
						if(Npc_HasNews(self,NEWS_MURDER,other,NULL))
						{
							self.aivar[AIV_ATTACKREASON] = AIV_AR_MURDER;
							b_start_orc_attack(self,other);
							return;
						}
						else if(Npc_HasNews(self,NEWS_ATTACK,other,NULL))
						{
							self.aivar[AIV_ATTACKREASON] = AIV_AR_ATTACK;
							b_start_orc_attack(self,other);
							return;
						}
						else if(Npc_HasNews(self,NEWS_THEFT,other,NULL))
						{
							self.aivar[AIV_ATTACKREASON] = AIV_AR_THEFT;
							b_start_orc_attack(self,other);
							return;
						};
					};
					if(self.aivar[AIV_IMPORTANT] == ID_ORCSHAMAN)
					{
						if((other.weapon > 1) || (Wld_GetPlayerPortalGuild() == GIL_ORCSHAMAN))
						{
							b_start_orc_attack(self,other);
							return;
						};
					};
					if(Npc_GetDistToNpc(self,other) < 1500)
					{
						b_orc_tolerateenemy(self,other);
					};
					return;
				};
				b_start_orc_attack(self,other);
			};
		}
		else if(Wld_GetGuildAttitude(self.guild,other.guild) == ATT_HOSTILE)
		{
			if((Npc_CanSeeNpc(self,other) && (Npc_GetDistToNpc(self,other) < 2000)) || (Npc_GetDistToNpc(self,other) < 1000))
			{
				b_start_orc_attack(self,other);
			};
		}
		else if(Wld_GetGuildAttitude(self.guild,other.guild) == ATT_ANGRY)
		{
			b_orc_tolerateenemy(self,other);
		};
	};
};

func void b_orcslave_assessfighter()
{
	if(other.guild == GIL_MEATBUG)
	{
		return;
	};
	if(C_NpcIsMonster(other) && (Npc_GetDistToNpc(self,other) < 600))
	{
		if((Wld_GetGuildAttitude(self.guild,other.guild) == ATT_ANGRY) || (Wld_GetGuildAttitude(self.guild,other.guild) == ATT_HOSTILE))
		{
			Npc_ClearAIQueue(self);
			AI_StartState(self,zs_orcslave_reacttodamage,0,"");
			return;
		};
	};
	if(!Npc_IsPlayer(other) || (Npc_GetDistToNpc(self,other) > 400))
	{
		return;
	};
	if(Npc_IsInFightMode(other,FMODE_FIST) && (Npc_GetDistToNpc(self,other) > 200))
	{
		return;
	};
	if(!Npc_IsInState(self,zs_orcslave_observepc))
	{
		Npc_ClearAIQueue(self);
		AI_StartState(self,zs_orcslave_observepc,1,"");
	};
};

func void b_orc_assessfightsound()
{
	if(!Npc_CanSeeNpcFreeLOS(self,other) && !Npc_CanSeeNpcFreeLOS(self,victim))
	{
		if((Npc_GetDistToNpc(self,other) > 800) && (Npc_GetDistToNpc(self,victim) > 800))
		{
			return;
		};
	};
	if(C_NpcIsOrc(victim))
	{
		if(!C_NpcIsOrc(other))
		{
			b_orc_assessandmemorize(NEWS_ATTACK,NEWS_SOURCE_WITNESS,self,other,victim);
			self.aivar[AIV_ATTACKREASON] = AIV_AR_ATTACK;
			b_start_orc_attack(self,other);
		}
		else
		{
			b_start_orc_watchfight(self,other,victim);
		};
	}
	else if(victim.guild == GIL_ORCDOG)
	{
		if(Hlp_GetInstanceID(victim) == self.aivar[48])
		{
			b_start_orc_attack(self,other);
		}
		else if(!C_NpcIsOrc(other) && (other.guild != GIL_ORCDOG))
		{
			self.aivar[AIV_ATTACKREASON] = AIV_AR_ATTACK;
			b_start_orc_attack(self,other);
		}
		else
		{
			b_start_orc_watchfight(self,other,victim);
		};
	}
	else if(C_OtherIsToleratedEnemy(self,victim))
	{
		if(Npc_IsInState(self,zs_orc_followpc) && Npc_IsPlayer(victim) && C_NpcIsOrc(other))
		{
			b_start_orc_attack(self,victim);
		}
		else
		{
			b_start_orc_watchfight(self,other,victim);
		};
	}
	else if(Npc_GetAttitude(self,victim) == ATT_HOSTILE)
	{
		b_start_orc_attack(self,victim);
	};
};

func void b_orcslave_assessfightsound()
{
	if(C_NpcIsMonster(other) && (Npc_GetDistToNpc(self,other) < 600))
	{
		if((Wld_GetGuildAttitude(self.guild,other.guild) == ATT_ANGRY) || (Wld_GetGuildAttitude(self.guild,other.guild) == ATT_HOSTILE))
		{
			Npc_ClearAIQueue(self);
			AI_StartState(self,zs_orcslave_reacttodamage,0,"");
			return;
		};
	};
	if(C_NpcIsMonster(victim) && (Npc_GetDistToNpc(self,victim) < 600))
	{
		if((Wld_GetGuildAttitude(self.guild,victim.guild) == ATT_ANGRY) || (Wld_GetGuildAttitude(self.guild,victim.guild) == ATT_HOSTILE))
		{
			Npc_ClearAIQueue(self);
			self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(victim);
			other = Hlp_GetNpc(self.aivar[AIV_LASTTARGET]);
			AI_StartState(self,zs_orcslave_reacttodamage,0,"");
			return;
		};
	};
	if(!Npc_IsPlayer(other) && !Npc_IsPlayer(victim))
	{
		return;
	};
	if((Npc_GetDistToNpc(self,other) > 600) && (Npc_GetDistToNpc(self,victim) > 600))
	{
		return;
	};
	if(!Npc_IsInState(self,zs_orcslave_observepc))
	{
		Npc_ClearAIQueue(self);
		AI_StartState(self,zs_orcslave_observepc,1,"");
	};
};

func void b_orc_assesscaster()
{
	if(!Npc_IsPlayer(other))
	{
		return;
	};
	if(!Npc_CanSeeNpcFreeLOS(self,other) && (Npc_GetDistToNpc(self,other) > 700))
	{
		return;
	};
	if(self.guild == GIL_ORCSHAMAN)
	{
		b_orc_assessandmemorize(NEWS_ATTACK,NEWS_SOURCE_WITNESS,self,other,self);
		self.aivar[AIV_ATTACKREASON] = AIV_AR_ATTACK;
		b_start_orc_attack(self,other);
	}
	else if(Npc_GetActiveSpellCat(other) == SPELL_BAD)
	{
		b_orc_assessandmemorize(NEWS_ATTACK,NEWS_SOURCE_WITNESS,self,other,self);
		self.aivar[AIV_ATTACKREASON] = AIV_AR_ATTACK;
		b_start_orc_attack(self,other);
	}
	else if((Npc_GetAttitude(self,other) == ATT_HOSTILE) && !Npc_IsInState(self,zs_orc_followpc))
	{
		b_orc_assessenemy();
	}
	else if((Npc_GetDistToNpc(self,other) < 300) && !Npc_RefuseTalk(self))
	{
		Npc_SetRefuseTalk(self,3);
		AI_TurnToNPC(self,other);
		AI_SetWalkMode(self,NPC_WALK);
		AI_Dodge(self);
	};
};

func void b_orc_assessusemob()
{
	var string detectedMob;
	if(Npc_IsPlayer(other) && Npc_CanSeeNpcFreeLOS(self,other))
	{
		detectedMob = Npc_GetDetectedMob(other);
		if(Hlp_StrCmp(detectedMob,"CHESTBIG"))
		{
			if(Npc_IsInState(self,zs_orc_upset) || Npc_IsInState(self,zs_orc_followpc) || Npc_IsInState(self,ZS_Orc_Guard))
			{
				b_orc_assessandmemorize(NEWS_THEFT,NEWS_SOURCE_WITNESS,self,other,self);
				self.aivar[AIV_ATTACKREASON] = AIV_AR_THEFT;
				Npc_ClearAIQueue(self);
				B_WhirlAround(self,other);
				AI_DrawWeapon(self);
				B_Say(self,other,"$HANDSOFF");
				AI_Wait(self,0.1);
				Npc_SetTarget(self,other);
				AI_Standup(self);
				AI_StartState(self,ZS_Orc_Attack,0,"");
				AI_Wait(other,2);
				AI_UseMob(other,"CHESTBIG",-1);
				B_WhirlAround(other,self);
			}
			else if(Npc_CanSeeNpc(self,other))
			{
				b_orc_assessandmemorize(NEWS_THEFT,NEWS_SOURCE_WITNESS,self,other,self);
				self.aivar[AIV_ATTACKREASON] = AIV_AR_THEFT;
				AI_Wait(other,2);
				AI_UseMob(other,"CHESTBIG",-1);
				b_start_orc_attack(self,other);
			};
		}
		else if(Hlp_StrCmp(detectedMob,"VWHEEL"))
		{
			if(Npc_IsInState(self,zs_orc_followpc) || Npc_IsInState(self,ZS_Orc_Guard))
			{
				Npc_ClearAIQueue(self);
				B_WhirlAround(self,other);
				AI_DrawWeapon(self);
				B_Say(self,other,"$HANDSOFF");
				AI_Wait(self,0.1);
				Npc_SetTarget(self,other);
				AI_StartState(self,ZS_Orc_Attack,0,"");
			};
		}
		else if(Hlp_StrCmp(detectedMob,"TOUCHPLATE"))
		{
			if(Npc_IsInState(self,zs_orc_followpc) || Npc_IsInState(self,ZS_Orc_Guard))
			{
				Npc_ClearAIQueue(self);
				B_WhirlAround(self,other);
				AI_DrawWeapon(self);
				B_Say(self,other,"$HANDSOFF");
				AI_Wait(self,0.1);
				Npc_SetTarget(self,other);
				AI_StartState(self,ZS_Orc_Attack,0,"");
			};
		}
		else if(Hlp_StrCmp(detectedMob,"LEVER"))
		{
		};
	};
};

func void b_orc_assesstheft()
{
	if(Npc_IsPlayer(other) && Npc_CanSeeNpcFreeLOS(self,other))
	{
		if(Hlp_IsValidItem(item) && !Hlp_IsValidNpc(victim))
		{
			if(!Npc_CanSeeNpc(self,other) && !Npc_CanSeeItem(self,item))
			{
				return;
			};
			if((item.flags & ITEM_DROPPED) == ITEM_DROPPED)
			{
				if(!Hlp_IsItem(item,ItMiAlarmhorn) && !Hlp_IsItem(item,ItMi_Stuff_Idol_Sleeper_01))
				{
					return;
				};
			};
			if(Npc_IsInState(self,zs_orc_upset) || Npc_IsInState(self,zs_orc_followpc) || Npc_IsInState(self,ZS_Orc_Guard))
			{
				b_orc_assessandmemorize(NEWS_THEFT,NEWS_SOURCE_WITNESS,self,other,self);
				self.aivar[AIV_ATTACKREASON] = AIV_AR_THEFT;
				Npc_ClearAIQueue(self);
				B_WhirlAround(self,other);
				AI_DrawWeapon(self);
				B_Say(self,other,"$DIRTYTHIEF");
				AI_Wait(self,0.1);
				Npc_SetTarget(self,other);
				AI_Standup(self);
				AI_StartState(self,ZS_Orc_Attack,0,"");
			}
			else if((self.guild == GIL_ORCSHAMAN) && Hlp_IsItem(item,ItMi_Stuff_Idol_Sleeper_01))
			{
				b_orc_assessandmemorize(NEWS_THEFT,NEWS_SOURCE_WITNESS,self,other,self);
				b_start_orc_attack(self,other);
			};
		};
	};
};

func void b_orc_assesssurprise()
{
	if(Npc_IsInState(self,ZS_Orc_Attack))
	{
		Npc_ClearAIQueue(self);
		AI_StandupQuick(self);
		Npc_SetTarget(self,other);
		self.aivar[AIV_LASTTARGET] = Hlp_GetInstanceID(other);
	};
};

func void b_orc_assesstalk()
{
	var int random;
	if(!Npc_RefuseTalk(other))
	{
		AI_TurnToNPC(other,self);
		B_Say(other,self,"$SC_HEYTURNAROUND");
		Npc_SetRefuseTalk(other,3);
	}
	else
	{
		return;
	};
	if(Npc_IsInState(self,zs_orc_followpc) || Npc_IsInState(self,ZS_Orc_Guard))
	{
		if(!Npc_RefuseTalk(self))
		{
			if(self.voice == 20)
			{
				if(Npc_HasNews(self,NEWS_NERVE,other,self))
				{
					self.aivar[AIV_PASSGATE] = 1000;
				};
				if((self.aivar[AIV_PASSGATE] == 5) || (self.aivar[AIV_PASSGATE] == 105))
				{
					if(Npc_IsInState(self,zs_orc_followpc))
					{
						AI_DrawWeapon(self);
					};
					AI_TurnToNPC(self,other);
					B_Say(self,other,"$NOTNOW");
					AI_Wait(self,1.5);
					self.aivar[AIV_PASSGATE] = 1000;
					b_orc_assessandmemorize(NEWS_NERVE,NEWS_SOURCE_WITNESS,self,other,self);
					return;
				}
				else if(self.aivar[AIV_PASSGATE] == 1000)
				{
					b_orc_assessandmemorize(NEWS_ATTACK,NEWS_SOURCE_WITNESS,self,other,self);
					self.aivar[AIV_ATTACKREASON] = AIV_AR_ATTACK;
					Npc_SetTempAttitude(self,ATT_HOSTILE);
					b_start_orc_attack(self,other);
					return;
				}
				else
				{
					self.aivar[AIV_PASSGATE] += 1;
				};
			};
			random = Hlp_Random(100) % 6;
			if(random == 1)
			{
				B_Say(self,other,"$GETOUTOFHERE");
				Npc_SetRefuseTalk(self,10);
			}
			else if(random == 2)
			{
				B_Say(self,other,"$WHATSTHISSUPPOSEDTOBE");
				Npc_SetRefuseTalk(self,10);
			}
			else if(random == 3)
			{
				B_Say(self,other,"$YOUVIOLATEDFORBIDDENTERRITORY");
				Npc_SetRefuseTalk(self,10);
			}
			else
			{
				AI_Wait(self,1);
				Npc_SetRefuseTalk(self,3);
			};
		};
		return;
	};
	if(Npc_IsInState(self,zs_orc_observepc))
	{
		if(!Npc_RefuseTalk(self))
		{
			random = Hlp_Random(100) % 6;
			if(random == 2)
			{
				B_Say(self,other,"$NOTNOW");
			}
			else if(random == 4)
			{
				B_Say(self,other,"$YOUVIOLATEDFORBIDDENTERRITORY");
			}
			else
			{
				AI_Wait(self,1);
			};
			Npc_SetRefuseTalk(self,5);
		};
		return;
	};
	if(Npc_IsInState(self,ZS_Orc_Sleep) || Npc_IsInState(self,zs_orc_sitcampfire))
	{
		if(C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT))
		{
			return;
		};
		if(C_BodyStateContains(self,BS_SIT))
		{
			if(self.aivar[AIV_PASSGATE])
			{
				AI_PlayAniBS(self,"T_GUARDSLEEPSLOWWAKEUP",BS_SIT);
				self.aivar[AIV_PASSGATE] = 0;
				Npc_PercEnable(self,PERC_ASSESSENEMY,b_orc_assessenemy);
				Npc_PercEnable(self,PERC_ASSESSCASTER,b_orc_assesscaster);
				Npc_PercEnable(self,PERC_ASSESSTHEFT,b_orc_assesstheft);
				Npc_PercEnable(self,PERC_ASSESSUSEMOB,b_orc_assessusemob);
				Npc_PercDisable(self,PERC_ASSESSQUIETSOUND);
			};
		};
		if(Npc_CanSeeNpc(self,other))
		{
			AI_LookAtNpc(self,other);
			if(Hlp_Random(3) == 1)
			{
				B_Say(self,other,"$NOTNOW");
				self.aivar[AIV_GUARDPASSAGE_STATUS] += 5;
			}
			else
			{
				AI_Wait(self,1);
			};
		}
		else
		{
			AI_Wait(self,1);
		};
		return;
	};
};

func void b_orc_assessquietsound()
{
	if(Hlp_IsValidNpc(other))
	{
		if(!Npc_CanSeeNpcFreeLOS(self,other))
		{
			return;
		};
		if(Npc_GetDistToNpc(self,other) > PERC_DIST_DIALOG)
		{
			return;
		};
		if((other.guild == GIL_MEATBUG) || (other.guild == GIL_BLOODFLY))
		{
			return;
		};
	};
	if(Hlp_IsValidItem(item))
	{
		if(Npc_GetDistToItem(self,item) > PERC_DIST_DIALOG)
		{
			return;
		};
	};
	if(Npc_IsInState(self,ZS_Orc_Sleep) || Npc_IsInState(self,zs_orc_sitcampfire))
	{
		if(C_BodyStateContains(self,BS_SIT))
		{
			if(self.aivar[AIV_PASSGATE])
			{
				AI_PlayAniBS(self,"T_GUARDSLEEPSLOWWAKEUP",BS_SIT);
				self.aivar[AIV_PASSGATE] = 0;
				Npc_PercEnable(self,PERC_ASSESSENEMY,b_orc_assessenemy);
				Npc_PercEnable(self,PERC_ASSESSCASTER,b_orc_assesscaster);
				Npc_PercEnable(self,PERC_ASSESSTHEFT,b_orc_assesstheft);
				Npc_PercEnable(self,PERC_ASSESSUSEMOB,b_orc_assessusemob);
				Npc_PercDisable(self,PERC_ASSESSQUIETSOUND);
			};
		};
	};
};
