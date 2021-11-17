# Notas del Curso de Introducción al Desarrollo Blockchain: **Smart Contracts.**

Profesor Felipe Pardo

![](https://static.platzi.com/media/avatars/Platzi-f730e65b-e92b-44d3-81c0-5c59c4dc4658.png) ![](https://static.platzi.com/media/learningpath/badges/29fa8885-7536-44ba-8aea-7b32c8e39cc8.jpg) ![](https://static.platzi.com/media/achievements/piezas-introduccion-desarrollo-blockchain-contratos-inteligentes_badge-3fccc149-b0a.png)

## Tabla de Contenidos

- [¿Qué son los Smart Contracts?](#qué-son-los-smart-contracts)
  - [Proyecto del curso: contrato para crowdfunding](#proyecto-del-curso-contrato-para-crowdfunding)
  - [La moneda ETH y GAS](#la-moneda-eth-y-gas) 
  - [Etapas de desarrollo y actualizaciones programadas](#la-moneda-eth-y-gas) 
- [Solidity](#solidity)
  - [¿Qué es la criptografía asimétrica?](#qué-es-la-criptografía-asimétrica)
  - [Wallets](#wallets) 
- [Desplegando nuestro smart contract](#desplegando-nuestro-smart-contract)

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

# Desplegando nuestro smart contract

