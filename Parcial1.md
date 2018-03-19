# TALLER PRIMER PARCIAL
### MATERIA ARQUITECTURA DE COMPUTADORES
#### INGENIERIA DE SISTEMAS Y COMPUTACION
###### Jornada Especial.

1. ¿Que es una arquitectura de computadores?
```

```
2. Nombre las generaciones de los computadores y sus características más relevantes.

```

```
3. Segun Flynn ¿ Cuál es la clasificación de las arquitecturas?

```

```
4. Nombre las clases de aplicaciones de cómputo.

```

```
5. Muestre la clasificación de la jerarquía de un equipo de cómputo.

```

```
6. ¿Qué es un compilador?
```
Un compilador es un programa informático, que se encarga de traducir el código fuente de una aplicación.
Es decir convierte un lenguaje de programación "ALTO NIVEL" a Lenguaje maquina también conocido "BAJO NIVEL".
básicamente un compilador toma como entrada de texto escrito y da como salida otro texto. 
```
7. ¿ Defina qué es una instrucción?
```
Una instruccion es una especificacion que detallas las instrucciones de una unidad central de procesamiento  puede entender y ejecutar, o el conjunto de todos los comandos implementados por un diseño particular de una CPU.
```

8. ¿Cuales son los principios básicos de diseño de hardware de una arquitectura de cómputo, escriba una definición de cada uno?
```
1-La simplicidad favorece la regularidad:

2-Entre más pequeño es más rápido:

3-Hacer el caso común más rápido:

4-Buenos diseños demandan grandes compromisos:
```

9. ¿Qué es SPARCV8?

```

```
10. ¿Cuáles son las categorías de instrucciones de la arquitectura SPARCV8?
```
1 LOAD y STORE (La única manera de acceder a la memoria). Estas
instrucciones usan dos registros o un registro y una constante para
calcular la dirección de memoria a direccionar.

2 Instrucciones Aritméticas/Lógicas/Shift. Ejecutan operaciones
aritméticas, lógicas y de desplazamiento de bits. Estas instrucciones
calculan el resultado si es una función de 2 operandos y guardan el
resultado en un registro.

3 Operaciones del Coprocesador. Extrae las operaciones de punto
flotante desde las instrucciones del bus de datos y los coloca en la cola
para la FPU. 

4  Instrucciones de Control de Transferencia. Estas incluyen jumps,
calls, traps y branches.

5  Instrucciones de control de registros Read/Write. Estas instrucciones
se incluyen para leer y grabar el contenido de varios registros de control.
```
¿Qué es SPARCV8?

```

```
11. ¿Que tipos de registros se encuentran en SPARC V8?
```

```
12. ¿ Cuál es el número mínimo y máximo de registros que se puede implementar en la arquitectura SPARCV8?

```

```

13. ¿ Cuáles son las instrucciones de acceso a memoria de SPARCV8? de un ejemplo de cada uno.
```
 LOAD y STORE (La única manera de acceder a la memoria). Estas
instrucciones usan dos registros o un registro y una constante para
calcular la dirección de memoria a direccionar.
Ejemplo Load
int c[100];     c=%L2   -- Ld[%L2 + (100*4)], %L4
Ejemplo Store
c[5] = i + 2;        add %L0, 2, %L6               
                     St %L6, [%L2 + (5*4)] 

```

14. Represente los siguientes números en complemento a 2.
```
	a.5
	b.12890
	c.56900
	d.11
	e.140
```
15. Explique las instrucciones aritmético lógicas y su sintaxis en lenguaje ensamblador.
```
las instrucciones aritmético lógicas son las que permiten realizar procesos dependiendo si tiene un inmediato o no
dando un ejemplo ADD %L0,2,%L0 su formato debe estar llenado de la siguiente manera:
op  rd    op3    rs1  i      inm  
10|10010|000010|00000|1|0000000000010
dando el ejemplo ADD %L0,%L1,%L0 en el formato debe ir de la siguiente manera:
op    rd    op3   rs1  i unused   rs2
|10|10000|000000|10000|0|0000000|10001

```

16. Explique cada uno de los campos de los 3 formatos de la arquitectura SPARC V8.
```
Formato 1 - Instrucciones de salto:
La instrucción de llamada SPARC , utilizada para transferir el control a
cualquier parte del espacio de direcciones de 32 bits es así:
Sólo hay una instrucción en la máquina SPARC que es de la forma
número uno llamada (CALL) o instrucción de llamada. 

Formato 2 - Intrucciones Branch y Sethi:

Formato 3: - Instrucciones algebraicas:
Este tipo de instrucciones son las más comunes. Estas son las
instrucciones algebraicas..
```

17. ¿Qué diferencia hay entre el campo **op, op2 y op3**?

```

```
18. ¿Qué es **PSR** ?, explique cada uno de sus campos.

```

```
19. ¿ Qué es **ICC** y **CWP**?

```

```
20. ¿Qué es una instrucción sintética, de dos ejemplos?

```

```
21. ¿Qué significa el campo **a** para una instrucción BRANCH?.
```
Se utiliza el campo a para que la instruccion Branch no realize el Ds
```
22. ¿Para qué la instrucción **CALL** utiliza el registro %O7?.
```
El registro %O7 se utiliza como registro temporar para que el CALL le pueda pasar informacion al JMPL
```

