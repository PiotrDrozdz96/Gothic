+-- AI
|   +-- B_Monster
|   |   +-- B_InitMonsterAttitudes
|   |   |    // Dodanie Attitudes ork�w
|   |   +-- B_SetGuildAttitude
|   |   |    // Usprawnienie funkcji poprzez dodanie GIL_SEPERATOR_ORC
|   +-- Orc
|   |    // Usuni�cie B_InitOrcAttitudes, bo przesz�y do B_InitMonsterAttitudes
|   |    // Usuni�cie TestOrc i TestOrcSlave bo s� nie potrzebne, a korzysta�y z B_InitOrcAttitudes
+-- Gothic.src
|    // Wywalenie testowych ork�w z parsowania
