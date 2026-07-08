*##############################################################################
*##############  Periodic Boundary Condition (PBC) elements  ##################
*##############################################################################
// Periodic boundary condition elements
*if( (strcmp(GenData(Problem_mode),"Full_wave")==0) || (strcmp(GenData(Problem_mode),"Cold_plasma")==0) )
*if( (strcmp(GenData(_Element_type),"RME_1st")==0) || (strcmp(GenData(_Element_type),"RME_2nd")==0) || (strcmp(GenData(_Element_type),"LL2P_3sb")==0) )
*set cond Periodic_Boundary_Condition_(PBC) *elems *canrepeat
*loop elems *onlyInCond
*loop materials *NotUsed
*if(strcmp(MatProp(0),cond(Face))==0)
*set var MaterialNumber = MatNum
*endif
*end materials
PBC(*GlobalNodes(1),*GlobalNodes(2),*GlobalNodes(3),*ElemsMat,*MaterialNumber);
*end elems
*endif
*endif