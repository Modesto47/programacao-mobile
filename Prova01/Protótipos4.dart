import 'package:flutter/material.dart';

void main() {
  runApp(const JapaneseMenuApp());
}

class JapaneseMenuApp extends StatelessWidget {
  const JapaneseMenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardápio Japonês',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MenuScreen(),
    );
  }
}

class MenuItem {
  final String imageUrl;
  final String name;
  final String description;
  final double price;

  MenuItem({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
  });
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuItem> menuItems = [
      MenuItem(
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/6/60/Sushi_platter.jpg',
        name: 'Sushi',
        description: 'Arroz temperado com peixe cru.',
        price: 37.90,
      ),
      MenuItem(
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm6ixEqTdd-zyAOlYtYncziDJA6MRxO3gapA&s',
        name: 'Ramen',
        description: 'Sopa de macarrão com carne e ovo.',
        price: 25.90,
      ),
      MenuItem(
        imageUrl:
            'https://assets.tmecosys.com/image/upload/t_web_rdp_recipe_584x480/img/recipe/ras/Assets/A44C84BF-1115-46E1-A052-33EB28F63806/Derivates/dc78ebca-e5cb-4875-bec1-4c46cc693374.jpg',
        name: 'Mochi',
        description: 'Bolinho de arroz glutinoso.',
        price: 12.90,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cardápio Japonês'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final menuItem = menuItems[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            elevation: 3.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      menuItem.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          menuItem.name,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          menuItem.description,
                          style: const TextStyle(fontSize: 14.0),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'R\$ ${menuItem.price.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                print('Adicionado: ${menuItem.name}');
                              },
                              child: const Text('Adicionar'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
