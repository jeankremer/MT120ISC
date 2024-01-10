/*###########################################################################
 # Autor: Jean Michel Kremer Oviedo                                         #           
 # Data: 09/01/2024                                                         #
 # Descrição: Ponto de entrada - Grava o soliciante no pedido de compras.   #
 ##########################################################################*/     

User Function MT120ISC()

    // PEGA A POSIÇÃO DO CAMPO QUE IRA GRAVAR
	Local nPosProgram 	:= aScan(aHeader,{|x| Trim(x[2])=="C7_X_SOLIC"}) 
    
    // GRAVA A INFORMAÇÃO DO SOLICITANTE NO CAMPO 'C7_X_SOLIC'
	ACOLS[n,nPosProgram] := POSICIONE('SC1',1,XFILIAL('SC1')+SC7->C7_NUMSC,'C1_SOLICIT')
	
Return .T.
