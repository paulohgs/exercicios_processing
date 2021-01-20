int [] vec;
int tamVetor = 100;
void setup() {
	size(500, 500);
	vec = new int[tamVetor];
	for (int i = 0; i <= tamVetor; i++){
		vec[i] = i;
	}
	println(vec);
	for(int i = 0; i <= tamVetor; i++){
		if((vec[i]%2) == 0){
			apagaVetor(i);
			i--;		
		}
	}
	
	println(vec);
}
void apagaVetor(int valorApagado){
	int[] aux = new int[tamVetor-1];

	for(int i = 0; i < valorApagado; i++){
		aux[i] = vec[i];
	} 

	for(int i = valorApagado+1; i <= tamVetor; i++){
		aux[i-1] = vec[i];
	}
	vec = aux;
}
