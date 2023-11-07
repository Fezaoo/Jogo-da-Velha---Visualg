algoritmo "JogoDaVelha"
var
   R:vetor [1..3,1..3] de caractere
   V:vetor [1..3,1..3] de inteiro
   W,S,T,RespX,J,C,L:inteiro
   VIT:caractere
Procedimento Mostrar ()
Inicio
   Para L<- 1 até 3 faca
      Para C<- 1 até 3 faca
         Se R[L,C]=("") entao
            Escreva (V[L,C]:4)
         Senao
            Escreva ("   ",R[L,C]:1)
         FimSe
      FimPara
      Escreval ()
      Escreval ("  ---|---|---")
   FimPara
FimProcedimento
inicio
   J<- 1
   Para L<- 1 até 3 faca
      Para C<- 1 até 3 faca
         V[L,C]<- J
         J<- J+1
      FimPara
   FimPara
   //Começo Verificação de Jogada Inválida
   Repita
      Mostrar ()
      Repita
         //Read User Answer
         Escreval ()
         Se T%2=0 entao
            Escreval ("Vez do X")
         Senao
            Escreval ("Vez do O")
         FimSe
         Escreval ()
         Escreva ("Em qual posição você quer jogar?: ")
         Leia (RespX)
         //End of Read User Answer
         Para L<- 1 até 3 faca
            Para C<- 1 até 3 faca
               Se RespX = V[L,C] entao
                  Se R[L,C] = ("O") então
                     Escreval  ("JOGADA INVÁLIDA!")
                     S<-1
                  Senao
                     Se R[L,C]= ("X") entao
                        Escreval ("JOGADA INVÁLIDA!")
                        S<-1
                     Senao
                        S<-0
                     FimSe
                  FimSe
               FimSe
            FimPara
         FimPara
      Até S=0
      //Fim Verificação de Jogada Inválida
      Limpatela
      //Substituição Pela Resposta
      Para L<- 1 até 3 faca
         Para C<- 1 até 3 faca
            Se RespX=V[L,C] entao
               Se T%2=0 entao
                  R[L,C]<- ("X")
               Senao
                  R[L,C]<- ("O")
               FimSe
            FimSe
         FimPara
      FimPara
      T<-T+1
      //Fim Substituição Pela Resposta

      //Verificação de Fim De Jogo

      // X
      Se ((R[1,1]=("X")) e (R[2,2]=("X")) e (R[3,3]=("X"))) entao
         VIT<- ("X")
         T<-9
      FimSe
      Se ((R[1,3]=("X")) e (R[2,2]=("X")) e (R[3,1]=("X"))) entao
         VIT<- ("X")
         T<-9
      FimSe
      Para W<- 1 até 3 faca
         Se ((R[W,1]=("X")) e (R[W,2]=("X")) e (R[W,3]=("X"))) entao
            VIT<- ("X")
            T<-9
         FimSe
      FimPara
      Para W<- 1 até 3 faca
         Se ((R[1,W]=("X")) e (R[2,W]=("X")) e (R[3,W]=("X"))) entao
            VIT<- ("X")
            T<-9
         FimSe
      FimPara
      //O
      Se ((R[1,1]=("O")) e (R[2,2]=("O")) e (R[3,3]=("O"))) entao
         VIT<- ("O")
         T<-9
      FimSe
      Se ((R[1,3]=("O")) e (R[2,2]=("O")) e (R[3,1]=("O"))) entao
         VIT<- ("O")
         T<-9
      FimSe
      Para W<- 1 até 3 faca
         Se ((R[W,1]=("O")) e (R[W,2]=("O")) e (R[W,3]=("O"))) entao
            VIT<- ("O")
            T<-9
         FimSe
      FimPara
      Para W<- 1 até 3 faca
         Se ((R[1,W]=("O")) e (R[2,W]=("O")) e (R[3,W]=("O"))) entao
            VIT<- ("O")
            T<-9
         FimSe
      FimPara
      //Fim Verificação de Fim De Jogo
   Até T=9
   Mostrar ()
   Escreval ()
   Se VIT=("X") entao
      Escreva (VIT," GANHOU!")
   Senao
      Se VIT=("O") entao
         Escreva (VIT," GANHOU!")
      Senao
         Escreva ("DEU VELHA")
      FimSe
   FimSe
fimalgoritmo
