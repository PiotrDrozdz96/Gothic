+-- AI
|   +-- B_Monster
|   |   +-- B_InitMonsterAttitudes
|   |   |    // Dodanie Attitudes orków
|   |   +-- B_SetGuildAttitude
|   |   |    // Usprawnienie funkcji poprzez dodanie GIL_SEPERATOR_ORC
|   +-- Orc
|   |    // Usuniêcie B_InitOrcAttitudes, bo przesz³y do B_InitMonsterAttitudes
|   |    // Usuniêcie TestOrc i TestOrcSlave bo s¹ nie potrzebne, a korzysta³y z B_InitOrcAttitudes
+-- Gothic.src
|    // Wywalenie testowych orków z parsowania
