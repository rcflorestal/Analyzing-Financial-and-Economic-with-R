{
// Programa para atualizar o atributo GEOM_VUL através do 
// operador MAIORIA ZONAL

//Declaração das variaveis

Objeto      zonas ("utb_Obj");
Cadastral   mapacadastral ("utb_Cad");
Digital     geomor ("MNT");

//Instanciação

mapacadastral = Recupere (Nome = "utb");
geomor = Recupere (Nome = "geom_pond");

//Atualização do atributo "GEOM_VUL" obtido pelo operador Maioria Zonal p/ cada objeto. 

zonas. "GEOM_VUL" = Atualize (geomor, zonas OnMap mapacadastral, MaiZ);
}




