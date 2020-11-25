{
//Declaração das variáveis
//Declaração das variáveis de entrada que receberão os PI's de  Geologia, Geomorfologia,  Pedologia, Uso/Cobertura Vegetal

Tematico  EntradaGeologia       ("Geologia");
Tematico  EntradaGeomorfologia  ("Geomorfologia");
Tematico  EntradaPedologia      ("Solos");
Tematico  EntradaUso            ("Uso_Terra");

//Declaração das variáveis que receberão os PI's  ponderados de Geologia,  Pedologia, Uso/Cobertura Vegetal

Numerico  GeologiaPonderado     ("MNT");
Numerico  PedologiaPonderado    ("MNT");
Numerico  UsoPonderado          ("MNT");
Numerico GeomorfologiaPonderado ("MNT");

//Declaraçao das variáveis que receberão as tabelas com os temas e seus respectivos valores de estabilidade/vulnerabilidade

Tabela  TabGeologia      (Ponderacao);
Tabela  TabPedologia     (Ponderacao);
Tabela  TabUso           (Ponderacao);
Tabela  TabGeomorfologia (Ponderacao);

//Instanciação 
//Recuperação dos PI's de Geologia, Geomorfologia, Pedologia e Uso/Cobertura Vegetal

EntradaGeologia  =       Recupere  (Nome = "Geolog2");
EntradaGeomorfologia  =  Recupere  (Nome = "Geomorfo2");
EntradaPedologia  =      Recupere  (Nome = "Solos2");
EntradaUso  =            Recupere  (Nome = "Uso1");

//Associação das variáveis que receberão os PI's ponderados, com os novos PI's 

GeologiaPonderado  =      Novo  (Nome = "geol_pond", ResX =120, ResY =120, Escala = 250000, Min = 0, Max = 3);
GeomorfologiaPonderado =  Novo  (Nome = "geom_pond", ResX =120, ResY =120, Escala = 250000, Min = 0, Max = 3);
PedologiaPonderado  =     Novo  (Nome = "solo_pond", ResX = 120, ResY =120, Escala = 250000, Min = 0, Max = 3);
UsoPonderado =            Novo  (Nome = "vege_pond", ResX =120, ResY =120, Escala = 250000, Min = 0, Max = 3);

//Associação das variáveis que receberão as tabelas de ponderação

TabGeologia  =  Novo  (CategoriaIni = "Geologia",  "Q-Aluviao-Indif" :  3.00,
                                                   "T-Form-Solimoes" :  2.60);
                                                                                   
                                                                                                                                                              
TabGeomorfologia  =  Novo  (CategoriaIni = "Geomorfologia", "A2-Terraco_fluvial" :           1.00, 
                                                            "B1-Colinosa_Crista_Tabular" :   1.60,
                                                            "B2-Colinosa_Crista"         :   1.80,
                                                            "C3-Planicie_Terraco-fluvial":   2.00,
                                                            "C2-Planicie-fluvial"        :   3.00);                                                                                                                                                                                                       
                                                           
TabPedologia  =  Novo  (CategoriaIni = "Solos",  "Pvae-Podz_ver_amar_eu"    : 2.00,
                                                 "Pvaa-Podz_ver_amar_al"    : 2.00,
                                                 "Hge-Hidro_gley_eu"        : 3.00);
                                                                                                                                                                            
TabUso  =  Novo (CategoriaIni = "Uso_Terra",  "Q-Queimada"                  : 3.00,
                                              "AA-Ativid_Agropec"           : 2.80,
                                              "C-CapoeiraN"                 : 2.10,
                                              "C-CapoeiraV"                 : 1.40,
                                              "Fapb-Aber_Palm_Bambu"        : 1.20,
                                              "Fapc-Aber_Palm_Cipo_Bambu"   : 1.20,
                                              "Faapb-Aluv_Aber_Palm_Bambu"  : 1.20,
                                              "Fapd-Aber_Palm-Densa"        : 1.10,
                                              "Faapd-Aluv_Aber_Palm-Densa"  : 1.10);
                                                                                                                                                                                                                                                                                                            
//Execução da operação de ponderação

GeologiaPonderado  =   Pondere  (EntradaGeologia, TabGeologia);
GeomorfologiaPonderado  =  Pondere  (EntradaGeomorfologia, TabGeomorfologia);
PedologiaPonderado  =  Pondere  (EntradaPedologia, TabPedologia);
UsoPonderado  =  Pondere  (EntradaUso, TabUso);
}

































































