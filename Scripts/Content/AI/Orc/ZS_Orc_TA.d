func void b_orc_removeweapon(var C_Npc slf)
{
	AI_StopLookAt(self);
	if(slf.weapon)
	{
		AI_StartState(slf,zs_orc_removeweapon,0,"");
	};
};

func void zs_orc_removeweapon()
{
	self.aivar[AIV_INVINCIBLE] = TRUE;
	Npc_SetTrueGuild(self,GIL_None);
};

func int zs_orc_removeweapon_loop()
{
	AI_RemoveWeapon(self);
	return LOOP_END;
};

func void zs_orc_removeweapon_end()
{
	self.aivar[AIV_INVINCIBLE] = FALSE;
	Npc_SetTrueGuild(self,self.guild);
	AI_ContinueRoutine(self);
};

func void ZS_Orc_Stonemill()
{
	b_orc_removeweapon(self);
	OrcSlavePerc();
	AI_SetWalkMode(self,NPC_WALK);
	if(Npc_GetDistToWP(self,self.wp) > 450)
	{
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
};

func void ZS_Orc_Stonemill_Loop()
{
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		if(Wld_IsMobAvailable(self,"STONEMILL"))
		{
			AI_UseMob(self,"STONEMILL",1);
			AI_UseMob(self,"STONEMILL",0);
			AI_UseMob(self,"STONEMILL",-1);
		};
	}
	else if(Npc_GetDistToWP(self,self.wp) > 450)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	}
	else
	{
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	};
};

func void ZS_Orc_Stonemill_End()
{
	Npc_ClearAIQueue(self);
	if(C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT))
	{
		AI_UseMob(self,"STONEMILL",-1);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
};

func void ZS_Orc_Stomper()
{
	b_orc_removeweapon(self);
	OrcSlavePerc();
	AI_SetWalkMode(self,NPC_WALK);
	if(Npc_GetDistToWP(self,self.wp) > 450)
	{
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
};

func void ZS_Orc_Stomper_Loop()
{
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		if(Wld_IsMobAvailable(self,"STOMPER"))
		{
			AI_UseMob(self,"STOMPER",1);
			AI_UseMob(self,"STOMPER",0);
			AI_UseMob(self,"STOMPER",-1);
		};
	}
	else if(Npc_GetDistToWP(self,self.wp) > 450)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	}
	else
	{
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	};
};

func void ZS_Orc_Stomper_End()
{
	Npc_ClearAIQueue(self);
	if(C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT))
	{
		AI_UseMob(self,"STOMPER",-1);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
};

func void ZS_Orc_Sleep()
{
	b_orc_removeweapon(self);
	OrcDefaultPerc();
	Npc_PercEnable(self,PERC_ASSESSENEMY,b_orc_assessenemy);
	if(Npc_GetDistToWP(self,self.wp) > 300)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = 0;
};

func int ZS_Orc_Sleep_Loop()
{
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		if(C_BodyStateContains(self,BS_SIT))
		{
			if(Npc_GetStateTime(self) >= self.aivar[AIV_GUARDPASSAGE_STATUS])
			{
				if(self.aivar[AIV_PASSGATE] == 0)
				{
					AI_StopLookAt(self);
					AI_PlayAniBS(self,"T_GUARDSIT_2_GUARDSLEEP",BS_SIT);
					self.aivar[AIV_PASSGATE] = 1;
					self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(1000) % 10) + 10;
					Npc_PercDisable(self,PERC_ASSESSENEMY);
					Npc_PercDisable(self,PERC_ASSESSCASTER);
					Npc_PercDisable(self,PERC_ASSESSTHEFT);
					Npc_PercDisable(self,PERC_ASSESSUSEMOB);
					Npc_PercEnable(self,PERC_ASSESSQUIETSOUND,b_orc_assessquietsound);
				}
				else if(self.aivar[AIV_PASSGATE] == 1)
				{
					if((Hlp_Random(100) % 12) == 0)
					{
						AI_PlayAniBS(self,"T_GUARDSLEEPSLOWWAKEUP",BS_SIT);
						self.aivar[AIV_PASSGATE] = 0;
						Npc_PercEnable(self,PERC_ASSESSENEMY,b_orc_assessenemy);
						Npc_PercEnable(self,PERC_ASSESSCASTER,b_orc_assesscaster);
						Npc_PercEnable(self,PERC_ASSESSTHEFT,b_orc_assesstheft);
						Npc_PercEnable(self,PERC_ASSESSUSEMOB,b_orc_assessusemob);
						Npc_PercDisable(self,PERC_ASSESSQUIETSOUND);
					};
					self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 3) + 3;
				};
				Npc_SetStateTime(self,0);
			};
		};
	}
	else if(Npc_GetDistToWP(self,self.wp) > 300)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	}
	else
	{
		if(Wld_IsMobAvailable(self,"BEDLOW"))
		{
			AI_UseMob(self,"BEDLOW",1);
			self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
			return LOOP_CONTINUE;
		}
		else if(Wld_IsFPAvailable(self,"ORC_SLEEP"))
		{
			AI_SetWalkMode(self,NPC_WALK);
			AI_GotoFP(self,"ORC_SLEEP");
			AI_AlignToFP(self);
		}
		else
		{
			AI_AlignToWP(self);
		};
		AI_PlayAniBS(self,"T_STAND_2_GUARDSIT",BS_SIT);
		self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 3) + 3;
		Npc_SetStateTime(self,0);
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	};
	AI_Wait(self,1);
	return LOOP_CONTINUE;
};

