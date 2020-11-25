{
//Programa para atualizar o atributo VEGE_VUL atraves do operador MEDIA ZONAL
//Declaracao das variaveis

Objeto   zonas ("utb_Obj");
Cadastral   mapacadastral ("utb_Cad");
Digital   uso ("MNT");

//Instanciacao
mapacadastral = Recupere (Nome = "utb");
uso = Recupere (Nome = "vege_pond");
//Atribuicoes
zonas. "VEGE_VUL" = Atualize (uso, zonas OnMap mapacadastral, MaiZ);
}










