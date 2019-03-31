func void B_Story_LogFailedAfterOMDown()
{
    /*CH1*/
    if(FIREMAGESBRIEF == LOG_RUNNING)
    {
        B_LogEntry(CH1_FIREMAGESBRIEF,"Wszyscy magowie ognia nie �yj�. Wygl�da na to �e nie uda mi si� ju� dostarczy� tego listu.");
        Log_SetTopicStatus(CH1_FIREMAGESBRIEF,LOG_FAILED);
        FIREMAGESBRIEF = LOG_FAILED;
    };
    if(Cronos_Messenger == LOG_RUNNING)
    {
        B_LogEntry(CH1_CRONOSBRIEF,"Magowie Ognia nie �yj� i nigdy nie przekaza�em im wiadomo�ci od Cronosa. Raczej ju� im si� nie przyda.");
        Log_SetTopicStatus(CH1_CRONOSBRIEF,LOG_FAILED);
        Cronos_Messenger = LOG_FAILED;
    };
    if(Ratford_Map == LOG_RUNNING)
    {
        B_LogEntry(CH1_RatfordMap,"Skoro Ratford radzi� sobie tyle czasu bez mapy. Teraz na pewno nie b�dzie mu ju� potrzebna.");
        Log_SetTopicStatus(CH1_RatfordMap,LOG_FAILED);
        Ratford_Map = LOG_FAILED;
    };
    if(Snaf_Zutaten == LOG_RUNNING)
    {
        B_LogEntry(CH1_SnafsRecipe,"Stary Ob�z zosta� zamkni�ty, ju� nigdy nie zdo�am zanie�� Snafowi sk�adnik�w do jego nowego przepisu.");
        Log_SetTopicStatus(CH1_SnafsRecipe,LOG_FAILED);
        Snaf_Zutaten = LOG_FAILED;
    };
    if(Sly_LostNek == LOG_RUNNING)
    {
        B_LogEntry(CH1_LostNek,"By� mo�e Z�y nigdy nie dowie si� co sta�o z Nekiem. Teraz gdy Stary Ob�z zwr�ci� si� przeciwko mnie, na pewno nie b�d� w stanie doko�czy� tego zadania.");
        Log_SetTopicStatus(CH1_LostNek,LOG_FAILED);
        Sly_LostNek = LOG_FAILED;
    };
    if(Fisk_GetNewHehler == LOG_RUNNING)
	{
		B_LogEntry(CH1_FiskNewDealer,"Teraz, gdy Stary i Nowy ob�z s� w stanie wojny nie ma mowy o jakiej kolwiek wymianie towar�w mi�dzy nimi.");
		Log_SetTopicStatus(CH1_FiskNewDealer,LOG_FAILED);
		Fisk_GetNewHehler = LOG_FAILED;
    };
    if(Dexter_GetKalomsRecipe == LOG_RUNNING)
	{
		B_LogEntry(CH1_KalomsRecipe,"Niestety Dexter nie otrzyma ju� przepisu na nap�j leczniczy z obozu Sekty. Zwleka�em ze spraw�, a teraz ju� za p�no.");
		Log_SetTopicStatus(CH1_KalomsRecipe,LOG_FAILED);
		Dexter_GetKalomsRecipe = LOG_FAILED;
    };
    /*CH2*/
    if(Snipes_deal == LOG_RUNNING)
    {
        B_LogEntry(CH2_SnipesDeal,"Razem z zawaleniem Starej Kopalni, zawali�a si� moja szansa na doko�czenie spraw ze Skrzyni� Aarona.");
        Log_SetTopicStatus(CH2_SnipesDeal,LOG_FAILED);
        Snipes_deal = LOG_FAILED;
    };
    if(Ulbert_storageshed == LOG_RUNNING)
    {
        B_LogEntry(CH2_StorageShed,"Stara Kopalnia si� zawali�a. Ulbert najprawdopodobniej nie �yje.");
        Log_SetTopicStatus(CH2_StorageShed,LOG_FAILED);
        Ulbert_storageshed = LOG_FAILED;
    };
    if(Corristo_rune == LOG_RUNNING)
    {
        B_LogEntry(CH2_KDF_Rune,"Chyba nie by�em zbyt dobrym Magiem Ognia. Nie nauczy�em si� stworzenia nawet jednej runy. No c�, teraz jest ju� za p�no. Corristo nie �yje, wi�c raczej nie naucz� si� ju� tej sztuki.");
        Log_SetTopicStatus(CH2_KDF_Rune,LOG_FAILED);
        Corristo_rune = LOG_FAILED;
    };
    if(Thorus_Buddlers == LOG_RUNNING)
    {
        B_LogEntry(CH2_Buddler,"Teraz gdy Stara Kopalnia si� zawali�a, nowi kopacze raczej nie b�d� tam potrzebni. Przynajmniej tych trzech biedak�w kt�rzy mieli tam i�� pracowa� usz�o z �yciem.");
        Log_SetTopicStatus(CH2_Buddler,LOG_FAILED);
        Thorus_Buddlers = LOG_FAILED;
    };
};