func void ZS_Orc_Sleep_End()
{
	Npc_ClearAIQueue(self);
	if(C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT))
	{
		AI_UseMob(self,"BEDLOW",-1);
	}
	else if(C_BodyStateContains(self,BS_SIT))
	{
		if(self.aivar[AIV_PASSGATE] == 1)
		{
			AI_PlayAniBS(self,"T_GUARDSLEEPSLOWWAKEUP",BS_SIT);
		};
		AI_PlayAniBS(self,"T_GUARDSIT_2_STAND",BS_STAND);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
};

func void ZS_Orc_Pray()
{
	b_orc_removeweapon(self);
	OrcDefaultPerc();
	AI_SetWalkMode(self,NPC_WALK);
	if((Npc_GetDistToWP(self,self.wp) < 500) && Wld_IsFPAvailable(self,"PREY"))
	{
		AI_GotoFP(self,"PREY");
		AI_AlignToFP(self);
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	}
	else
	{
		AI_GotoWP(self,self.wp);
		self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	};
	self.aivar[AIV_GUARDPASSAGE_STATUS] = Hlp_Random(100) % 4;
};

func void ZS_Orc_Pray_Loop()
{
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		if(Npc_GetBodyState(self) != BS_SIT)
		{
			AI_PlayAniBS(self,"T_STAND_2_PRAY",BS_SIT);
		}
		else
		{
			AI_PlayAniBS(self,"T_PRAY_RANDOM",BS_SIT);
		};
		if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 1)
		{
			AI_Wait(self,0.3);
		}
		else if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 2)
		{
			AI_Wait(self,0.6);
		}
		else if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 3)
		{
			AI_Wait(self,1);
		};
	}
	else if(Npc_GetDistToWP(self,self.wp) > 500)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	}
	else
	{
		if(Wld_IsFPAvailable(self,"PREY"))
		{
			AI_SetWalkMode(self,NPC_WALK);
			AI_GotoFP(self,"PREY");
			AI_AlignToFP(self);
		};
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	};
	AI_Wait(self,1);
};

func void ZS_Orc_Pray_End()
{
	Npc_ClearAIQueue(self);
	if(Npc_GetBodyState(self) == BS_SIT)
	{
		AI_PlayAniBS(self,"T_PRAY_2_STAND",BS_STAND);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
};

func void ZS_Orc_Drum()
{
	b_orc_removeweapon(self);
	OrcDefaultPerc();
	if(Npc_GetDistToWP(self,self.wp) > 300)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
};

func int ZS_Orc_Drum_Loop()
{
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		if(C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT))
		{
			self.aivar[AIV_GUARDPASSAGE_STATUS] = Hlp_Random(15);
			if(self.aivar[AIV_GUARDPASSAGE_STATUS] < 5)
			{
				AI_PlayAniBS(self,"T_ORCDRUM_RANDOM_1",BS_MOBINTERACT_INTERRUPT);
			}
			else if(self.aivar[AIV_GUARDPASSAGE_STATUS] < 10)
			{
				AI_PlayAniBS(self,"T_ORCDRUM_RANDOM_2",BS_MOBINTERACT_INTERRUPT);
			}
			else
			{
				AI_PlayAniBS(self,"T_ORCDRUM_RANDOM_3",BS_MOBINTERACT_INTERRUPT);
			};
		}
		else
		{
			self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
			AI_Wait(self,1);
		};
	}
	else if(Npc_GetDistToWP(self,self.wp) > 300)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	}
	else if(Wld_IsMobAvailable(self,"DRUM"))
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_UseMob(self,"DRUM",1);
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	};
	return LOOP_CONTINUE;
};

