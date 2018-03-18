# TALLER PRIMER PARCIAL
### MATERIA ARQUITECTURA DE COMPUTADORES
#### INGENIERIA DE SISTEMAS Y COMPUTACION
###### Jornada Especial.

**6 .Que es un compilador?
```
Un compilador es un programa informático, que se encarga de traducir el código fuente de una aplicación.
Es decir convierte un lenguaje de programación "ALTO NIVEL" a Lenguaje maquina también conocido "BAJO NIVEL".
básicamente un compilador toma como entrada de texto escrito y da como salida otro texto. 
```
**25. Convierta el siguiente código a lenguaje ensamblador, máquina **SPARC V8** y hexadecimal.

**a.
 ```c                    D. Memory
 int main(){             |0000| MOV 8,%L0
 int a = 8;              |0004| MOV -14800,%L1
 int b = -14800;         |0008| MOV 33,%L2
 int c = 33;             |000C| ADD %L0,%L1,%L0
 if((a+b)<=b*16){        |0010| SLL %L1,4,%O0
 	c=a+(b*2);       |0014| CMP %L0,%00
	}else{           |0018| BG a OPP
	return b-78;     |001C| SUB %L1,78,%01
}                         OPP
	return a+c;      |0020| SLL %L1,1,%L1
}                        |0024| ADD %L0,%L1,%L2
                          EXIT
                         |0028| ADD %L0,%L2,%02
``` 
**b. (Se hace la corrección del return c/16 cambiando el c por la a)
 ```c
int main(){
	int a = 8;
	int b = -10;
	if(a!=b){
		return c/16;
	}
	else{
		return b*32;
	}
}
```
c.

 ```c
int main(){
	int a = -21180;
}
```
.


