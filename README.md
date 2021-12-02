# Notas del Curso de Introducción al Desarrollo Blockchain: **Smart Contracts.**

Profesor Felipe Pardo @anfepar

![](https://static.platzi.com/media/avatars/Platzi-f730e65b-e92b-44d3-81c0-5c59c4dc4658.png) ![](https://static.platzi.com/media/learningpath/badges/29fa8885-7536-44ba-8aea-7b32c8e39cc8.jpg) ![](https://static.platzi.com/media/achievements/piezas-introduccion-desarrollo-blockchain-contratos-inteligentes_badge-3fccc149-b0a.png)

## Tabla de Contenidos

- [¿Qué son los Smart Contracts?](#qué-son-los-smart-contracts)
  - [Proyecto del curso: contrato para crowdfunding](#proyecto-del-curso-contrato-para-crowdfunding)
  - [Ethereum](#ethereum) 
  - [EVM - Ethereum Virtual Machine](#evm-ethereum-virtual-machine) 
- [Solidity](#solidity)
  - [¿Qué es Solidity](#qué-es-solidity)
  - [Estructura de un contrato en Solidity](#estructura-de-un-contrato-en-solidity) 
  - [Variables de estado y variables globales](#variables-de-estado-y-globales) 
  - [Funciones](#funciones)
  - [Memory, storage y call data](#memory-storage-y-call-data)
  - [Modificadores de funcones](#modificadores-de-funciones)
  - [Eventos](#eventos)
  - [Errores](#errores)
  - [Struct types](#struct-types)
  - [Enum types](#enum-types)
  - [Arrays y mappings](#arrays-y-mappings)
  - [Terminando nuestro contrato](#terminando-nuestro-contrato)
- [Desplegando nuestro smart contract](#desplegando-nuestro-smart-contract)
  - [Cómo desplegar nuestro contrato en Ropstein](#cómo-desplegar-nuestro-contrato-en-ropstein)
  - [Cómo desplegar nuestro contrato en Truffle](#cómo-desplegar-nuestro-contrato-en-truffle)

# ¿Qué son los Smart Contracts?

[![1](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/1.jpg?raw=true "1")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/1.jpg?raw=true "1")

[![2](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/2.jpg?raw=true "2")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/2.jpg?raw=true "2")

[![3](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/3.jpg?raw=true "3")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/3.jpg?raw=true "3")

## Proyecto del curso: contrato para crowdfunding

- **¿Qué construiremos?**

En este curso construiremos un smart contract que nos permita hacer crowdfunding de proyectos usando Ether.

- **¿Qué es crowdfunding?**

Es un mecanismo que emplean proyectos/empresas para levantar capital en pequeñas cantidades hasta llegar a una meta especifica.

Los dueños del proyecto comparten de qué trata, cuál es la cantidad de dinero que quieren levantar y como invertirían este dinero.

Posteriormente publican el proyecto para que un gran número de personas realicen pequeños aportes hasta llegar a la meta objetivo de fundraising.

- **¿Cómo nuestro smart contract hará esto?**

Los smart contracts permiten definir las reglas de negocio sin necesidad de un intermediario y definiendo la lógica y reglas de operación utilizando un código escrito.

Usando un smart contract definiremos cómo se crean los proyectos y cómo cualquier persona con una wallet dentro de Ethereum puede aportar Ether a un proyecto.

La cantidad de Ether que se las personas aporten a un proyecto será enviado a una wallet que corresponderá a los owners del proyecto, y se llevará la cuenta de la cantidad total aportada.

- **¿Y por qué hacer esto en Blockchain?**

Gracias a las ventajas que ofrece Blockchain tendremos un sistema de crowdfunding confiable y seguro, pues cada uno de los aportes llegaran automáticamente a quién corresponde y, además, siempre habrá trazabilidad de cómo se distribuyen estos fondos.

- **¿Cómo lo iremos construyendo?**

A medida que avanza el curso y vas aprendiendo conceptos vamos a ir integrando estos conceptos a nuestro smart contract. Podrás usar RemixIDE o cualquier otro entorno de trabajo visto en el [Curso de Prework para Desarrollo de Aplicaciones Blockchain.](https://github.com/hackmilo/Notas---Prework-para-Desarrollo-de-Aplicaciones-Blockchain "Curso de Prework para Desarrollo de Aplicaciones Blockchain.")

Al final tendremos un smart contract muy robusto que desplegaremos en una red de prueba. Comparto el [repositorio en GitHub/anfepar](https://github.com/anfepar/SmartContractsPlatzi) en donde encontrarás el código visto en las clases y también el que iremos desarrollando para construir el contrato inteligente.

## Ethereum

Ethereum es un acceso abierto al dinero digital y a los servicios de información para todos, sin importar su origen o ubicación. Es una tecnología creada por la comunidad tras la criptomoneda ether (ETH) y miles de aplicaciones que puedes usar hoy.

Ethereum es una tecnología que te permite enviar criptomonedas a cualquier persona por una pequeña comisión. También potencia aplicaciones que cualquiera puede usar y nadie puede derribar.

Es la blockchain programable del mundo.

Ethereum se construye sobre la innovación de Bitcoin, pero con grandes diferencias.

Ambos te permiten utilizar dinero digital sin proveedores de pago o bancos. Pero Ethereum es programable, así que también puedes utilizarlo para diferentes activos digitales, incluido Bitcoin.

Esto también significa que Ethereum es más que pagos. Ethereum es un mercado de servicios financieros, juegos y aplicaciones que no pueden robar tu información o censurarte.

## EVM - Ethereum Virtual Machine

Entorno de ejecución aisalado donde se compilan y corren los Smart Contracts (Esto es importante ya que a diferencia de BTC que almace estados de cuenta, ETH almacena estados de máquina que son los que permiten que se pueda correr código)

**GAS (fee)**

Es la recompensa para los mineros cuando minan un bloque.
Mide el esfuerzo de ejecutar una operación (Una operación más compleja va necesitar más gas que una menos compleja).
Depende de que tan rápido se quiere ejecutar, algo así como un tipo de prioridad.

# Solidity

## ¿Qué es Solidity?

Solidity es un lenguaje de programación de alto nivel orientado a objetos, es un lenguaje de corchetes fuertemente influenciado por C ++, Python y JavaScript, y está diseñado para interactuar con la EVM.

[![4](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/4.png?raw=true "4")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/4.png?raw=true "4")

Documentación oficial de Solidity en la página oficial de Ethereum: https://ethereum.org/en/developers/docs/smart-contracts/languages/#solidity

Documentación de Solidity en español: https://solidity-es.readthedocs.io/es/latest/

Página oficial y documentación de Solidity: https://soliditylang.org/ https://solidity-es.readthedocs.io/es/latest/

Ejemplos del lenguaje desde lo simple hasta díficil: https://solidity-by-example.org/

Estandares más utilizados para ahorrar tiempo con nuestros trabajos: https://openzeppelin.com/contracts/

Recurso de la comunidad para aprender con CriptoZombies: https://cryptozombies.io/es/

## Estructura de un contrato en Solidity

**Licencia**

- Permite definir que permisos tienen otros usuarios sobre nuestro código, ya que los Smart Contracts son de código abierto y cualquiera los puede ver.

**Pragmas**

- Definen la versión del compilador compatible.
- Es solo para validación.
- Usan la misma sintaxis de npm >, <, = , >= , <=
  https://docs.npmjs.com/cli/v6/using-npm/semver 

**Keyword Contract**

- Define cuando inicia o termina el contrato.

[![5](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/5.png?raw=true "5")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/5.png?raw=true "5")

## Variables de estado y variables globales

**Tipos de variables:**

**bool - Booleanos**

  - true - false
  - ! (negación)
  - && (and)
  - || (or)
  - == (igualdad)
  - != (Desigualdad)


**uint/int - Enteros**

Hay dos tipos:

  - uint (Todos los enteros positivos)
  - int (Todos los enteros positivos y negativos)


**Address**

address payable - Dirección de referencia que identifica smart wallet en la red de Ethereum.


**String**

Cadena de texto


**Visibilidad**

Las variables con el identificador **private** podrán ser usadas dentro del contrato, las variables con el identificador **public** podrán ser usadas dentro y fuera del contrato, por defecto son private.


**Variables Globales**

  - block - Información del bloque
  - msg - Información de la llamada
  - tx - Información sobre la transacción actual
  
**Propiedades más interesantes:**

//Limite de gas del bloque actual 
`block.gaslimit`

//Información de la llamada
`msg.data`

//Dirección del remitente 
`msg.sender`

//Número de wei enviado 
`msg.value`

//Costo en gas de la transacción 
`tx.gasprice`

Ejemplo de Smart Contract en Remix IDE = Integrated Development Environment. Es la opción ideal para comenzar a desarrollar en lenguajes como Solidity de manera web. 
https://remix.ethereum.org/#optimize=false&runs=200&evmVersion=null&version=soljson-v0.7.0+commit.9e61f92b.js

Para comenzar se crea una carpeta **Variables,** se crea archivo de Solidity llamado **Identity.sol** y se escribe el siguiente código donde se declaran variables de tipo `public` para luego inicializarlas con un constructor:

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7 <0.9.0;

contract variables {
    uint public age;
    int public number;
    string public firstName;
    bool public isDeveloper;
    address public wallet;
    uint public valueWei;
    uint public valueGas;
    
    // Constructor va a Inicializar las variables de estado
    constructor(uint _age, int _number, string memory _firstName, bool _isDeveloper) payable{
        age = _age;
        number = _number;
        firstName = _firstName;
        isDeveloper = _isDeveloper;
        wallet = msg.sender; // Dirección del remitente 
        valueWei = msg.value; // Número de wei enviado 
        valueGas = tx.gasprice; // Costo en gas de la transacción 
    }
}

```

[![6](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/6.png?raw=true "6")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/6.png?raw=true "6")

En la pestaña de Compilación el motor estudiará y revisará el código en busca de errores para continuar, es necesario que el lenguaje pragma sea la misma versión del compilador, entre algunas otras opciones.

[![7](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/7.png?raw=true "7")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/7.png?raw=true "7")

En la pestaña de Deploy envía a la red con que se comunica estableciendo un ambiente de trabajo, la cuenta de prueba con recursos, el gas o impuesto máximo, entre otros parametros. Recordar poner los datos correctos en Deploy (bool - True/False).

[![8](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/8.png?raw=true "8")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/8.png?raw=true "8")

Una vez desplegado el contrato se puede revisar variable por variable la información asignada para esta transacción:

[![9](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/9.png?raw=true "9")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/9.png?raw=true "9")

## Estructuras de control

- **If - Else** (Se utiliza cuando se cumple una condición u otra)

```
if(aplicarBloqueador){
    meQuemo = false;
} else {
    meQuemo = true;
}
```

- **While** (Permite ejecutar código cada vez que se cumpla una condición repetidamente)

```
uint veces =1;
while(!aplicarBloqueador && veces <=12){
    aplicarBloqueador = preguntar();
    veces = veces +1;
}
```

- **For** (Permite ejecutar código mientras se cumpla una condidicón, pero a diferencia del while es que debes definir como quieres que se cumpla esta condición )

```
for(uint i=0; i < 6; i++){
    aplicarBloqueador = preguntar();
}
```
## Funciones

Las funciones son secciones de un programa que se encargar de ejecutar instrucciones de forma independiente. Estas pueden recibir parametros para usarlos dentro del código y pueden retornar una o más varibales. (Conocido como input y output)

Tienen **visibilidad** al igual que las variables de estado, pueden ser:

- **Public:** Totalmente accesible, sea cual sea el origen.
- **Private:** Accesible únicamente a través de una función incluida en el mismo contrato.
- **Internal:** Accesible únicamente a través de otra función incluida en el mismo contrato, o desde una función de un contrato que deriva del mismo. NO es accesible desde un mensaje de un contrato externo o una transacción externa.
- **External:** Accesible desde una cuenta de propiedad externa y a través de un mensaje (llamada desde otro contrato). No es accesible desde una función del mismo contrato o uno derivado del mismo.

Ejemplos de funciones publica y privada:

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Number {
    //Public function
    function getNumber() public returns (int number){
        number = 1948;
    }
    function changeNumber() public returns (int number){
        number = getNumber() * -1;
    }
```
[![10](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/10.png?raw=true "10")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/10.png?raw=true "10")

```
 //Private function
    function getNumberPrivate() private returns (int number){
        number = 1948;
    }
    function changeNumberPrivate() public returns (int number){
        number = getNumber() * -1;
    }
```
[![11](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/11.png?raw=true "11")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/11.png?raw=true "11")

**Keywords**

- **payable:** La usamos cuando necesitamos dentro de una función enviar ether alguna dirección de la blockchain.

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7 <0.9.0;

contract Fund {
	//Payable function
    function sendEther(address payable receiver) public payable{
      receiver.transfer(msg.value);
    }
}

```

[![12](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/12.png?raw=true "12")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/12.png?raw=true "12")

- **view:** La usamos para definir que una función no va modificar las variables de estado, sino que sólo las puede leer.

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7 <0.9.0;

contract Asset {
    string name = "Platzicoin";
    function getName() public view returns (string memory){
        return name;
    }
}
```

[![13](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/13.png?raw=true "13")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/13.png?raw=true "13")

- **pure:** Se usa para definir que una función no lee ni modifica ninguna de las variables de estado y además no usa ninguna variable global.

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7 <0.9.0;

contract Sum {
    int number = 100;
    function sum(int a, int b) public pure returns(int result){
        result = a + b + number;
    }
}
```

[![14](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/14.png?raw=true "14")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/14.png?raw=true "14")

## Memory, storage y call data

[![15](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/15.png?raw=true "15")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/15.png?raw=true "15")

- **Storage:** Queda guardada dentro de la blockchain, siempre vamos a poder obtener el valor almacenado, pues este nunca se va borrar. Memoria Persistente.

- **Memory (Modificable):** Solo existe mientras se llama una función y no podemos acceder de nuevo a el dato. Memoria No Persistente.

- **Call data (inmodificable):** Solo existe mientras se llama la función.

- Por defecto las variables de estado se almacenan en el storage y los parámetros en memory.

#### Reto #1

- Crea un contrato y agrega variables de estado. 
- Crea una función **fundProject** que permita enviar ether a un proyecto. 
- Crea una función **changeProjectState** que permita cambiar el estado de un proyecto.

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//Se crea contrato y se asignan variables de estado
contract CrowdFunding {
    string public id; //Referencia del proyecto
    string public name; //Nombre actual del proyecto
    string public description; 
    address payable public author; //Autor o representante del proyecto
    string public state = "Opened"; //Estado abierto para recibir fondos
    uint256 public funds; //Para almacenar fondos
    uint256 public fundraisingGoal; //Define cuanto se espera ganar con la ronda de fundraising
    
    //Para quien desplegue el contrato pueda asignar valor inicial a las variables
    constructor(string memory _id, string memory _name, string memory _description, uint256 _fundraisingGoal) {
        id = _id;
        name = _name;
        description = _description;
        fundraisingGoal = _fundraisingGoal;
        author = payable(msg.sender); //Para que pueda enviar ether a esta dirección 
    }

    //Para que cualquiera la pueda ver y enviar Ether sin problema
    function fundProject() public payable {
        author.transfer(msg.value); //Para transferir el valor de ether dado por el usuario al autor (wei)
        funds += msg.value; //Se agrega a los fondos el valor recibido
    }

    //Recibe un nuevo estado, se guarda variable newState para optimizar gas usado en la llamada
    function changeProjectState(string calldata newState) public {
        state = newState;
    }
}
```
Se crea archivo en Remix IDE con el código y procede a Compilar: 

[![16](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/16.png?raw=true "16")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/16.png?raw=true "16")

Después se procede a hacer deploy del contrato teniendo en cuenta la información de ID, Name, Description y FunraisingGoal:

[![17](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/17.png?raw=true "17")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/17.png?raw=true "17")

Para probar el envío de fondos se enviará desde otra de las wallets de prueba la cantidad de 1 wei y lo verificamos en **funds:**

> $1 ether == $1.000.000.000.000.000.000 wei

[![18](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/18.png?raw=true "18")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/18.png?raw=true "18") [![19](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/19.png?raw=true "19")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/19.png?raw=true "19")

Ahora con la cuenta principal se cambia el estado del proyecto de Opened a Closed:

[![20](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/20.png?raw=true "20")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/20.png?raw=true "20")

## Modificadores de funciones

Nos permiten hacer validaciones antes de ejecutar nuestra función, de esta forma podemos evitar comportamientos inesperados o que la función sea ejecutada por alguien que no tiene permisos de hacerlo.

Ejemplo:

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Permission {
    address private owner;
    string public projectName = "Platzi";

    //Guarda la dirección de quien despliega el contrato como owner
    constructor() {
        owner = msg.sender;
    }

    //Valida que el que puede cambiar el nombre del proyecto es el owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can change the project name"); // require tiene un parametro y un mensaje al usuario
        //la función es insertada en donde aparece este símbolo
        _;
    }

    //Solo el owner puede cambiar el nombre del proyecto onlyOwner
    function changeProjectName(string memory _projectName) public onlyOwner {
        projectName = _projectName;
    }
}
```
Prueba de cambio de nombre con otra cuenta diferente:

[![21](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/21.png?raw=true "21")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/21.png?raw=true "21")

Prueba de cambio de nombre con la cuenta Principal del owner:

[![22](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/22.png?raw=true "22")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/22.png?raw=true "22")

#### Reto #2

- Usa un **function modifier** para permitir que solo el autor pueda cambiar el estado. 
- Usa un **function modifier** para evitar que un autor pueda aportar a su propio proyecto.

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//Se crea contrato y se asignan variables de estado
contract CrowdFunding {
    string public id; //Referencia del proyecto
    string public name; //Nombre actual del proyecto
    string public description; 
    address payable public author; //Autor o representante del proyecto
    string public state = "Opened"; //Estado abierto para recibir fondos
    uint256 public funds; //Para almacenar fondos
    uint256 public fundraisingGoal; //Define cuanto se espera ganar con la ronda de fundraising
    
    //Para quien desplegue el contrato pueda asignar valor inicial a las variables
    constructor(string memory _id, string memory _name, string memory _description, uint256 _fundraisingGoal) {
        id = _id;
        name = _name;
        description = _description;
        fundraisingGoal = _fundraisingGoal;
        author = payable(msg.sender); //Para que pueda enviar ether a esta dirección 
    }
    
    //Modificador que valida que la variable de estado de autor es igual a la dirección de quien llama la función
    modifier isAuthor() {
        require(author == msg.sender, "You need to be the project author");
        _;
    }

    //Modificador que valida que la variable de estado de autor es diferente a la dirección de quien llama la función
    modifier isNotAuthor() {
        require(
            author != msg.sender,
            "As author you can not fund your own project"
        );
        _;
    }

    //Para que cualquiera la pueda ver y enviar Ether sin problema
    function fundProject() public payable isNotAuthor{ //Autor no puede aportar a su propio proyecto
        author.transfer(msg.value); //Para transferir el valor de ether dado por el usuario al autor (wei)
        funds += msg.value; //Se agrega a los fondos el valor recibido
    }

    //Recibe un nuevo estado, se guarda variable newState para optimizar gas usado en la llamada
    function changeProjectState(string calldata newState) public isAuthor{ //Solo autor es quien modifica
        state = newState;
    }
}
```
A nuestro código del proyecto de CrowdFunding le agregamos las lineas subrayadas en amarillo que corresponden a los modificadores y se compila:

[![23](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/23.png?raw=true "22")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/23.png?raw=true "23")

Una vez compilado se despliega el contrato con el valor de FundrisinGoal de 1 Eth:

[![24](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/24.png?raw=true "24")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/24.png?raw=true "24")

Como prueba de que el autor no puede fondear, desde la cuenta de owner se intenta fondear el proyecto con 1 wei:

[![25](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/25.png?raw=true "25")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/25.png?raw=true "25")

Tambien probamos que desde otra cuenta diferente no se pueda cambiar el nombre del proyecto:

[![26](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/26.png?raw=true "26")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/26.png?raw=true "26")

## Eventos

Permite conectar lo que pasa dentro de la Blockchain con el exterior porque a tráves de un protocolo otras aplicaciones se pueden suscribir a ellos y escuchar todo lo que está pasando en el Smart Contract.

Se usan para:

- Registrar cambios que se hicieron
- Feedback (Retroalimentación)

Ejemplo:

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Asset {
    string public tokenName = "CryptoPlatzi";
	//event palabra clave, entre parentesis los cambios 
    event ChangeName(address editor, string newName);

    function changeName(string memory newName) public {
        tokenName = newName;
		//Despues de cambiar el nombre se emite el editor y el cambio de nombre
        emit ChangeName(msg.sender, newName);
    }
}
```

[![27](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/27.png?raw=true "27")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/27.png?raw=true "27")

#### Reto #3

- Agrega eventos a las funciones de fundProject y changeProjectState.  
- Piensa en qué información será relevante para los suscriptores del evento.

A nuestro código del proyecto de CrowdFunding le agregamos las lineas que corresponden a los eventos, emiciones y se compila:

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//Se crea contrato y se asignan variables de estado
contract CrowdFunding {
    string public id; //Referencia del proyecto
    string public name; //Nombre actual del proyecto
    string public description; 
    address payable public author; //Autor o representante del proyecto
    string public state = "Opened"; //Estado abierto para recibir fondos
    uint256 public funds; //Para almacenar fondos
    uint256 public fundraisingGoal; //Define cuanto se espera ganar con la ronda de fundraising

    //Parametros de identificador de proyecto y el valor
    event ProjectFunded(string projectId, uint256 value);

    event ProjectStateChanged(string id, string state);
    
    //Para quien desplegue el contrato pueda asignar valor inicial a las variables
    constructor(string memory _id, string memory _name, string memory _description, uint256 _fundraisingGoal) {
        id = _id;
        name = _name;
        description = _description;
        fundraisingGoal = _fundraisingGoal;
        author = payable(msg.sender); //Para que pueda enviar ether a esta dirección 
    }
    
    //Modificador que valida que la variable de estado de autor es igual a la dirección de quien llama la función
    modifier isAuthor() {
        require(author == msg.sender, "You need to be the project author");
        _;
    }

    //Modificador que valida que la variable de estado de autor es diferente a la dirección de quien llama la función
    modifier isNotAuthor() {
        require(
            author != msg.sender,
            "As author you can not fund your own project"
        );
        _;
    }

    //Para que cualquiera la pueda ver y enviar Ether sin problema
    function fundProject() public payable isNotAuthor{ //Autor no puede aportar a su propio proyecto
        author.transfer(msg.value); //Para transferir el valor de ether dado por el usuario al autor (wei)
        funds += msg.value; //Se agrega a los fondos el valor recibido
        emit ProjectFunded(id, msg.value); //Cantidad en wei que recibió el proyecto
    }

    //Recibe un nuevo estado, se guarda variable newState para optimizar gas usado en la llamada
    function changeProjectState(string calldata newState) public isAuthor{ //Solo autor es quien modifica
        state = newState;
        emit ProjectStateChanged(id, newState); //Identificador del proyecto y su estado
    }
}

```

Una vez compilado se despliega el contrato con el valor de FundrisinGoal de 1 Eth:

[![28](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/28.png?raw=true "28")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/28.png?raw=true "28")

Con otra cuenta secundaria se fondea con el valor de 1 gwei y se podrá ver reflejado el id del proyecto y el valor del fondo:

[![29](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/29.png?raw=true "29")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/29.png?raw=true "29")

Con la cuenta del owner se prueba cambiando el estado del proyecto a closed: 

[![30](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/30.png?raw=true "30")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/30.png?raw=true "30")

## Errores

- Dan información específica sobre los fallos.
- Revierte los cambios aplicados para dar conciencia a la ejecución (El valor del gas cobrado por la ejecución no se devuelve a quien llama el contrato).

Ejemplo para definir y enviar errores con Remix:

```
// SPDX-License-Identifier: GPL-3.0
 pragma solidity >=0.7.0 <0.9.0;
 
 contract asset {
    string public state = 'onSale';

    //Error que define como parametro los valores relevantes 
    error StateNotDefined(uint unit);

    function changeState(uint newState) public {
        //paramtro condicional y parametro mensaje de Error
        require(newState == 0 || newState == 1, 'This state is not defined');
        if(newState == 0){
            state = 'onSale';
        }else if(newState == 1){
            state = 'notForSale';
        } else {
            //revert lanza el error 
            revert StateNotDefined(newState);
        }
    }
 }
```

Una vez escrito se compila y se intenta cambiar el estado a un número diferente "2", donde se lanza un mensaje error. 

[![31](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/31.png?raw=true "31")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/31.png?raw=true "31")

[![32](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/32.png?raw=true "32")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/32.png?raw=true "32")

#### Reto #4 

- Crea una validación para que no se pueda aportar al proyecto si el estado es 'Closed'.  
- Crea una validación para que no se pueda actualizar un estado, este debe ser diferente al actual.  
- Crea una validación para que no se puedan hacer aportes con valor cero.

Para comenzar es necesario cambiar el tipo de variable de "state" y "newState" desde string a uint256 para que puedan ser comparados de manera fácil, las lineas requeridas de require se posicionan al comienzo de cada una de las funciones de fundProject y ChangeProjectState:

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//Se crea contrato y se asignan variables de estado
contract CrowdFunding {
    string public id; //Referencia del proyecto
    string public name; //Nombre actual del proyecto
    string public description; 
    address payable public author; //Autor o representante del proyecto
    uint256 public state; //Estado tipo uint para que sea fácil de comparar
    uint256 public funds; //Para almacenar fondos
    uint256 public fundraisingGoal; //Define cuanto se espera ganar con la ronda de fundraising

    //Parametros de identificador de proyecto y el valor
    event ProjectFunded(string projectId, uint256 value);

    event ProjectStateChanged(string id, uint256 state);
    
    //Para quien desplegue el contrato pueda asignar valor inicial a las variables
    constructor(string memory _id, string memory _name, string memory _description, uint256 _fundraisingGoal) {
        id = _id;
        name = _name;
        description = _description;
        fundraisingGoal = _fundraisingGoal;
        author = payable(msg.sender); //Para que pueda enviar ether a esta dirección 
    }
    
    //Modificador que valida que la variable de estado de autor es igual a la dirección de quien llama la función
    modifier isAuthor() {
        require(author == msg.sender, "You need to be the project author");
        _;
    }

    //Modificador que valida que la variable de estado de autor es diferente a la dirección de quien llama la función
    modifier isNotAuthor() {
        require(
            author != msg.sender,
            "As author you can not fund your own project"
        );
        _;
    }

    //Para que cualquiera la pueda ver y enviar Ether sin problema
    function fundProject() public payable isNotAuthor{ //Autor no puede aportar a su propio proyecto
        require(state != 1, "The project can not receive funds"); //Si state = 0 no recibe más fondos
        require(msg.value > 0, "Fund value must be greater than 0"); //Si el valor enviado por usuario es mayor a cero
        author.transfer(msg.value); //Para transferir el valor de ether dado por el usuario al autor (wei)
        funds += msg.value; //Se agrega a los fondos el valor recibido
        emit ProjectFunded(id, msg.value); //Cantidad en wei que recibió el proyecto
    }

    //Recibe un nuevo estado, se guarda variable newState para optimizar gas usado en la llamada
    function changeProjectState(uint256 newState) public isAuthor{ //Solo autor es quien modifica
        require(state != newState, "New state must be different");//Si el estado actual es diferente del nuevo estado
        state = newState;
        emit ProjectStateChanged(id, newState); //Identificador del proyecto y su estado
    }
}
```

Una vez compilado se despliega el contrato con el valor de FundrisinGoal de 1 Eth:

[![33](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/33.png?raw=true "33")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/33.png?raw=true "33")

Para probarlo desde la cuenta del owner se cambia el estado del proyecto a 1 = closed:

[![34](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/34.png?raw=true "34")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/34.png?raw=true "34")

Con otra cuenta secundaria se fondea con el valor de 1 gwei y se podrá ver reflejado el mensaje de error "The project can not receive funds":

[![35](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/35.png?raw=true "35")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/35.png?raw=true "35")

Para probar la segunda condición, desde la cuenta del owner se cambia de nuevo el estado del proyecto a 0 = opened:

[![36](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/36.png?raw=true "36")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/36.png?raw=true "36")

En la cuenta secundaria se intenta fondear con un valor de 0 wei y se ve reflejado el error "Fund value must be greater than 0":

[![37](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/37.png?raw=true "37")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/37.png?raw=true "37")

Por último desde la cuenta owner se intenta cambiar el estado al mismo actual y muestra el siguiente mensaje de error "New state must be different":

[![38](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/38.png?raw=true "38")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/38.png?raw=true "38")

## Struct types

Solidity permite al usuario crear su propio tipo de datos en forma de estructura. La estructura contiene un grupo de elementos con un tipo de datos diferente. Generalmente, se usa para representar un registro. Para definir una estructura se utiliza la palabra clave **struct,** que crea un nuevo tipo de datos.

```
struct <structure_name> {  
   <data type> variable_1;  
   <data type> variable_2; 
}
```

[![39](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/39.png?raw=true "39")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/39.png?raw=true "39")

#### Reto #5

- Guarda toda la información del proyecto en un Struct.  
- Actualiza las funciones para que usen el Struct.

Se cambia como se tenian escritas la variables y se estructuran desde qu ese definen hasta en las funciones donde se usan:

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//Se crea contrato y se asignan variables de estado
contract CrowdFunding {
        
    struct Project { //Se define el struct
        string id; //Referencia del proyecto
        string name; //Nombre actual del proyecto
        string description; 
        address payable author; //Autor o representante del proyecto
        uint state; //Estado tipo uint para que sea fácil de comparar
        uint funds; //Para almacenar fondos
        uint fundraisingGoal; //Define cuanto se espera ganar con la ronda de fundraising
    }

    Project public project; //Define la variable pública como project

    //Parametros de identificador de proyecto y el valor
    event ProjectFunded(string projectId, uint256 value);

    event ProjectStateChanged(string id, uint256 state);
    
    //Para quien desplegue el contrato pueda asignar valor inicial a las variables
    constructor(string memory _id, string memory _name, string memory _description, uint256 _fundraisingGoal) {
        project = Project(_id, _name, _description, payable(msg.sender), 0, 0, _fundraisingGoal);
    } // Se asigna el valor de la variable project con cada propiedad
    
    //Modificador que valida que la variable de estado de autor es igual a la dirección de quien llama la función
    modifier isAuthor() {
        require(project.author == msg.sender, "You need to be the project author");
        _;
    }

    //Modificador que valida que la variable de estado de autor es diferente a la dirección de quien llama la función
    modifier isNotAuthor() {
        require(project.author != msg.sender, "As author you can not fund your own project");
        _;
    }

    //Para que cualquiera la pueda ver y enviar Ether sin problema
    function fundProject() public payable isNotAuthor{ //Autor no puede aportar a su propio proyecto
        require(project.state != 1, "The project can not receive funds"); //Si state = 0 no recibe más fondos
        require(msg.value > 0, "Fund value must be greater than 0"); //Si el valor enviado por usuario es mayor a cero
        project.author.transfer(msg.value); //Para transferir el valor de ether dado por el usuario al autor (wei)
        project.funds += msg.value; //Se agrega a los fondos el valor recibido
        emit ProjectFunded(project.id, msg.value); //Cantidad en wei que recibió el proyecto
    }

    //Recibe un nuevo estado, se guarda variable newState para optimizar gas usado en la llamada
    function changeProjectState(uint newState) public isAuthor{ //Solo autor es quien modifica
        require(project.state != newState, "New state must be different");//Si el estado actual es diferente del nuevo estado
        project.state = newState;
        emit ProjectStateChanged(project.id, newState); //Identificador del proyecto y su estado
    }
}

```

[![40](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/40.png?raw=true "40")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/40.png?raw=true "40")

## Enum types

Las enumeraciones son la forma de crear tipos de datos definidos por el usuario, generalmente se usa para proporcionar nombres para constantes integrales, lo que hace que el contrato sea mejor para el mantenimiento y la lectura. Las enumeraciones restringen la variable con uno de los pocos valores predefinidos, estos valores de la lista enumerada se denominan enumeraciones. Las opciones de se representan con valores enteros comenzando desde cero, también se puede dar un valor predeterminado para la enumeración. Mediante el uso de enumeraciones es posible reducir los errores en el código.

```
enum <enumerator_name> { 
    element 1, elemenent 2,....,element n
}

```

[![41](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/41.png?raw=true "41")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/41.png?raw=true "41")

#### Reto #6

- Añade los estados de un proyecto a un Enum para evitar que se creen nuevos estados.

Se definen los posibles estados del proyecto Opened y Closed con valores de 0 y 1 respectivamente, ahora todas las variables de state se cambian por FundraisingState en el evento y las funciones:

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//Se crea contrato y se asignan variables de estado
contract CrowdFunding {

    enum FundraisingState { Opened, Closed } //Se definen los posibles estados del proyecto
        
    struct Project { //Se define el struct
        string id; //Referencia del proyecto
        string name; //Nombre actual del proyecto
        string description; 
        address payable author; //Autor o representante del proyecto
        FundraisingState state;
        uint funds; //Para almacenar fondos
        uint fundraisingGoal; //Define cuanto se espera ganar con la ronda de fundraising
    }

    Project public project; //Define la variable pública como project

    //Parametros de identificador de proyecto y el valor
    event ProjectFunded(string projectId, uint256 value);

    event ProjectStateChanged(string id, FundraisingState state);
    
    //Para quien desplegue el contrato pueda asignar valor inicial a las variables
    constructor(string memory _id, string memory _name, string memory _description, uint256 _fundraisingGoal) {
        project = Project(_id, _name, _description, payable(msg.sender), FundraisingState.Opened, 0, _fundraisingGoal);
    } // Se asigna el valor de la variable project con cada propiedad
    
    //Modificador que valida que la variable de estado de autor es igual a la dirección de quien llama la función
    modifier isAuthor() {
        require(project.author == msg.sender, "You need to be the project author");
        _;
    }

    //Modificador que valida que la variable de estado de autor es diferente a la dirección de quien llama la función
    modifier isNotAuthor() {
        require(project.author != msg.sender, "As author you can not fund your own project");
        _;
    }

    //Para que cualquiera la pueda ver y enviar Ether sin problema
    function fundProject() public payable isNotAuthor{ //Autor no puede aportar a su propio proyecto
        require(project.state != FundraisingState.Closed, "The project can not receive funds"); //Si state = 0 no recibe más fondos
        require(msg.value > 0, "Fund value must be greater than 0"); //Si el valor enviado por usuario es mayor a cero
        project.author.transfer(msg.value); //Para transferir el valor de ether dado por el usuario al autor (wei)
        project.funds += msg.value; //Se agrega a los fondos el valor recibido
        emit ProjectFunded(project.id, msg.value); //Cantidad en wei que recibió el proyecto
    }

    //Recibe un nuevo estado, se guarda variable newState para optimizar gas usado en la llamada
    function changeProjectState(FundraisingState newState) public isAuthor{ //Solo autor es quien modifica
        require(project.state != newState, "New state must be different");//Si el estado actual es diferente del nuevo estado
        project.state = newState;
        emit ProjectStateChanged(project.id, newState); //Identificador del proyecto y su estado
    }
}

```
Al compilar y desplegar el contrato, se solicita la información del proyecto con sus respectivos estados:

[![42](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/42.png?raw=true "42")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/42.png?raw=true "42")

## Arrays y mappings

Los Arrays son una colección ordenada de datos de un solo tipo, mientras los mappings son Hashmaps, es decir, estructuras de clave valor. El correcto uso de estas estructuras de datos mejora el rendimiento de nuestro contrato, disminuyendo la carga de computo. 

Ejemplo de arrays:

[![43](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/43.png?raw=true "43")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/43.png?raw=true "43")

Ejemplo de mapping:

[![44](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/44.png?raw=true "44")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/44.png?raw=true "44")

#### Reto #6

- Permite almacenar más de un proyecto usando un Array.
- Crea una función createProject donde puedas inicializar los datos del proyecto.  
- Crea un Mapping que almacene las contribuciones que se le han hecho a un proyecto.

## Terminando nuestro contrato

```
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//Se crea contrato y se asignan variables de estado
contract CrowdFunding {

    enum FundraisingState { Opened, Closed } //Se definen los posibles estados del proyecto

    struct Contribution { //Struct que define contributions
        address contributor; //Almacena la dirección de aportante
        uint256 value; //Valor de ether contribuido al proyecto
    }   

    struct Project { //Se define el struct
        string id; //Referencia del proyecto
        string name; //Nombre actual del proyecto
        string description; 
        address payable author; //Autor o representante del proyecto
        FundraisingState state;
        uint funds; //Para almacenar fondos
        uint fundraisingGoal; //Define cuanto se espera ganar con la ronda de fundraising
    }

    Project[] public projects; //Define la variable pública como projects y como un array
    
    mapping(string => Contribution[]) public contributions; //Recibe una llave string (Id) y asigna un valor de tipo array

    event ProjectCreated(string projectId, string name, string description, uint256 fundraisingGoal);

    //Parametros de identificador de proyecto y el valor
    event ProjectFunded(string projectId, uint256 value);

    event ProjectStateChanged(string id, FundraisingState state);
    
    //Modificador que valida que la variable de estado de autor es igual a la dirección de quien llama la función
    modifier isAuthor(uint256 projectIndex) {
        require(projects[projectIndex].author == msg.sender, "You need to be the project author");
        _;
    }

    //Modificador que valida que la variable de estado de autor es diferente a la dirección de quien llama la función
    modifier isNotAuthor(uint256 projectIndex) {
        require(projects[projectIndex].author != msg.sender, "As author you can not fund your own project");
        _;
    }

    //Recibe los mismos datos del constructor y se valida que el objetivo a fondear sea mayor a 0
    function createProject(string calldata id, string calldata name, string calldata description, uint256 fundraisingGoal) public {
        require(fundraisingGoal > 0, "fundraising goal must be greater than 0");
        Project memory project = Project( id, name, description, payable(msg.sender), FundraisingState.Opened, 0, fundraisingGoal);
        projects.push(project); //variable se agrega a array del proyecto
        emit ProjectCreated(id, name, description, fundraisingGoal); //Evento que informa que se creó nuevo proyecto
    }


    //Para que cualquiera la pueda ver y enviar Ether sin problema
    function fundProject(uint256 projectIndex) public payable isNotAuthor(projectIndex) { //Autor no puede aportar a su propio proyecto
        Project memory project = projects[projectIndex]; //Trae los datos del proyecto al que quiera aportar
        require(project.state != FundraisingState.Closed, "The project can not receive funds"); //Si state = 0 no recibe más fondos
        require(msg.value > 0, "Fund value must be greater than 0"); //Si el valor enviado por usuario es mayor a cero
        project.author.transfer(msg.value); //Para transferir el valor de ether dado por el usuario al autor (wei)
        project.funds += msg.value; //Se agrega a los fondos el valor recibido
        projects[projectIndex] = project;
        //Llave es el Id y el valor es el nuevo elemento contribution para el array
        contributions[project.id].push(Contribution(msg.sender, msg.value));
        emit ProjectFunded(project.id, msg.value); //Cantidad en wei que recibió el proyecto
    }

    //Recibe un nuevo estado, se guarda variable newState para optimizar gas usado en la llamada
    function changeProjectState(FundraisingState newState, uint256 projectIndex) public isAuthor(projectIndex) { //Solo autor es quien modifica
        Project memory project = projects[projectIndex]; //Trae los datos del proyecto al que quiera aportar
        require(project.state != newState, "New state must be different");//Si el estado actual es diferente del nuevo estado
        project.state = newState;
        emit ProjectStateChanged(project.id, newState); //Identificador del proyecto y su estado
    }
}

```

Una vez escrito se compila y se despliega nuestro contrato:

[![45](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/45.png?raw=true "45")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/45.png?raw=true "45")

Con otra wallet diferente a la del autor se crea el primer proyecto de indice 0: 

[![46](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/46.png?raw=true "46")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/46.png?raw=true "46")

Con una tercera wallet se crea el primer proyecto de indice 1: 

[![47](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/47.png?raw=true "47")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/47.png?raw=true "47")

Luego de crear los dos proyectos desde una cuarta dirección se intenta fondear con $1 eth el proyecto PlatziConf de indice 0:

[![48](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/48.png?raw=true "48")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/48.png?raw=true "48")

Al verificar en **contributions** con el Id del proyecto y el indice (En este caso 0 como la primera contribución) muestra la dirección y la cantidad de ether enviada. Tambien al consultar en **projects** se puede visualizar que se ha llegado a la Funrising Goal de 1 eth:

[![49](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/49.png?raw=true "49")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/49.png?raw=true "49")


# Desplegando nuestro smart contract

## Cómo desplegar nuestro contrato en Ropsten


Ropsten es una testnet una red de prueba de Ethereum donde se pueden probar transacciones tal como se harían en la red principal. El dinero que usa no tiene ningun valor.

Para fondear nuestra wallet en la red de prueba se requiere un Faucet, las Faucets son aplicaciones que pueden enviar eth a esta testnet.

[![50](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/50.png?raw=true "50")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/50.png?raw=true "50")

[![51](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/51.png?raw=true "51")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/51.png?raw=true "51")

Una vez la cuenta en Ropsten este con fondos se compila y se intenta desplegar seleccionando el Environment "Injected Web3", que reconoce automaticamente la wallet de Metamask con lo fondeado:

[![52](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/52.png?raw=true "52")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/52.png?raw=true "52")

Se mostrará una ventana de Metamask para confirmar la transacción con la información de Gas/Fee que se cobrará por desplegar el contrato:

[![53](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/53.png?raw=true "53")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/53.png?raw=true "53")

Creado el contrato de CrowdFunding en la pestaña de Activity se podra ver detalles de la transacción y si se desea se puede visuailizar en el EtherScan toda la información con la nueva dirección del contrato con la cual otros podran aportar:

[![54](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/54.png?raw=true "54")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/54.png?raw=true "54")

[![55](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/55.png?raw=true "55")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/55.png?raw=true "55")

## Cómo desplegar nuestro contrato en Truffle

Truffle es un ambiente para quienes desarrollan en blockchain, diseñado para testear y desplegar contratos de forma sencilla. En esta clase te explicaré como usar Truffle para desplegar nuestro contrato en Ropsten una de las testnet de Ethereum.

En los apuntes de la clase de Prework para desarrollo de Aplicaciones Blockchain se realizó la instalación de npm y truffle, para más detalles: https://github.com/hackmilo/Notas---Prework-para-Desarrollo-de-Aplicaciones-Blockchain#truffle-suite 
#### Creando un proyecto en Truffle

Ahora que hemos instalado Truffle vamos a crear un proyecto para desplegar nuestro contrato **CrowdFunding.sol**, para esto vas a crear una carpeta CrowdFunding y dentro de ella vas a ejecutar el siguiente comando: `truffle init`

[![56](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/56.png?raw=true "56")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/56.png?raw=true "56")

Este comando inicializará tu proyecto con la siguiente estructura:

- **contracts:** En esta carpeta debes agregar todos los contratos de tu proyecto, en este caso vamos a agregar nuestro contrato CrowdFunding.sol

- **migrations:** Esta carpeta se agregarán los scripts necesarios para desplegar nuestro contrato, vamos a agregar un nuevo archivo 2_initial_migration.js con el siguiente contenido:

```
//2_initial_migration.js
const CrowdFunding = artifacts.require("CrowdFunding"); //Instancia de nuestro contrato CrowdFunding.sol

module.exports = function (deployer) {
  deployer.deploy(CrowdFunding); //Este script hace deploy de nuestro contrato a la blockchain
};

```

- **test:** En esta carpeta se agregan todos los archivos de test que nos permiten testear si nuestras aplicaciones y contratos funcionan como deberían.

- **truffle-config.js:** Este es el archivo principal de configuración Truffle, nos permitirá modificar las configuraciones de Truffle.

[![57](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/57.png?raw=true "57")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/57.png?raw=true "57")

Como nuestro contrato tiene el pragma pragma solidity >=0.7.0 <0.9.0; debemos cambiar la versión del compilador de Solidity que usa Truffle, para permitir que pueda compilar nuestro contrato.

Buscamos dentro de este archivo la sección de compilers y agregamos la versión de compilador 0.8.7.

Nuestro archivo ahora se vería de la siguiente forma:

[![58](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/58.png?raw=true "58")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/58.png?raw=true "58")

#### Compilando nuestro contrato en Truffle

Ahora que hemos creado y configurado nuestro proyecto, vamos a compilar nuestro contrato, para verificar que todo esté bien, para esto vamos a usar el comando: `truffle compile`

[![59](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/59.png?raw=true "59")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/59.png?raw=true "59")

Ahora que nuestro contrato ha sido compilado sin errores, llego la hora de desplegarlo en Ropsten.

#### Desplegando nuestro contrato en Ropsten

Configuraciones Iniciales:

Para desplegar un contrato debemos contar con:

- Un archivo .sol que al compilarlo no tenga ningún error.
- Una wallet (Metamask) dentro de la red de Ropsten.
- Un nodo que esté conectado con la red de Ropsten.

Para conectaros a un nodo dentro de la red de Ropsten, vamos a usar [Infura.](https://infura.io/ "Infura")

Infura nos proveerá un nodo público al que podremos conectarnos por medio de una API de forma muy sencilla.
Para crear una cuenta en Infura solo debemos ingresar un email y una contraseña en la caja de Get Started for Free. Infura tiene varios planes con diferentes precios, el plan gratuito será más que suficiente para desplegar nuestro contrato.

[![60](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/60.jpg?raw=true "60")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/60.jpg?raw=true "60")

Una vez dentro de Infura, vamos a dar clic a la pestaña de Ethereum → Create A Project, le ponemos un nombre a nuestro proyecto, en este caso Crowd Funding.

Una vez creado el proyecto, vemos que tiene un project id, un project secret, y varios endpoints, para cambiarnos de la mainnet de ethereum a la red de Ropsten.

Vamos a dar clic en el selector de red y vamos a seleccionar Ropsten.

> En Infura se cambian de Mainnet a Ropsten y se da clic en save changes arriba.

[![61](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/61.jpg?raw=true "61")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/61.jpg?raw=true "61")

#### Configurando la red en Truffle

Ahora que contamos con todo lo que necesitamos para desplegar un contrato, vamos a configurarlo dentro de Truffle.

Para esto instalaremos dos dependencias, la primera será truffle hdwallet provider, que permite hacer transacciones a la blockchain usando nuestra wallet, para instalarlo utiliza el siguiente comando:

`npm install truffle-hdwallet-provider --save`

La segunda dependencia que necesitaremos es dotenv. Esta te permite guardar variables con datos sensibles en archivo llamado **.env** y leerlas dentro del código sin que se revele su valor. Para instalarlo usaremos el comando:

`npm install dotenv --save`

Una vez instaladas las dependencias, debemos configurar los datos de la red de Ethereum donde queremos desplegar nuestro contrato, para esto vamos a agregar la siguiente configuración en la entrada networks del archivo **truffle-config.js**

```
//truffle-config.js
...
const HDWalletProvider = require('@truffle/hdwallet-provider');
const { env } = require('process');
require('dotenv').config()
...
networks: {
    development: {
      host: "127.0.0.1",     // Localhost (default: none)
      port: 8545,            // Standard Ethereum port (default: none)
      network_id: "*",       // Any network (default: none)
    },

    ropsten: {
      provider: () => new HDWalletProvider(env.MNEMONIC, `https://ropsten.infura.io/v3/${env.PROJECT_ID}`),
      network_id: 3,       // Ropsten's id
      gas: 5500000,        // Ropsten has a lower block limit than mainnet
      confirmations: 2,    // # of confs to wait between deployments. (default: 0)
      timeoutBlocks: 200,  // # of blocks before a deployment times out  (minimum/default: 50)
      skipDryRun: true
}
...
```

[![62](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/62.png?raw=true "62")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/62.png?raw=true "62")

Ahora creamos un archivo .env y agregamos las variables **MNEMONIC**, que tendrá la frase secreta que Metamask nos da como opción de recuperación de nuestra wallet y **PROJECT_ID** que es el valor que nos da Infura cuando creamos un proyecto:

```
MNEMONIC=example example example ...
PROJECT_ID=infura project id
```

Recuerda que si quieres subir tu proyecto a GitHub primero debes agregar un archivo llamado .gitignore en la raíz del proyecto, con las siguientes entradas, para evitar que hagas públicos los datos de tu archivo .env .

```
//.gitignore
.env
build/
```

[![63](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/63.png?raw=true "63")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/63.png?raw=true "63")

Una vez configurada la red de Ropsten dentro de Truffle vamos ahora si a desplegar nuestro contrato, para eso ejecutamos el siguiente comando en la terminal:

`truffle migrate --network ropsten`

> Si les da el error `Cannot find module '@truffle/hdwallet-provider'`
> Se debe correr el comando `npm i @truffle/hdwallet-provider --save` Ya que en el import que se hace en truffle-config.js, ese es el paquete que se llama. Con esto se podrá volver a intentar desplegar el contrato.

¡Y, listo! Tu contrato será desplegado. Para confirmarlo podrás ir a https://ropsten.etherscan.io/, en el buscador poner la dirección de tu wallet y en el resumen de las transacciones verás una de la siguiente forma:

[![64](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/64.png?raw=true "64")](https://github.com/hackmilo/Notas---Curso-de-Introduccion-al-Desarrollo-Blockchain-Smart-Contracts/blob/main/img/64.png?raw=true "64")

Cuando das clic sobre Contract Creation, verás que te lleva a una dirección, esta es la dirección del contrato dentro de Ropsten, ahora cualquiera dentro de la red puede encontrarlo y usarlo.
