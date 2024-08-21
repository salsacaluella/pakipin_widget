import 'package:flutter/material.dart';

class FoodOrderWidget extends StatelessWidget {
  const FoodOrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Order App'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          _buildFoodItem(context, 'Pizza', 'Delicious cheese pizza', 8.99,
              'https://example.com/pizza.jpg'),
          _buildFoodItem(context, 'Burger', 'Juicy beef burger', 5.99,
              'https://example.com/burger.jpg'),
          _buildFoodItem(context, 'Pasta', 'Italian pasta with sauce', 7.99,
              'https://example.com/pasta.jpg'),
        ],
      ),
    );
  }

  Widget _buildFoodItem(BuildContext context, String name, String description,
      double price, String imageUrl) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        leading:
            Image.network(imageUrl, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(name),
        subtitle: Text(description),
        trailing: Text('\$$price'),
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Order $name'),
              content: Text('Do you want to add $name to your order?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('$name added to your order')),
                    );
                  },
                  child: const Text('Order'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
