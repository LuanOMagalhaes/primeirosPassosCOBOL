       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA.
      ***************************
      * Área de comentários
      * Author Luan Magalhães
      * OBJETIVO: RECEBER 02 NOTAS, FAZER A MEDIA E IMPRIMIR STATUS, UTILIZANDO
      * IF/ELSE/ENDIF
      * DATA = 22/01/2021
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NM1 PIC 9(03) VALUE ZEROS.
       77 WRK-NM2 PIC 9(03) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(03) VALUE ZEROS.
       PROCEDURE DIVISION.
       ACCEPT WRK-NM1 FROM CONSOLE.
       ACCEPT WRK-NM2 FROM CONSOLE.
       COMPUTE WRK-MEDIA = (WRK-NM1 + WRK-NM2) / 2.


           EVALUATE WRK-MEDIA
               WHEN 10
                   DISPLAY 'APROVADO - BONUS'
               WHEN 6 THRU 9
                   DISPLAY 'APROVADO'
               WHEN 2 THRU 5,5
                   DISPLAY 'RECUPERACAO'
              WHEN OTHER
                   DISPLAY 'REPROVADO'
           END-EVALUATE.
       STOP RUN.
