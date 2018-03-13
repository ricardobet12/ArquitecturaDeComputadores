//Es la biblioteca para poder usar la sintaxis de c
#include <stdio.h>

//Es la funcion principal en donde llamaremos a la funcion RestaSucesiva
int main() {
	
	//Se crean 2 variables de tipo entero que es donde el usuario va a digitar los 2 numeros
	int n1,n2;
    //para que se imprima en pantalla y el usuario final lo pueda ver
    printf( "Introduzca primer numero (entero): ");
    //para que el valor que dio el usuario quede almaenado en una variable
    scanf( "%d", &n1 );
    printf("Introduzca segundo numero (entero):");
    scanf( "%d", &n2 );
    
    //se llama la funcion restaSucesiva y le pasamos como parametro las variables donde estan almacenadas los datos introducidos por el usuario
    restaSucesiva(n1,n2);
    
}

//funcion de tipo entero donde recibe 2 parametros de tipo entero
int restaSucesiva(int numero1,int numero2){
	//se crea la variable producto para que almacene el resultado del ciclo for
	int producto = 0;
	//variable de tipo entero que va ser donde empieze el ciclo en este caso va a empezar en 1 
	int i=1;
	//ciclo mientras i sea menor o igual a el segundo parametro producto se va ir sumando con el primer parametro 
	for(i; i<=numero2; i++){
		//producto cada vez que pase el ciclo en 1 a producto se le va a restar el primer parametro hasta terminar el ciclo
		//por lo tanto no hay nesecidad de la *
		producto = producto - numero1;
	}
	//imprime el resultado en pantalla con un mensaje
	    printf( "El resultado es: %d", producto);
}
