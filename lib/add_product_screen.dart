import 'dart:ui';
import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final productNameController =
      TextEditingController();
  final priceNameController =
      TextEditingController();
  final quantityNmeController =
      TextEditingController();
  final categoryNameController =
      TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Padding(padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              controller: productNameController,
              decoration: InputDecoration(
                labelText: 'Product Name',
                hintText: 'Enter product name',
                border: OutlineInputBorder(),
                prefixIcon: const
                    Icon(Icons.inventory_2_outlined,
                  color: Colors.deepOrange,
                ),
                
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: priceNameController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'price',
                hintText: 'Enter product price',
                border: OutlineInputBorder(),
                prefixIcon: const
                    Icon( Icons.attach_money,
                  color: Colors.green,
                )
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: quantityNmeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Quantity',
                hintText: 'Enter quantity',
                border: OutlineInputBorder(),
                prefixIcon: const
                    Icon(Icons.production_quantity_limits,
                  color: Colors.lime,
                )

              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: categoryNameController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Category',
                hintText: 'Enter category',
                border: OutlineInputBorder(),
                prefixIcon: const
                    Icon(Icons.category_outlined,
                color: Colors.pinkAccent,
                )

              ),
            ),
SizedBox(height: 20,),
SizedBox(width: 300,
  height: 55,
  child: ElevatedButton.icon(
    onPressed: () {
      if(productNameController.text.isEmpty){
        return;
      }
      ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(
            content: Text(
                'Product:${productNameController.text}/n'
              'Price:${priceNameController.text}/n'
                    'Quantity:${quantityNmeController.text}/n'
                'Category:${categoryNameController.text}',

            ),

          ),
      );

    },
    icon: const Icon(
      Icons.add,
      color: Colors.white,
    ),

    label: const Text(
      'Add Product',
      style: TextStyle(
        color: Colors.white,
        fontSize: 17,
        fontWeight: FontWeight.bold,

      ),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(12),

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

