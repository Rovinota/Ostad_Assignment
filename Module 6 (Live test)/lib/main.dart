import 'package:flutter/material.dart';

void main() {
  runApp(MyShoppingListApp());
}

class MyShoppingListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Shopping List'),
          actions: [
             Icon(Icons.shopping_cart),
          ],
        ),
        body: ShoppingList(),
      ),
    );
  }
}

class ShoppingList extends StatelessWidget {
  final List<ShoppingItem> items = [
    ShoppingItem(name: 'Apples', icon: Icons.shopping_basket),
    ShoppingItem(name: 'Bananas', icon: Icons.shopping_basket),
    ShoppingItem(name: 'Milk', icon: Icons.shopping_basket),
    ShoppingItem(name: 'Bread', icon: Icons.shopping_basket),
    ShoppingItem(name: 'Eggs', icon: Icons.shopping_basket),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(items[index].icon, color: Colors.orange),
          title: Text(items[index].name, style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),),

          onTap: () {
            print("This is ${items[index].name}");
          },
        );
      },
    );

  }
}

class ShoppingItem {
  final String name;
  final IconData icon;

  ShoppingItem({required this.name, required this.icon});
}
