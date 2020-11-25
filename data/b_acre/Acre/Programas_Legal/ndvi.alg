// Cálculo do Índice de Vegetação (ndvi) usando os operadores 
// de soma, subtração, divisão e multiplicação de bandas.

{
//Declaração

Image banda3("Imagem_TM_5");
Image banda4("Imagem_TM_5");
Image ndvi("Imagem_TM_5");

//Instanciação

banda3= Recupere(Nome="Tm3");
banda4= Recupere(Nome="Tm4");
ndvi= Novo(Nome="NDVI", ResX=30, ResY=30);

//Operação

ndvi = 127 * (banda4 - banda3)/(banda4 + banda3) + 128;
}



