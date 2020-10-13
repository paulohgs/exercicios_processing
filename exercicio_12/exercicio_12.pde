int jogo [][] = new int [10][10];
for(int i = 0; i < jogo.length; i++){
      for(int j = 0; j < jogo[0].length; j++) {
              jogo[i][j] = (int) random(0,2);
                  print(jogo[i][j]," ");
                    }
                      println();
}

int posi1 = (int)random(0,11);
int posi2 = (int)random(0,11);
int jogada = jogo[posi1][posi2];
println();
println(posi1,",",posi2);
println("a jogada foi em: ",jogada);
