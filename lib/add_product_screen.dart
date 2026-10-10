import 'dart:ui';
import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  List<Map<String,dynamic>>products=[];

  final productNameController =
      TextEditingController();
  int? editingIndex;
  final priceNameController =
      TextEditingController();
  final quantityNmeController =
      TextEditingController();
  final categoryNameController =
      TextEditingController();



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
                labelText: 'Price',
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
      if(productNameController.text.isEmpty ||
      priceNameController.text.isEmpty ||
          quantityNmeController.text.isEmpty ||
      categoryNameController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please fill in all fields'),),);
        return;
      }
      final price=
      double.tryParse(priceNameController.text);
      final quantity =
      double.tryParse(quantityNmeController.text);
      if(price==null || quantity== null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Enter valid price and quantity'),
          ),
        );
        
        return;
      }
      final totalPrice = price * quantity;
      setState(() {
        products.add({
         'name':productNameController.text,
         'price':price,
         'quantity':quantity,
         'category':categoryNameController.text,
         'total':totalPrice,
        });
      });

      ScaffoldMessenger.of(context).showSnackBar(
           SnackBar(
            content: Text(
                'Product:${productNameController.text}/n'
              'Price:${priceNameController.text}/n'
                    'Quantity:${quantityNmeController.text}/n'
                'Total Price:$totalPrice\n'
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

),
            SizedBox(height: 20),
            Expanded(
                child:ListView.builder(
                    itemCount: products.length,
                itemBuilder:(context,index){
                      final product =products[index];

                      return Card(
                        child: ListTile(
                          title: Text(product['name']),

                          subtitle: Text(
                              'Price: ${product['price']} tk/kg\n'
                                  'Quantity:${product['quantity']}kg\n'
                                  'Total:${product['total']} tk',
                          ),
                          isThreeLine: true,

                          trailing:Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon:const Icon(
                              Icons.edit_outlined,
                          ),
                                onPressed: (){
                                  setState(() {
                                    editingIndex= index;
                                    productNameController.text=product['name'];
                                    priceNameController.text=product['price'].toString();
                                    quantityNmeController.text=product['quantity'].toString();
                                    categoryNameController.text=product['category'].toString();
                                  });

                                },
                              ),
                              IconButton(
                                  icon:const Icon(Icons.delete_outline,
                                  color: Colors.red,
                                  ),
                                  onPressed:(){
                                    setState(() {
                                      products.removeAt(index);
                                    });
                      },)
                            ],
                          )
                        ),
                      );
                }
                )),
            Padding(
                padding: const EdgeInsets.all(12),
            child: Text(
                'Grand Total:${products.fold<double>(0,
                    (sum,product)=>sum+(product['total']as double),
                )} tk',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,

              ),
            ),
            )
              ],

        ),


      ),


    );

  }
}

