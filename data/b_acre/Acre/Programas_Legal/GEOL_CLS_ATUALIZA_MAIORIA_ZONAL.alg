{
// Programa para atualizar o atributo GEOL_CLS através do 
// operador MAIORIA ZONAL

{
// Declaração das variáveis

Objeto   zonas ("utb_Obj");
Cadastral   mapacadastral ("utb_Cad");
Tematico   geol ("Geologia");

//Instanciação

mapacadastral = Recupere (Nome = "utb");
geol = Recupere (Nome = "Geolog2");

//Operação (atribuição)

zonas. "GEOL_CLS" = Atualize (geol, zonas OnMap mapacadastral, MaiZ);
}