func void ZS_Orc_Drum_End()
{
	Npc_ClearAIQueue(self);
	if(C_BodyStateContains(self,BS_MOBINTERACT_INTERRUPT))
	{
		AI_Wait(self,1);
		AI_UseMob(self,"DRUM",-1);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
};

func void ZS_Orc_WalkAround()
{
	b_orc_removeweapon(self);
	OrcDefaultPerc();
	B_MM_DeSynchronize(self);
	AI_SetWalkMode(self,NPC_WALK);
	if(Npc_GetDistToWP(self,self.wp) > 500)
	{
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
};

func int ZS_Orc_WalkAround_Loop()
{
	if(self.aivar[AIV_LOCATION] == AIV_L_NOTINPOS)
	{
		self.aivar[AIV_PASSGATE] = Hlp_Random(100) % 4;
		Npc_ClearAIQueue(self);
		AI_SetWalkMode(self,NPC_WALK);
		if((self.aivar[AIV_PASSGATE] == 1) || (self.aivar[AIV_PASSGATE] == 3))
		{
			if(Wld_IsNextFPAvailable(self,"FP_ROAM"))
			{
				AI_GotoNextFP(self,"FP_ROAM");
			}
			else if(Wld_IsFPAvailable(self,"FP_ROAM"))
			{
				AI_GotoFP(self,"FP_ROAM");
			}
			else
			{
				AI_Wait(self,1);
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
		self.aivar[AIV_PASSGATE] = Hlp_Random(100) % 10;
		if(self.aivar[AIV_PASSGATE] == 0)
		{
			b_playrandomani(self,1);
			AI_Wait(self,1);
			self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
		}
		else if(self.aivar[AIV_PASSGATE] == 1)
		{
			AI_Wait(self,1.5);
		}
		else if(self.aivar[AIV_PASSGATE] == 2)
		{
			AI_Wait(self,2);
			self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
		}
		else if(self.aivar[AIV_PASSGATE] == 3)
		{
			b_playrandomani(self,2);
			AI_Wait(self,1);
			self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
		}
		else if(self.aivar[AIV_PASSGATE] == 4)
		{
			AI_Wait(self,1.5);
		}
		else if(self.aivar[AIV_PASSGATE] == 5)
		{
			AI_Wait(self,2);
			self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
		}
		else if(self.aivar[AIV_PASSGATE] == 6)
		{
			b_playrandomani(self,3);
			AI_Wait(self,1);
			self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
		}
		else if(self.aivar[AIV_PASSGATE] == 7)
		{
			AI_Wait(self,2);
			self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
		}
		else if(self.aivar[AIV_PASSGATE] == 8)
		{
			b_playrandomani(self,3);
			AI_Wait(self,1);
		}
		else if(self.aivar[AIV_PASSGATE] == 9)
		{
			AI_Wait(self,1.5);
		};
	};
	return LOOP_CONTINUE;
};

func void ZS_Orc_WalkAround_End()
{
	Npc_ClearAIQueue(self);
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = 0;
};

func void ZS_Orc_Dance()
{
	b_orc_removeweapon(self);
	OrcDefaultPerc();
	if(Npc_GetDistToWP(self,self.wp) > 500)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
};

func void ZS_Orc_Dance_Loop()
{
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		Npc_PerceiveAll(self);
		if(Wld_DetectNpc(self,-1,ZS_Orc_Drum,-1))
		{
			if(Hlp_Random(10) < 5)
			{
				AI_PlayAni(self,"T_DANCE");
			}
			else
			{
				AI_PlayAni(self,"T_DANCE_RANDOM_1");
			};
		}
		else
		{
			AI_Wait(self,1);
		};
	}
	else if(Npc_GetDistToWP(self,self.wp) > 500)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	}
	else
	{
		if(Wld_IsFPAvailable(self,"DANCE"))
		{
			AI_SetWalkMode(self,NPC_WALK);
			AI_GotoFP(self,"DANCE");
			AI_AlignToFP(self);
		};
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	};
};

func void ZS_Orc_Dance_End()
{
	Npc_ClearAIQueue(self);
	AI_Standup(self);
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
};

func void ZS_Orc_EatAndDrink()
{
	b_orc_removeweapon(self);
	OrcDefaultPerc();
	if(Npc_GetDistToWP(self,self.wp) > 300)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
};

func void ZS_Orc_EatAndDrink_Loop()
{
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		if(Npc_GetStateTime(self) >= self.aivar[AIV_GUARDPASSAGE_STATUS])
		{
			if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 5)
			{
				AI_StopLookAt(self);
				B_Orc_ItemPotion();
			}
			else if(self.aivar[AIV_GUARDPASSAGE_STATUS] == 6)
			{
				AI_StopLookAt(self);
				B_Orc_ItemEat();
			};
			self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 4) + 4;
			Npc_SetStateTime(self,0);
		};
	}
	else if(Npc_GetDistToWP(self,self.wp) > 300)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	}
	else
	{
		if(Wld_IsFPAvailable(self,"STAND"))
		{
			AI_SetWalkMode(self,NPC_WALK);
			AI_GotoFP(self,"STAND");
			AI_AlignToFP(self);
		}
		else
		{
			AI_AlignToWP(self);
		};
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
		self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 4) + 3;
		Npc_SetStateTime(self,0);
	};
	AI_Wait(self,1);
};

