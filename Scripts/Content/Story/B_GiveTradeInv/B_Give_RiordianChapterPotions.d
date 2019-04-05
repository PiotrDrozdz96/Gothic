func void B_GiveRiordianChapter1Potions ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDW_605_Riordian);
	
	//-------- POTIONS --------
	CreateInvItems (npc,ItFo_Potion_Mana_01 ,6);
	CreateInvItems (npc,ItFo_Potion_Health_01 ,8);
	CreateInvItems (npc,ItFo_Potion_Water_01 ,10);
};

func void B_GiveRiordianChapter2Potions ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDW_605_Riordian);
	
	//-------- POTIONS --------
   CreateInvItems (npc,ItFo_Potion_Mana_01 ,12);
   CreateInvItems (npc,ItFo_Potion_Mana_02 ,8);
   
   CreateInvItems (npc,ItFo_Potion_Health_01 ,16);
   CreateInvItems (npc,ItFo_Potion_Health_02 ,10);
   
   CreateInvItems (npc,ItFo_Potion_Water_01 ,10);
	
   CreateInvItems (npc,ItFo_Potion_Haste_01 ,6);		
};

func void B_GiveRiordianChapter3Potions ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDW_605_Riordian);
	
	//-------- POTIONS --------
   CreateInvItems (npc,ItFo_Potion_Mana_01 ,24);
   CreateInvItems (npc,ItFo_Potion_Mana_02 ,16);
   CreateInvItems (npc,ItFo_Potion_Mana_03 ,10);
    
   CreateInvItems (npc,ItFo_Potion_Health_01 ,32);
   CreateInvItems (npc,ItFo_Potion_Health_02 ,20);
   CreateInvItems (npc,ItFo_Potion_Health_03 ,12); 
	
   CreateInvItems (npc,ItFo_Potion_Haste_01 ,12);	
   CreateInvItems (npc,ItFo_Potion_Haste_02 ,6);
};

func void B_GiveRiordianChapter4Potions ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDW_605_Riordian);
	
	//-------- POTIONS --------
   CreateInvItems (npc,ItFo_Potion_Mana_01 ,48);
   CreateInvItems (npc,ItFo_Potion_Mana_02 ,32);
   CreateInvItems (npc,ItFo_Potion_Mana_03 ,20);
    
   CreateInvItems (npc,ItFo_Potion_Health_01 ,64);
   CreateInvItems (npc,ItFo_Potion_Health_02 ,40);
   CreateInvItems (npc,ItFo_Potion_Health_03 ,24); 
	
    CreateInvItems (npc,ItFo_Potion_Haste_01 ,24);	
    CreateInvItems (npc,ItFo_Potion_Haste_02 ,12); 
	CreateInvItems (npc,ItFo_Potion_Haste_03 ,6);
};

func void B_GiveRiordianChapter5Potions ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDW_605_Riordian);
	
	//-------- POTIONS --------
   CreateInvItems (npc,ItFo_Potion_Mana_01 ,18);
   CreateInvItems (npc,ItFo_Potion_Mana_02 ,16);
   CreateInvItems (npc,ItFo_Potion_Mana_03 ,10);
    
   CreateInvItems (npc,ItFo_Potion_Health_01 ,32);
   CreateInvItems (npc,ItFo_Potion_Health_02 ,20);
   CreateInvItems (npc,ItFo_Potion_Health_03 ,48); 
	
    CreateInvItems (npc,ItFo_Potion_Haste_01 ,48);	
	CreateInvItems (npc,ItFo_Potion_Haste_02 ,24);
	CreateInvItems (npc,ItFo_Potion_Haste_03 ,12);
};

func void B_GiveRiordianChapter6Potions ()
{
	var C_NPC npc;
	npc = Hlp_GetNpc(KDW_605_Riordian);
	
	//-------- POTIONS --------
	CreateInvItems (npc,ItFo_Potion_Mana_01 ,36);
    CreateInvItems (npc,ItFo_Potion_Mana_02 ,32);
    CreateInvItems (npc,ItFo_Potion_Mana_03 ,20);
    
   CreateInvItems (npc,ItFo_Potion_Health_01 ,64);
   CreateInvItems (npc,ItFo_Potion_Health_02 ,40);
   CreateInvItems (npc,ItFo_Potion_Health_03 ,96); 
	
    CreateInvItems (npc,ItFo_Potion_Haste_01 ,96);	
	CreateInvItems (npc,ItFo_Potion_Haste_02 ,48);
	CreateInvItems (npc,ItFo_Potion_Haste_03 ,24);	
	
};

