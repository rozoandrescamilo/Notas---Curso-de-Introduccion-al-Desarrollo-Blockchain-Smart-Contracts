# Notas del Curso de Introducción al Desarrollo Blockchain: **Smart Contracts.**

Profesor Felipe Pardo

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
  - [Cómo desplegar nuestro contrato en Roptein](#cómo-desplegar-nuestro-contrato-en-roptein)
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



## Enum types
## Arrays y mappings]
## Terminando nuestro contrato
# Desplegando nuestro smart contract
## Cómo desplegar nuestro contrato en Roptein
## Cómo desplegar nuestro contrato en Truffle



