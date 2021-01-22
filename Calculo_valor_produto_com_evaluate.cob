       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA.
      ***************************
      * Área de comentários
      * Author Luan Magalhães
      * OBJETIVO: RECEBER PRODUTO, VALOR E CALCULAR O FRETE
      * IF/ELSE/ENDIF
      * DATA = 22/01/2021
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-PRODUTO PIC X(20) VALUE SPACES.
       77 WRK-UF PIC X(02) VALUE SPACES.
       77 WRK-VALOR PIC 9(06)V99 VALUE ZEROS.
      *PODEMOS UTILIZAR VÍRGULAS AO USAR O (V99) AO LADO DA CRIAÇÃO DA VARIÁVEL
       77 WRK-FRETE PIC 9(04)V99 VALUE ZEROS.
       77 WRK-FRETE-ED PIC ZZ VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'DIGITE O NOME DO PRODUTO...'
           ACCEPT WRK-PRODUTO FROM CONSOLE.

           DISPLAY 'DIGITE O VALOR...'
           ACCEPT WRK-VALOR FROM CONSOLE.

           DISPLAY 'INFORME O ESTADO A ENTREGAR'
           ACCEPT WRK-UF FROM CONSOLE.


           EVALUATE WRK-UF
               WHEN 'SP'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,05
               WHEN 'RJ'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,10
               WHEN 'MG'
                   COMPUTE WRK-FRETE = WRK-VALOR * 1,15
               WHEN OTHER
                   DISPLAY 'NÃO PODEMOS ENTREGAR'
               END-EVALUATE.

               DISPLAY '====================================='.
               IF WRK-FRETE NOT EQUAL 0
                    DISPLAY 'VALOR DO FRETE COM O PRODUTO ' WRK-FRETE
               END-IF.
           STOP RUN.