**23.Convertir el siguiente programa en lenguaje de máquina a lenguaje ensamblador y luego a lenguaje de alto nivel:**
```
*a. 10100000000100000010000000000101*
OP   RD    OP3   RS1  I      IMM
10|10000|000010|00000|1|0000000000101
OR %g0, 5, %L0


*b. 10100010000100000011111111111010*
OP  RD     OP3   RS1  I    IMM
10|10001|000010|00000|1|1111111111010 
OR %g0, -6, %L1

*c. 10010000000001000100000000010000*
OP  RD     OP3   RS1  I  UNUSED   RS2
10|01000|000000|10001|0|00000000|10000
ADD %L1, %L0, %O0

int main(){
int a = 5;
int b = -6;
return a+b;
}
```

**24.Solucione el siguiente programas en lenguaje ensamblador, lenguaje de máquina y hexadecimal, además coloque 
su dirección de memoria.**
```                                         
int main(){                               
        int i = 5;      i=%L0      |0000   mov 5, %L0
        int b = -4;     b=%L1      |0004   mov -4, %L1
        int c[100];     c=%L2      |0008   Ld[%L2 + (100*4)], %L4        
        int d[20];      d=%L3      |000C   Ld[%L3 + (20*4)], %L5         
        c[5] = i + 2;              |0010   add %L0, 2, %L6               
        d[4] = b + 3;              |0014   St %L6, [%L2 + (5*4)]         
        return c[5] + d[4] -i      |0018   add %L1, 3, %L1       
                                   |001C   St %L1,[%L3 + (4*4)]          
                                   |0020   add %L2, %L3, %L2  
                                   |0024   SUB %L2, %L0, %O0             
   
OP  RD    OP3    RS1  I    IMM              HEX
10|10000|000010|00000|1|0000000000101     A0102005                   
10|10001|000010|00000|1|1111111111100     A2103FFC
11|10100|000000|10010|1|0000110010000     E8046190
11|10101|000000|10011|1|0000001010000     EA04E050
10|10110|000000|10000|1|0000000000010     AC042002
11|10110|000100|10010|1|0000000010100     EC24A014
10|10001|000000|10001|1|0000000000011     A2046003
11|10001|000100|10011|1|0000000010000     E224E010
10|10010|000000|10010|0|00000000|10011    A4048013
10|01000|000100|10010|0|00000000|10000    90248010
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
 
int test(int x, int y, int w){          	 |0000| JMPL %07, 8 ,%G0
	int z;					 |0004| SUB %I0,%I1,%L0
	z = x - y + w*4;			 |0008| SLL %I2, 2 ,%L1
	return z + 2;				 |000C| ADD %L0, %L1, %O1
}						 |0010| ADD %O1, 2, %O1
int main(){					  MAIN
	int a = 4, b = 2, c = -15600;		 |0014| MOV 4, %I0 
	int x = test(a,b,c);			 |0018| MOV 2 %L1
	return x + 45;				 |001C| CALL TEST
}						 |0020| MOV 2, %I1
						 |0024| ADD %O0,45,%O0
						 
	
```
	
```
Formatos
      op   rd   op3    rs1  i     imm                  HEX
JPML |10|00000|111000|01000|1|0000000001000          81C22008
      op   rd   op3    rs1  i     imm      
OR   |10|01001|000010|00000|1|0000101000100          92102144
      op  rd    op3    rs1  i  unused   rs2 
Sub  |10|10000|000100|11000|0|00000000|11001         A0260019 
      op  rd    op3    rs1  i     imm
SLL  |10|10001|100101|11010|1|0000000000010          A32EA002
      op  rd     op3   rs1  i  unused   rs2
Add  |10|01001|000000|10000|0|00000000|10001         92040011
      op  rd     op3   rs1  i     imm
Add  |10|01001|000000|01001|1|0000000000010          92026002
      op  rd    op3    rs1  i     imm
OR   |10|11000|000010|00000|1|0000000000100          B0102004

 SETHI
-15600= 1111111111111111110000|1100010000
             4'194.288            784
	     
       op   rd            operation                  	     
SETHI |00|11010|100|1111111111111111110000           353FFFF0
       op  rd    op3   rs1   i    imm
OR    |10|11010|000010|00000|1|0001100010000         34102310     
   
CALL  |01|111111111111111111111111111000|            7FFFFFF8 
       op   rd   op3   rs1   i      imm
OR    |10|11001|000010|00000|1|0000000000010         B2102002 
       op  rd     op3   rs1  i  unused  rs2  
ADD   |10|01000|000000|00000|1|0000000|101101        9000202D
```
27. Implemente la función **Pot** en lenguaje de alto nivel,lenguaje ensamblador **SPARC V8** y lenguaje de máquina SPARC V8 que realice la potencia de dos números enteros sin signo realizando llamados a la función multiplicacion hecha en clase.
```
int potencia (int num1, int num2) { 
INT i=0;
int valor  =0;
for(i=1;i<num2;i++){
   valor=valor+num1;
}
}

int main () { 
int num1 = 2;
int num2 = 2;
 potencia (num1, num2);
 
return potencia;
}
```
28. Implemente una función **Fact** en lenguaje de alto nivel, lenguaje ensamblador **SPARC V8** y lenguaje de máquina SPARC V8 que calcule el factorial de un número entero sin signo.
```
int fact(int n){             
if(n<0){
   return 0;
}else if(n>1){
         return n*fact(n-1)
}
int main(){
int a = 5;
return fact(a);
}