func void ZS_Orc_EatAndDrink_End()
{
	Npc_ClearAIQueue(self);
	AI_Standup(self);
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
};

func void ZS_Orc_Guard()
{
	b_orc_removeweapon(self);
	OrcDefaultPerc();
	if(Npc_GetDistToWP(self,self.wp) > 700)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = 0;
};

func void ZS_Orc_Guard_Loop()
{
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		if((Npc_GetDistToNpc(self,hero) < 800) && Npc_CanSeeNpcFreeLOS(self,hero) && !Npc_IsDead(hero))
		{
			if((Npc_CanSeeNpc(self,hero) || (Npc_GetDistToNpc(self,hero) < 500)) && (hero.guild != GIL_MEATBUG))
			{
				AI_TurnToNPC(self,hero);
				self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
				self.aivar[AIV_PASSGATE] = 1;
				self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 4) + 4;
				Npc_SetStateTime(self,0);
			};
			AI_Wait(self,0.5);
		}
		else
		{
			if(Npc_GetStateTime(self) >= self.aivar[AIV_GUARDPASSAGE_STATUS])
			{
				self.aivar[AIV_LASTDISTTOWP] = Hlp_Random(100) % 12;
				if(self.aivar[AIV_LASTDISTTOWP] == 3)
				{
					b_playrandomani(self,1);
				}
				else if(self.aivar[AIV_LASTDISTTOWP] == 6)
				{
					b_playrandomani(self,3);
				};
				self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 4) + 4;
				Npc_SetStateTime(self,0);
			};
			AI_Wait(self,1);
		};
	}
	else if(self.aivar[AIV_PASSGATE])
	{
		if((Npc_GetDistToNpc(self,hero) < 1000) && (hero.guild != GIL_MEATBUG))
		{
			if(Npc_GetStateTime(self) >= self.aivar[AIV_GUARDPASSAGE_STATUS])
			{
				AI_TurnToNPC(self,hero);
				self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(100) % 4) + 4;
				Npc_SetStateTime(self,0);
			}
			else
			{
				B_SmartTurnToNpc(self,hero);
			};
			AI_Wait(self,0.5);
		}
		else
		{
			AI_Wait(self,1);
			AI_StopLookAt(self);
			self.aivar[AIV_PASSGATE] = 0;
		};
	}
	else if(Npc_GetDistToWP(self,self.wp) > 700)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	}
	else
	{
		if(Wld_IsFPAvailable(self,"GUARD"))
		{
			AI_SetWalkMode(self,NPC_WALK);
			AI_GotoFP(self,"GUARD");
		}
		else
		{
			AI_AlignToWP(self);
		};
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	};
};

func void ZS_Orc_Guard_End()
{
	Npc_ClearAIQueue(self);
	AI_StopLookAt(self);
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
};

func void ZS_Orc_SitOnFloor()
{
	b_orc_removeweapon(self);
	OrcDefaultPerc();
	if(Npc_GetDistToWP(self,self.wp) > 500)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
};

func void ZS_Orc_SitOnFloor_Loop()
{
	PrintDebugNpc(PD_ZS_FRAME,"ZS_Orc_SitOnFloor_Loop");
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		if(!C_BodyStateContains(self,BS_SIT))
		{
			AI_PlayAniBS(self,"T_STAND_2_GUARDSIT",BS_SIT);
		};
		AI_Wait(self,1);
	}
	else if(Npc_GetDistToWP(self,self.wp) > 500)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	}
	else
	{
		if(Wld_IsFPAvailable(self,"ORC_SIT"))
		{
			AI_SetWalkMode(self,NPC_WALK);
			AI_GotoFP(self,"ORC_SIT");
			AI_AlignToFP(self);
		};
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
	};
};

