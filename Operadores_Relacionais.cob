       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA.
      ***************************
      * Área de comentários
      * Author Luan Magalhães
      * OBJETIVO: RECEBER LARGURA E COMRRIMENTO
      * IF/ELSE/ENDIF
      * DATA = 22/01/2021
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-LARGURA PIC 9(04)V99 VALUE ZEROS.
       77 WRK-COMPRIMENTO PIC 9(04)V99 VALUE ZEROS.
       77 WRK-AREA PIC 9(03)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY 'INFORME A LARGURA....'.
           ACCEPT WRK-LARGURA FROM CONSOLE.

           DISPLAY 'INFORME O COMPRIMETO....'.
           ACCEPT WRK-COMPRIMENTO FROM CONSOLE.

      *GREATER E > SÃO A MESMA COISA
           IF WRK-LARGURA >0 AND WRK-COMPRIMENTO GREATER 0
                COMPUTE WRK-AREA = WRK-LARGURA * WRK-COMPRIMENTO
                DISPLAY '--------------------------'
                DISPLAY 'AREA...' WRK-AREA
           ELSE
                DISPLAY 'FALTA INFORMAR ALGO'
           END-IF.

           DISPLAY '---------------------------'

           STOP RUN.
