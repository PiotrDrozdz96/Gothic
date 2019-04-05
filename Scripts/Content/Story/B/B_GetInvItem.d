func void B_GetInvItemLoop(var C_NPC self, var int category, var int value, var int slot)
{
    Npc_GetInvItemBySlot(self, category, slot);
    if (Hlp_GetInstanceID(item)!=value)
	{	
        B_GetInvItemLoop(self,category,value,slot+1);
    };
};

func int B_GetInvItem(var C_NPC self, var int category, var int value)
{
    if(Npc_HasItems(self,value))
    {
        B_GetInvItemLoop(self, category,value, 0);
        return TRUE;
    }
    else
    {
        return FALSE;
    };
};