func void ZS_Orc_SitOnFloor_End()
{
	Npc_ClearAIQueue(self);
	if(C_BodyStateContains(self,BS_SIT))
	{
		AI_PlayAniBS(self,"T_GUARDSIT_2_STAND",BS_STAND);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
};

func void zs_orc_sitcampfire()
{
	b_orc_removeweapon(self);
	OrcDefaultPerc();
	if(Npc_GetDistToWP(self,self.wp) > 400)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = 0;
};

func int zs_orc_sitcampfire_loop()
{
	if(self.aivar[AIV_LOCATION] == AIV_L_ISINPOS)
	{
		if(C_BodyStateContains(self,BS_SIT))
		{
			if(Npc_GetStateTime(self) >= self.aivar[AIV_GUARDPASSAGE_STATUS])
			{
				if(self.aivar[AIV_PASSGATE] == 0)
				{
					if(Wld_IsTime(23,0,7,0))
					{
						if(Hlp_Random(3) == 1)
						{
							AI_StopLookAt(self);
							AI_PlayAniBS(self,"T_GUARDSIT_2_GUARDSLEEP",BS_SIT);
							self.aivar[AIV_PASSGATE] = 1;
							Npc_PercDisable(self,PERC_ASSESSENEMY);
							Npc_PercDisable(self,PERC_ASSESSCASTER);
							Npc_PercDisable(self,PERC_ASSESSTHEFT);
							Npc_PercDisable(self,PERC_ASSESSUSEMOB);
							Npc_PercEnable(self,PERC_ASSESSQUIETSOUND,b_orc_assessquietsound);
						};
					};
					self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(1000) % 20) + 20;
				}
				else if(self.aivar[AIV_PASSGATE] == 1)
				{
					if(Hlp_Random(3) == 1)
					{
						AI_PlayAniBS(self,"T_GUARDSLEEPSLOWWAKEUP",BS_SIT);
						self.aivar[AIV_PASSGATE] = 0;
						Npc_PercEnable(self,PERC_ASSESSENEMY,b_orc_assessenemy);
						Npc_PercEnable(self,PERC_ASSESSCASTER,b_orc_assesscaster);
						Npc_PercEnable(self,PERC_ASSESSTHEFT,b_orc_assesstheft);
						Npc_PercEnable(self,PERC_ASSESSUSEMOB,b_orc_assessusemob);
						Npc_PercDisable(self,PERC_ASSESSQUIETSOUND);
					};
					self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(1000) % 20) + 20;
				};
				Npc_SetStateTime(self,0);
			};
		}
		else
		{
			return LOOP_END;
		};
	}
	else if(Npc_GetDistToWP(self,self.wp) > 400)
	{
		AI_SetWalkMode(self,NPC_WALK);
		AI_GotoWP(self,self.wp);
	}
	else
	{
		if(Wld_IsFPAvailable(self,"CAMPFIRE"))
		{
			AI_SetWalkMode(self,NPC_WALK);
			AI_GotoFP(self,"CAMPFIRE");
			AI_AlignToFP(self);
		}
		else
		{
			AI_AlignToWP(self);
		};
		AI_PlayAniBS(self,"T_STAND_2_GUARDSIT",BS_SIT);
		self.aivar[AIV_GUARDPASSAGE_STATUS] = (Hlp_Random(1000) % 20) + 10;
		self.aivar[AIV_LOCATION] = AIV_L_ISINPOS;
		Npc_SetStateTime(self,0);
	};
	AI_Wait(self,1);
	return LOOP_CONTINUE;
};

func void zs_orc_sitcampfire_end()
{
	Npc_ClearAIQueue(self);
	if(C_BodyStateContains(self,BS_SIT))
	{
		if(self.aivar[AIV_PASSGATE] == 1)
		{
			AI_PlayAniBS(self,"T_GUARDSLEEPSLOWWAKEUP",BS_SIT);
		};
		AI_PlayAniBS(self,"T_GUARDSIT_2_STAND",BS_STAND);
	};
	self.aivar[AIV_LOCATION] = AIV_L_NOTINPOS;
	self.aivar[AIV_PASSGATE] = 0;
	self.aivar[AIV_GUARDPASSAGE_STATUS] = 0;
};
