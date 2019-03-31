func void B_Story_LogFailedAfterOMDown()
{
    /*CH1*/
    if(FIREMAGESBRIEF == LOG_RUNNING)
    {
        B_LogEntry(CH1_FIREMAGESBRIEF,"Wszyscy magowie ognia nie ¿yj¹. Wygl¹da na to ¿e nie uda mi siê ju¿ dostarczyæ tego listu.");
        Log_SetTopicStatus(CH1_FIREMAGESBRIEF,LOG_FAILED);
        FIREMAGESBRIEF = LOG_FAILED;
    };
    if(Cronos_Messenger == LOG_RUNNING)
    {
        B_LogEntry(CH1_CRONOSBRIEF,"Magowie Ognia nie ¿yj¹ i nigdy nie przekaza³em im wiadomoœci od Cronosa. Raczej ju¿ im siê nie przyda.");
        Log_SetTopicStatus(CH1_CRONOSBRIEF,LOG_FAILED);
        Cronos_Messenger = LOG_FAILED;
    };
    if(Ratford_Map == LOG_RUNNING)
    {
        B_LogEntry(CH1_RatfordMap,"Skoro Ratford radzi³ sobie tyle czasu bez mapy. Teraz na pewno nie bêdzie mu ju¿ potrzebna.");
        Log_SetTopicStatus(CH1_RatfordMap,LOG_FAILED);
        Ratford_Map = LOG_FAILED;
    };
    if(Snaf_Zutaten == LOG_RUNNING)
    {
        B_LogEntry(CH1_SnafsRecipe,"Stary Obóz zosta³ zamkniêty, ju¿ nigdy nie zdo³am zanieœæ Snafowi sk³adników do jego nowego przepisu.");
        Log_SetTopicStatus(CH1_SnafsRecipe,LOG_FAILED);
        Snaf_Zutaten = LOG_FAILED;
    };
    if(Sly_LostNek == LOG_RUNNING)
    {
        B_LogEntry(CH1_LostNek,"Byæ mo¿e Z³y nigdy nie dowie siê co sta³o z Nekiem. Teraz gdy Stary Obóz zwróci³ siê przeciwko mnie, na pewno nie bêdê w stanie dokoñczyæ tego zadania.");
        Log_SetTopicStatus(CH1_LostNek,LOG_FAILED);
        Sly_LostNek = LOG_FAILED;
    };
    if(Fisk_GetNewHehler == LOG_RUNNING)
	{
		B_LogEntry(CH1_FiskNewDealer,"Teraz, gdy Stary i Nowy obóz s¹ w stanie wojny nie ma mowy o jakiej kolwiek wymianie towarów miêdzy nimi.");
		Log_SetTopicStatus(CH1_FiskNewDealer,LOG_FAILED);
		Fisk_GetNewHehler = LOG_FAILED;
    };
    if(Dexter_GetKalomsRecipe == LOG_RUNNING)
	{
		B_LogEntry(CH1_KalomsRecipe,"Niestety Dexter nie otrzyma ju¿ przepisu na napój leczniczy z obozu Sekty. Zwleka³em ze spraw¹, a teraz ju¿ za póŸno.");
		Log_SetTopicStatus(CH1_KalomsRecipe,LOG_FAILED);
		Dexter_GetKalomsRecipe = LOG_FAILED;
    };
    /*CH2*/
    if(Snipes_deal == LOG_RUNNING)
    {
        B_LogEntry(CH2_SnipesDeal,"Razem z zawaleniem Starej Kopalni, zawali³a siê moja szansa na dokoñczenie spraw ze Skrzyni¹ Aarona.");
        Log_SetTopicStatus(CH2_SnipesDeal,LOG_FAILED);
        Snipes_deal = LOG_FAILED;
    };
    if(Ulbert_storageshed == LOG_RUNNING)
    {
        B_LogEntry(CH2_StorageShed,"Stara Kopalnia siê zawali³a. Ulbert najprawdopodobniej nie ¿yje.");
        Log_SetTopicStatus(CH2_StorageShed,LOG_FAILED);
        Ulbert_storageshed = LOG_FAILED;
    };
    if(Corristo_rune == LOG_RUNNING)
    {
        B_LogEntry(CH2_KDF_Rune,"Chyba nie by³em zbyt dobrym Magiem Ognia. Nie nauczy³em siê stworzenia nawet jednej runy. No có¿, teraz jest ju¿ za póŸno. Corristo nie ¿yje, wiêc raczej nie nauczê siê ju¿ tej sztuki.");
        Log_SetTopicStatus(CH2_KDF_Rune,LOG_FAILED);
        Corristo_rune = LOG_FAILED;
    };
    if(Thorus_Buddlers == LOG_RUNNING)
    {
        B_LogEntry(CH2_Buddler,"Teraz gdy Stara Kopalnia siê zawali³a, nowi kopacze raczej nie bêd¹ tam potrzebni. Przynajmniej tych trzech biedaków którzy mieli tam iœæ pracowaæ usz³o z ¿yciem.");
        Log_SetTopicStatus(CH2_Buddler,LOG_FAILED);
        Thorus_Buddlers = LOG_FAILED;
    };
};