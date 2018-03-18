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
```
**a.
                          D. Memory
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
26. Convierta el siguiente código a lenguaje ensamblador, máquina **SPARC V8** y hexadecimal.
 ```c
int test(int x, int y, int w){          |0000| JMPL %07 8 %G0
	int z;				|0004| MOV 0 %L4
	z = x - y + w*4;		|0008| SUB %L3 %I0 %L3
	return z + 2;			|000C| SLL %I2 2 %00
}					|0010| ADD %L3 %00 %L4
					|0014| ADD %L4 2 %00
int main(){				MAIN
	int a = 4, b = 2, c = -15600;	|0018| MOV 4 %L0 
	int x = test(a,b,c);		|001C| MOV 2 %L1
	return x + 45;			|0020| MOV -15600 %L2
}					|0024| MOV 0 %L3
					|0028| CALL TEST
					|002C| ADD %L2 8 %02
					
FORMATO 3:                      OP  RD    OP3    RS1  I    IMM
JMPL %07 8 %G0 FORMATO 3       |10|00000|111000|01000|1|0000000001000|
FORMATO 3:                      OP  RD    OP3    RS1  I    IMM
MOV 0 %L4                      |10|00000|000010|00000|1|0000000000000|
FORMATO 3:                      OP  RD    OP3    RS1  I UNSIDED   RS2
SUB %L3 %I1 %L3                |10|10011|000100|10011|0|00000000|11001|
FORMATO 3:                      OP  RD    OP3    RS1  I    IMM
SLL %I2 2 %00                  |10|01000|100101|11010|1|0000000000001|

```					
