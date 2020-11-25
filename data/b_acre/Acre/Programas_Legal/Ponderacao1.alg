{
// Declaration of the variables that will hold the thematic 
// input layers of Geology, Geomorphology, Soil, Vegetation(uso-terra)

Thematic  InputGeologia       ("Geologia");
Thematic  InputGeomorfologia  ("Geomorfologia");
Thematic  InputPedologia      ("Solos");
Thematic  InputUso            ("Uso_Terra");

// Declaration of the variable that will hold the 
// Weighting Layers of  Geology,  Pedology, 
// Use/Vegetation

Digital  GeologyWeighting     ("MNT");
Digital  PedologyWeighting    ("MNT");
Digital  UseWeighting         ("MNT");
Digital  GeomorphWeighting    ("MNT");

// Declaration of the variables that will hold the Weighting tables 
// with theme name and numeric values of stability / vulnerability 
// associated to each theme [1,3]

Table  TabGeology      (Weighting);
Table  TabPedology     (Weighting);
Table  TabUse           (Weighting);
Table  TabGeomorfologia (Weighting);

// Instantiation 
// Retrieve of Layers:
//	Geology, Geomorphology, Pedology e 
//	Use/ Vegetation

InputGeologia  =       Retrieve  (Name= "Geolog2");
InputGeomorfologia  =  Retrieve  (Name= "Geomorfo2");
InputPedologia  =      Retrieve  (Name= "Solos2");
InputUso  =            Retrieve  (Name= "Uso1");


// Creating new empty layers, which will hold the results
// of Weight operation 

GeologyWeighting  =      New (Name= "geol_pondX", ResX =120, ResY =120, 
						Scale= 250000, Min = 0, Max = 3);
GeomorphWeighting =      New (Name= "geom_pondX", ResX =120, ResY =120, 
						Scale= 250000, Min = 0, Max = 3);
PedologyWeighting  =     New (Name= "solo_pondX", ResX = 120, ResY =120, 
						Scale= 250000, Min = 0, Max = 3);
UseWeighting = 		 New (Name= "vege_pondX", ResX =120, ResY =120, 
					Scale= 250000, Min = 0, Max = 3);

//This Program transforms Thematic Maps in Digital Maps using Weighting Tables:



//Creating Weighting Tables for each category of data

TabGeology  =  New (CategoriaIni = "Geologia",  
				"Q-Aluviao-Indif" :  3.00,
                        "T-Form-Solimoes" :  2.60);
                                                                                                                                                                                                                                       
TabGeomorfologia  =  New (CategoriaIni = "Geomorfologia", 
				"A2-Terraco_fluvial" :           1.00, 
                  	"B1-Colinosa_Crista_Tabular" :   1.60,
                  	"B2-Colinosa_Crista"         :   1.80,
                  	"C3-Planicie_Terraco-fluvial":   2.00,
                  	"C2-Planicie-fluvial"        :   3.00);                                                                                                                                                                                                       
                                                           
TabPedology  =  New (CategoriaIni = "Solos",  
				"Pvae-Podz_ver_amar_eu"    : 2.00,
                		"Pvaa-Podz_ver_amar_al"    : 2.00,
                  	"Hge-Hidro_gley_eu"        : 3.00);
                                                                                                                                                                            
TabUse  =  New(CategoriaIni = "Uso_Terra",  
				"Q-Queimada"                  : 3.00,
                        "AA-Ativid_Agropec"           : 2.80,
                        "C-CapoeiraN"                 : 2.10,
                        "C-CapoeiraV"                 : 1.40,
                        "Fapb-Aber_Palm_Bambu"        : 1.20,
                        "Fapc-Aber_Palm_Cipo_Bambu"   : 1.20,
                        "Faapb-Aluv_Aber_Palm_Bambu"  : 1.20,
                       	"Fapd-Aber_Palm-Densa"        : 1.10,
                        "Faapd-Aluv_Aber_Palm-Densa"  : 1.10);
                                                                                                                                                                                                                                                                                                            
// Operation

GeologyWeighting       = Weight  (InputGeologia, TabGeology);
GeomorphWeighting    = Weight  (InputGeomorfologia, TabGeomorfologia);
PedologyWeighting    = Weight (InputPedologia, TabPedology);

UseWeighting	= Weight (InputUso, TabUse);
}














