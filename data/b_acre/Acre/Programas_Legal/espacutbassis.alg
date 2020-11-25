{
//GERACAO DE UM MNT A PARTIR DE ATRIBUTO NUMERICO
//DA TABELA DE OBJETOS (INDICADOR: UTB_RNA)

//DECLARAÇÕES

Objeto	zonas	( "utb_Obj" );
Cadastral	mapacadastral ( "utb_Cad" );
Digital     SaiMNT ("MNT");

//RECUPERA O PI CADASTRAL

mapacadastral     = Recupere (Nome = "utb");

//CRIA PI MNT VAZIO 

SaiMNT = Novo (Nome = "utbgrd", ResX =120, ResY =120, Escala = 250000, Min= 0.0000, Max= 3.0000);

// EXECUTA A OPERACAO

SaiMNT = Espacialize ( zonas."UTB_RNA" OnMap mapacadastral );
}



































