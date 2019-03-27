func void B_Orc_SmartTurn(var C_Npc slf,var C_Npc oth)
{
	if(C_BodyStateContains(slf,BS_SIT) && Npc_CanSeeNpc(slf,oth))
	{
		AI_LookAtNpc(slf,oth);
	}
	else if(!C_BodyStateContains(slf,BS_ITEMINTERACT) && !C_BodyStateContains(slf,BS_MOBINTERACT_INTERRUPT))
	{
		if(!Npc_CanSeeNpc(slf,oth))
		{
			AI_TurnToNPC(slf,oth);
		}
		else
		{
			AI_LookAtNpc(slf,oth);
		};
	};
};
