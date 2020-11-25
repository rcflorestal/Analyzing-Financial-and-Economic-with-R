{
//Programa para atualizar o atributo GEOL_VUL através do 
//operador MAIORIA ZONAL

//Declaração das variáveis

Objeto      zonas ("utb_Obj");
Cadastral   mapacadastral ("utb_Cad");
Digital     geol ("MNT");

//Instanciação

mapacadastral = Recupere (Nome = "utb");
geol = Recupere (Nome = "geol_pond");

//Atualização do atributo "GEOL_VUL" obtido pelo operador Maioria Zonal p/ cada objeto.

zonas. "GEOL_VUL" = Atualize (geol, zonas OnMap mapacadastral, MaiZ);
}









