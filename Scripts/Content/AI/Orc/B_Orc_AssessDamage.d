// func void B_Orc_AssessDamage()
// {
// 	PrintDebugNpc( PD_ORC_FRAME, "B_Orc_AssessDamage" );
	
// 	AI_TurnToNpc( self, other );
	
// 	//wenn Gegner weit weg, hinspringen!
// 	if ( Npc_GetDistToNpc( self, other ) > 500 )
// 	{
// 		PrintDebugNpc( PD_ORC_FRAME, "B_Orc_AssessDamage: Gegner weit weg -> hinspringen" );
// 		AI_PlayAni( self, "T_STAND_2_JUMP" );		
// 	};

// 	B_FullStop			(self);
// 	Npc_SendPassivePerc	(self,	PERC_ASSESSWARN,	self, 	other);

// 	Npc_SetTempAttitude	(self,	ATT_HOSTILE );
// 	Npc_SetTarget		(self,	other);
// 	AI_StartState		(self,	ZS_Orc_Attack, 0, "" );
// };

func void B_Orc_AssessDamage()
{
	var C_Npc target;
	if(!Hlp_IsValidNpc(other))
	{
		return;
	};
	self.aivar[43] = -1;
	if(other.guild == GIL_ORCSHAMAN)
	{
		if(Npc_IsInState(other,ZS_Orc_AttackMage))
		{
			target = Hlp_GetNpc(other.aivar[AIV_LASTTARGET]);
			b_start_orc_attack(self,target);
		};
		return;
	};
	b_orc_assessandmemorize(NEWS_ATTACK,NEWS_SOURCE_WITNESS,self,other,self);
	self.aivar[AIV_ATTACKREASON] = AIV_AR_ATTACK;
	Npc_SendPassivePerc(self,PERC_ASSESSWARN,self,other);
	Npc_SetTempAttitude(self,ATT_HOSTILE);
	b_start_orc_attack(self,other);
};