func void B_Give_RiordianDead()
{
    var C_NPC npc;
    npc = Hlp_GetNpc(KDW_605_Riordian);
    
    if(Kapitel == 1)
    {
        CreateInvItems (npc,ItFo_Potion_Mana_01 ,1);
	    CreateInvItems (npc,ItFo_Potion_Health_01 ,1);
	    CreateInvItems (npc,ItFo_Potion_Water_01 ,1);
    }
    else if(Kapitel == 2)
    {
        CreateInvItems (npc,ItFo_Potion_Mana_01 ,2);
        CreateInvItems (npc,ItFo_Potion_Mana_02 ,1);
        CreateInvItems (npc,ItFo_Potion_Health_01 ,3);
        CreateInvItems (npc,ItFo_Potion_Health_02 ,1);
        CreateInvItems (npc,ItFo_Potion_Water_01 ,2);  
        CreateInvItems (npc,ItFo_Potion_Haste_01 ,1);
    }
    else if(Kapitel == 3)
    {
        CreateInvItems (npc,ItFo_Potion_Mana_01 ,5);
        CreateInvItems (npc,ItFo_Potion_Mana_02 ,3);
        CreateInvItems (npc,ItFo_Potion_Mana_03 ,1);
        CreateInvItems (npc,ItFo_Potion_Health_01 ,6);
        CreateInvItems (npc,ItFo_Potion_Health_02 ,3);
        CreateInvItems (npc,ItFo_Potion_Health_03 ,1);
        CreateInvItems (npc,ItFo_Potion_Water_01 ,2);   
        CreateInvItems (npc,ItFo_Potion_Haste_01 ,2);	
        CreateInvItems (npc,ItFo_Potion_Haste_02 ,1);  
    }
    else if(Kapitel == 4)
    {
        CreateInvItems (npc,ItFo_Potion_Mana_01 ,10);
        CreateInvItems (npc,ItFo_Potion_Mana_02 ,6);
        CreateInvItems (npc,ItFo_Potion_Mana_03 ,3);
        CreateInvItems (npc,ItFo_Potion_Health_01 ,12);
        CreateInvItems (npc,ItFo_Potion_Health_02 ,7);
        CreateInvItems (npc,ItFo_Potion_Health_03 ,4);
        CreateInvItems (npc,ItFo_Potion_Water_01 ,2);   
        CreateInvItems (npc,ItFo_Potion_Haste_01 ,4);	
        CreateInvItems (npc,ItFo_Potion_Haste_02 ,3); 
        CreateInvItems (npc,ItFo_Potion_Haste_03 ,1); 
    }
    else if(Kapitel == 5)
    {
        CreateInvItems (npc,ItFo_Potion_Mana_01 ,12);
        CreateInvItems (npc,ItFo_Potion_Mana_02 ,8);
        CreateInvItems (npc,ItFo_Potion_Mana_03 ,4);
        CreateInvItems (npc,ItFo_Potion_Health_01 ,15);
        CreateInvItems (npc,ItFo_Potion_Health_02 ,9);
        CreateInvItems (npc,ItFo_Potion_Health_03 ,9);
        CreateInvItems (npc,ItFo_Potion_Water_01 ,2);   
        CreateInvItems (npc,ItFo_Potion_Haste_01 ,9);	
        CreateInvItems (npc,ItFo_Potion_Haste_02 ,5); 
        CreateInvItems (npc,ItFo_Potion_Haste_03 ,2); 
    }
    else //Kapitel == 6
    {
        CreateInvItems (npc,ItFo_Potion_Mana_01 ,16);
        CreateInvItems (npc,ItFo_Potion_Mana_02 ,11);
        CreateInvItems (npc,ItFo_Potion_Mana_03 ,6);
        CreateInvItems (npc,ItFo_Potion_Health_01 ,21);
        CreateInvItems (npc,ItFo_Potion_Health_02 ,13);
        CreateInvItems (npc,ItFo_Potion_Health_03 ,18);
        CreateInvItems (npc,ItFo_Potion_Water_01 ,2);   
        CreateInvItems (npc,ItFo_Potion_Haste_01 ,19);	
        CreateInvItems (npc,ItFo_Potion_Haste_02 ,10); 
        CreateInvItems (npc,ItFo_Potion_Haste_03 ,5); 
    };
};

