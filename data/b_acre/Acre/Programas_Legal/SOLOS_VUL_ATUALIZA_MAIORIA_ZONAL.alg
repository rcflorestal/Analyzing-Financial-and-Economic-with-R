{
//Programa para atualizar o atributo SOLO_VUL atraves do operador MEDIA ZONAL
//Declaracao das variaveis

Objeto   zonas ("utb_Obj");
Cadastral   mapacadastral ("utb_Cad");
Digital   solo ("MNT");

//Instanciacao
mapacadastral = Recupere (Nome = "utb");
solo = Recupere (Nome = "solo_pond");

//Atribuicoes
zonas. "SOLO_VUL" = Atualize (solo, zonas OnMap mapacadastral, MaiZ);
}








