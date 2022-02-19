
O que é permitido em cada coluna no cobol

- coluna de 1 a 6: Área livre - remarks.
- coluna 7: Área de indicação * comentário - continuação de linha.
- colunas de 8 a 11: Área A: divisões, seções, parágrafos, declaração de variáveis.
- colunas de 12 a 72: Área B: comandos.
- colunas de 73 a 80: Numeração interna do cobol.

Hierarquia de um programa cobol


1. PROGRAMA COBOL
 1.1 DIVISION
  1.1.1 SECTION
    1.1.1.1 PARÁGRAPH
      1.1.1.1.1 SENTENCE
        1.1.1.1.1.1 STATEMENT

O cobol possui 4 divisões

- IDENTIFICATION DIVISION: precisa ser escrita na coluna 8, ela precisa conter o nome do programa, o author é opcional
- ENVIRONMENT DIVISION: define o ambiente, podemos colocar que o cobol aceitara vírgulas como padrão nessa área de configuração do ambiente.
- DATA DIVISION: começa também na coluna 8 e dentro dessa secção temos 3 sessões: FILE SECTION: são variáveis que vão se relacionar com os arquivos, WORKING-STORAGE SECTION: trata de variáveis públicas e locais e por fim LINKAGE SECTION: secção que usamos para trocar variáveis entre programas, um programa chama o outro, na hora que um programa chama o outro, troca o valor
- PROCEDURE DIVISION: divisão da regra de negócio, tendo o que o programa deve fazer.

Declaração de variáveis 

- PIC A: aceita somente letras.
- PIC X: aceita números e letras 
- PIC 9: aceita somente números




caracteres de formatação de variáveis 


Z	This character can be used in the place of 9, whenever you want to display the value to spool/report. It replace all leading zeros with spaces while printing to output. Example: PIC ZZ999.

$	One $ character code can appear on leftmost position of a picture clause. Example: PIC $99999.

*	This character is similar to code character Z. This character will replace leading zeros with character *. Example: PIC ****99.

-	Only one - character can be used in one picture clause. This character can appear either at the leftmost or rightmost position of a picture clause. If value is negative, it will display the — sign. If the value is positive, it will display the space in the place of — sign. Example: PIC-9999. PIC 9999-.

+	This character has the same meaning of — sign. Only difference is it will display the + sign when the value is positive. Note that it will display — sign, when the value is negative. Example: PIC +9999. PIC 9999+.

. (period)	This character is used to represent decimal position in a numeric value. Example: PIC 9(4).9(2).

, (comma)	This character code is used to display amount values. Example: PIC ZZZ9,99,99.

