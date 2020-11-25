{
//Programa para atualizar o atributo GEOM_CLS através do 
//operador MAIORIA ZONAL

//Declaracao das variáveis

Objeto   zonas ("utb_Obj");
Cadastral   mapacadastral ("utb_Cad");
Tematico   geomor ("Geomorfologia");

//Instanciação

mapacadastral = Recupere (Nome = "utb");
geomor = Recupere (Nome = "Geomorfo2");

//Atualização do atributo "GEOM_CLS" obtido pelo operador Maioria Zonal p/ cada objeto. 

zonas. "GEOM_CLS" = Atualize (geomor, zonas OnMap mapacadastral, MaiZ);
}







