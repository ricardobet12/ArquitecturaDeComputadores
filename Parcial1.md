# TALLER PRIMER PARCIAL
### MATERIA ARQUITECTURA DE COMPUTADORES
#### INGENIERIA DE SISTEMAS Y COMPUTACION
###### Jornada Especial.

6 .Que es un compilador?
```
Un compilador es un programa informático, que se encarga de traducir el código fuente de una aplicación.
Es decir convierte un lenguaje de programación "ALTO NIVEL" a Lenguaje maquina también conocido "BAJO NIVEL".
básicamente un compilador toma como entrada de texto escrito y da como salida otro texto. 
```
23.Convertir el siguiente programa en lenguaje de máquina a lenguaje ensamblador y luego a lenguaje de alto nivel:
```
 a. 10100000000100000010000000000101
 op   rd       op3     rs1    i        inm
10 | 10000 | 000010 | 00000 | 1 | 0000000000101
OR %g0, 5, %L0
```
```
b. 10100010000100000011111111111010
op   rd       op3     rs1    i        inm
10 | 10001 | 000010 | 00000 | 1 | 1111111111010 
OR %g0, -6, %L1
```
```
c. 10010000000001000100000000010000
op   rd       op3     rs1    i    unused     rs2
10 | 01000 | 000000 | 10001 | 0 |00000000 | 10000
ADD %L1, %L0, %O0
```
``` 
int main(){
int a = 5;
int b = -6;
return a+b;
}
```

24.Solucione el siguiente programas en lenguaje ensamblador, lenguaje de máquina y hexadecimal, además coloque 
su dirección de memoria.
```                                         
int main(){                                    
        int i = 5;      i=%L0
        int b = -4;     b=%L1
        int c[100];     c=%L2
        int d[20];      d=%L3
        c[5] = i + 2;
        d[4] = b + 3;
        return c[5] + d[4] -i
```
```   
DIR                                   op   rd   op3    rs1  i     inm             HEX
00000   mov 5, %L0                    10|10000|000010|00000|1|0000000000101     A0102005
00004   mov -4, %L1                   10|10001|000010|00000|1|1111111111100     A2103FFC
00008   Ld[%L2 + (100*4)], %L4        11|10100|000000|10010|1|0000110010000     E8046190
0000C   Ld[%L3 + (20*4)], %L5         11|10101|000000|10011|1|0000001010000     EA04E050
00010   add %L0, 2, %L6               10|10110|000000|10000|1|0000000000010     AC042002
00014   St %L6, [%L2 + (5*4)]         11|10110|000100|10010|1|0000000010100     EC24A014
00018   add %L1, 3, %L1               10|10001|000000|10001|1|0000000000011     A2046003
0001C   St %L1,[%L3 + (4*4)]          11|10001|000100|10011|1|0000000010000     E224E010
00020   add %L2, %L3, %L2             10|10010|000000|10010|0|00000000|10011    A4048013
00024   SUB %L2, %L0, %O0             10|01000|000100|10010|0|00000000|10000    90248010
```

25. Convierta el siguiente código a lenguaje ensamblador, máquina **SPARC V8** y hexadecimal.
```
a.
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
Lenguaje maquina.    
op  rd    op3    rs1  i     inm                HEX
10|10000|000010|00000|1|0000000001000        A0102008
00|10001|100|1111111111111111110001          233FFFF1
10|10001|000010|10001|0|00000000|10001       A2144011                                     
10|10010|000010|00000|1|0000000010001        A4102011
10|10000|000000|10000|0|00000000|10001       A0040011 
10|01000|100101|10001|1|0000000000100        912C6004
10|00000|010100|10000|0|00000000|01000       80A40008
00|1|1010|010|0000000000000000000010         34800002
10|10001|100101|10001|1|0000000000001        A32C6001
10|10010|000000|10000|0|00000000|10001       A4040011
OPERACION 
10|01001|000100|10001|1|0000001001110        9224604E
EXIT
10|01010|000000|10000|0|00000000|10010       94040012
``` 
b. (Se hace la corrección del return c/16 cambiando el c por la a)
 ```
int main(){                            |0000 mov 8,%L0
	int a = 8;		       |0004 mov -10,%L1
	int b = -10;                   |0008 cmp %L0,%L1 
	if(a!=b){		       |000C BE a MULTIPLICAR 
		return a/16;	       |0010 SRL, %L0,4,%O0 
	}			       |MULTIPLICAR
	else{			       |001C SLL %L1,8,%O0
		return b*32;	       |EXIT
	}
}

op  rd    op3    rs1  i      inm                 HEX
10|10000|000010|00000|1|0000000001000          A0102008  
10|10000|000010|00000|1|1111111110110          A0103FF6
10|00000|010100|10000|0|00000000|10001         80A40011
00|1|0001|010|0000000000000000000010           22800002
10|01000|100110|10000|1|0000000000100          91342004
MULTIPLICAR
10|01000|100101|10001|1|0000000001000          912C6008
EXIT
```
c.

 ```
int main(){
	int a = -21180;
}
00000000000000000101001010111100
11111111111111111010110101000011
                               1
________________________________
11111111111111111010110101000100

1111111111111111101011 = 4194283
 
0101000100 = 324
SETHI                                             HEX
00|10000|100|1111111111111111101011             213FFFEB
OR
10|10000|000010|10000|1|0000101000100           A0142144

```

26. Convierta el siguiente código a lenguaje ensamblador, máquina **SPARC V8** y hexadecimal.
 ```
 
int test(int x, int y, int w){          	 |0000| JMPL %07 8 %G0
	int z;					 |0004| MOV 0 %L4
	z = x - y + w*4;			 |0008| SUB %L3 %I0 %L3
	return z + 2;				 |000C| SLL %I2 2 %00
}						 |0010| ADD %L3 %00 %L4
						 |0014| ADD %L4 2 %00
int main(){					  MAIN
	int a = 4, b = 2, c = -15600;		 |0018| MOV 4 %L0 
	int x = test(a,b,c);			 |001C| MOV 2 %L1
	return x + 45;				 |0020| MOV -15600 %L2
}						 |0024| MOV 0 %L3
						 |0028| CALL TEST
						 |002C| ADD %L2 8 %02
	
```
	
```
				
FORMATO 3:                      OP  RD    OP3    RS1  I    IMM
JMPL %07 8 %G0 FORMATO 3       |10|00000|111000|01000|1|0000000001000|  HEXA: 81C22008
FORMATO 3:                      OP  RD    OP3    RS1  I    IMM
MOV 0 %L4                      |10|00000|000010|00000|1|0000000000000|  HEXA: 80102000
FORMATO 3:                      OP  RD    OP3    RS1  I UNSIDED   RS2
SUB %L3 %I1 %L3                |10|10011|000100|10011|0|00000000|11001| HEXA: A624C019
FORMATO 3:                      OP  RD    OP3    RS1  I    IMM
SLL %I2 2 %00                  |10|01000|100101|11010|1|0000000000001|  HEXA: 912EA001
```
.
