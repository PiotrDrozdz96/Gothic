func void B_Story_LogFailedAfterOMDown()
{
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
};