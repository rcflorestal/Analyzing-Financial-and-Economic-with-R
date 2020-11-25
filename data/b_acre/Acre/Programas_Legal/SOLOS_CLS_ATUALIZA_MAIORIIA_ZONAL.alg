{
//Programa para atualizar o atributo SOLO _CLS atraves do operador MAIORIA ZONAL
//Declaracao das variaveis

Objeto   zonas ("utb_Obj");
Cadastral   mapacadastral ("utb_Cad");
Tematico   solo ("Solos");

//Instanciacao
mapacadastral = Recupere (Nome = "utb");
solo = Recupere (Nome = "Solos2");

//Atribuicoes
zonas. "SOLO_CLS" = Atualize (solo, zonas OnMap mapacadastral, MaiZ);
}






