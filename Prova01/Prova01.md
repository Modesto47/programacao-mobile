# Equipe

- Gabriel Luiz Boch
- Rafael da Silva Modesto
- Cristopher Oliveira Modesto

#Calculadora de IMC
## 1. Scaffold

**Descrição**:  
O `Scaffold` é o componente básico utilizado para criar a estrutura da interface de uma aplicação Flutter. Ele oferece uma área para a `AppBar`, o corpo da tela (`body`), e outras funcionalidades como `Drawer`, `BottomNavigationBar`, etc.

**Aplicações**:  
Usado para construir a estrutura de páginas, oferecendo elementos fundamentais como cabeçalho (AppBar) e área central para conteúdo.

**Como usar**:
```dart
Scaffold(
  appBar: AppBar(
    title: const Text('Calculadora de IMC'),
    backgroundColor: Colors.blueAccent,
  ),
  body: Center(
    child: Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // restante dos widgets aqui
        ],
      ),
    ),
  ),
)
```

## 2. TextEditingController

**Descrição**:  
O `TextEditingController` é utilizado para controlar a entrada de texto em campos de texto. Ele permite obter e modificar o valor do texto digitado pelo usuário.

**Aplicações**:  
Controlar os valores digitados pelo usuário, como altura e peso no caso dessa calculadora de IMC.

**Como usar**:
```dart
final TextEditingController _controladorAltura = TextEditingController();
final TextEditingController _controladorPeso = TextEditingController();
```

## 3. ElevatedButton

**Descrição**:  
O `ElevatedButton` é um botão de ação que aparece elevado sobre o fundo, com um estilo padrão de Material Design. Ele pode ser usado para disparar ações, como o cálculo do IMC.

**Aplicações**:  
Acionar funções no aplicativo, como o cálculo do IMC no caso do protótipo.  

**Como usar**:
```dart
SizedBox(
  width: double.infinity,
  child: ElevatedButton(
    onPressed: () {
      // Ação para calcular o IMC
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blueAccent,
      padding: const EdgeInsets.symmetric(vertical: 15),
    ),
    child: const Text(
      'CALCULAR',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
)
```

## 4. Table

**Descrição**:  
O `Table` é usado para exibir dados em formato tabular. No caso da calculadora de IMC, ele é utilizado para mostrar a tabela de referência dos valores de IMC e suas respectivas classificações.

**Aplicações**:  
Exibir informações de forma organizada e alinhada, como as faixas de IMC e suas classificações (Abaixo do peso, Peso normal, etc.).

**Como usar**:
```dart
Table(
  border: TableBorder.all(color: Colors.black),
  columnWidths: const {
    0: FlexColumnWidth(3),
    1: FlexColumnWidth(2),
  },
  children: const [
    TableRow(
      decoration: BoxDecoration(color: Colors.blueAccent),
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Classificação',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'IMC (kg/m²)',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
    // Outras TableRow aqui...
  ],
)
```

## 5. TextField

**Descrição**:  
O `TextField` é um componente utilizado para capturar entradas de texto do usuário. É comum em formulários, como para capturar altura e peso.

**Aplicações**:  
Capturar entradas do usuário para o cálculo do IMC, como a altura e o peso.

**Como usar**:
```dart
TextField(
  controller: _controladorAltura,
  keyboardType: TextInputType.number,
  decoration: InputDecoration(
    hintText: 'Ex: 182',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
  ),
)
```

## 6. Container

**Descrição**:  
O `Container` é um componente genérico que pode ser utilizado para agrupar outros widgets, definir margens, padding, cor de fundo, entre outros. Ele é muito útil para criação de áreas de conteúdo e estilização.

**Aplicações**:  
Agrupar os componentes de entrada de dados e a tabela de IMC, com a possibilidade de personalizar visualmente, adicionando margens, bordas, e sombras.

**Como usar**:
```dart
Container(
  padding: const EdgeInsets.all(16.0),
  margin: const EdgeInsets.symmetric(horizontal: 16.0),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8.0),
    boxShadow: [
      BoxShadow(
        color: Colors.blue.withOpacity(0.2),
        blurRadius: 10,
        spreadRadius: 1,
        offset: const Offset(0, 5),
      ),
    ],
  ),
  child: Column(
    children: [
      // outros widgets
    ],
  ),
)

#
