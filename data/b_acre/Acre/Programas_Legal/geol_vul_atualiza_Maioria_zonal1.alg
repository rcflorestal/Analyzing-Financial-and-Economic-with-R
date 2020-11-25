{
//This program update the attribute GEOL_VUL using the 
//Operator ATUALIZE(Update) and MAIORIA ZONAL (MaiZ)

//Declaration of Variables

Object      zonas ("utb_Obj");
Cadastral   mapacadastral ("utb_Cad");
Digital     geol ("MNT");

//Instantiation

mapacadastral = Retrieve (Name = "utb");
geol = Retrieve (Name = "geol_pondX");

//Updating the attribute "GEOL_VUL" of all objects 

zonas. "GEOL_VUL" = Atualize (geol, zonas OnMap mapacadastral, MaiZ);

}


