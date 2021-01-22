       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA.
      ***************************
      * Área de comentários
      * Author Luan Magalhães
      * OBJETIVO: RECEBER 02 NOTAS, FAZER A MEDIA E IMPRIMIR STATUS, UTILIZANDO
      * IF/ELSE/ENDIF
      * DATA = 22/01/2021
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
      * V9 PARA CASA DECIMAL
       77 WRK-MEDIA PIC 9(04)V9 VALUE ZEROS.
       77 WRK-MEDIA-ED PIC ZZ VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOTA1 FROM CONSOLE.
           ACCEPT WRK-NOTA2 FROM CONSOLE.


           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) /2.
           MOVE WRK-MEDIA TO WRK-MEDIA-ED.
           DISPLAY 'MEDIA ' WRK-MEDIA-ED.
             IF WRK-MEDIA >= 6
                   DISPLAY 'APROVADO'
             ELSE
                 IF WRK-MEDIA >= 2
                 DISPLAY 'RECUPERAÇÃO'
             ELSE
                 DISPLAY 'REPROVADO'
             END-IF.

           STOP RUN.
