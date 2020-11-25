{
//Programa para atualizar o atributo VEGE_CLS atraves do operador MAIORIA ZONAL
//Declaracao das variaveis

Objeto   zonas ("utb_Obj");
Cadastral   mapacadastral ("utb_Cad");
Tematico  uso ("Uso_Terra");

//Instanciacao
mapacadastral = Recupere (Nome = "utb");
uso = Recupere (Nome = "Uso1");

//Atribuicoes
zonas. "VEGE_CLS" = Atualize (uso, zonas OnMap mapacadastral, MaiZ);
}






