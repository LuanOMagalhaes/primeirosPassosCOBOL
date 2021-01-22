       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA10.
      ***************************
      * Área de comentários
      * Author Luan Magalhães
      * OBJETIVO: RECEBER USUÁRIO E NÍVEL
      * UTILIZAR VARIÁVEL NÍVEL 88 - LÓGICA
      * DATA = 22/01/2021
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO PIC X(20) VALUE SPACES.
       77 WRK-NIVEL   PIC 9(02) VALUE ZEROS.
         88 ADM       VALUE 01.
         88 USER      VALUE 02.


       PROCEDURE DIVISION.
           DISPLAY 'DIGITE O USUÁRIO'
           ACCEPT WRK-USUARIO FROM CONSOLE.

           DISPLAY 'DIGITE O NÍVEL'
           ACCEPT WRK-NIVEL FROM CONSOLE.

           IF ADM
               DISPLAY 'NÍVEL - ADMINISTRADOR'
           ELSE
               IF USER
                   DISPLAY 'NÍVEL - USUÁRIO'
               ELSE
                   DISPLAY 'O VALOR INFORMADO NÃO É VÁLIDO'
               END-IF
           END-IF.

           STOP RUN.
