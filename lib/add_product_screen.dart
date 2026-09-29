import 'dart:ui';
import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Padding(padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Product Name',
                hintText: 'Enter product name',
                border: OutlineInputBorder(),
                prefixIcon: const
                    Icon(Icons.inventory_2_outlined),
                
              ),
            ),
            SizedBox(height: 15),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'price',
                hintText: 'Enter product price',
                border: OutlineInputBorder(),
                prefixIcon: const
                    Icon( Icons.attach_money)
              ),
            ),
            SizedBox(height: 15),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Quantity',
                hintText: 'Enter quantity',
                border: OutlineInputBorder(),
                prefixIcon: const
                    Icon(Icons.production_quantity_limits)

              ),
            ),
            SizedBox(height: 15),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Category',
                hintText: 'Enter category',
                border: OutlineInputBorder(),
                prefixIcon: const
                    Icon(Icons.category_outlined)

              ),
            ),
SizedBox(width: double.infinity,
  height: 55,
  child: ElevatedButton(
    onPressed: () {
      print('Product.Added');
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(12),
      ),
    ),
    child: const Text(
      'Add Product',
      style: TextStyle(
        color: Colors.black,
        fontSize: 17,
        fontWeight: FontWeight.bold
      ),
    ),
  ),

)
              ],

        ),


      ),


    );

  }
}

