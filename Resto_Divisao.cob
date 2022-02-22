       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA.
      ***************************
      * �rea de coment�rios
      * Author Luan Magalh�es
      * OBJETIVO: TESTAR OPERADORES ARITM�TICOS
      * DATA = 21/01/2021
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NM1 PIC 9(02) VALUE ZEROS.
       77 WRK-NM2 PIC 9(02) VALUE ZEROS.
       77 WRK-RESULT PIC 9(04) VALUE ZEROS.
       77 WRK-RESTO PIC 9(04) VALUE ZEROS.
       77 WRK-RESULT-ED PIC ZZ VALUE ZEROS.
       77 WRK-RESTO-ED PIC ZZ9 VALUE ZEROS.

       PROCEDURE DIVISION.
       0100-INICIAR.
       PERFORM 0200-ENTRADA.
       PERFORM 0300-PROCESSAR.
       STOP RUN.

       0200-ENTRADA.
       ACCEPT WRK-NM1 FROM CONSOLE.
       ACCEPT WRK-NM2 FROM CONSOLE.


       0300-PROCESSAR.
       DIVIDE WRK-NM1 BY WRK-NM2 GIVING WRK-RESULT
       REMAINDER WRK-RESTO.
       MOVE WRK-RESULT TO WRK-RESULT-ED.
       MOVE WRK-RESTO TO WRK-RESTO-ED.

       DISPLAY 'O RESTO E ...' WRK-RESTO-ED.
