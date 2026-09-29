import 'add_product_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello shop', style: TextStyle(
          color: Colors.deepOrange,
          fontSize: 20,
            fontWeight: FontWeight.w700,
        ),),

      ),
      body:SingleChildScrollView(
        padding: const EdgeInsets.only(
         left: 20, right: 20,top: 20,
        ),
      child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Center(
              child: Text("Dashboard",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              ),
            ),
      Card(
        margin: EdgeInsets.only(bottom: 12),
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child:ListTile(
          leading:Icon(Icons.shopping_bag,
          color: Colors.deepPurple,
            size: 30,
          ),
          title:Text('Total Products',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ),
          subtitle: Text('120'),
          
        ),
        
      ),
            Card(
              margin: EdgeInsets.only(bottom: 12),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.attach_money,
                  color: Colors.green,
                  size: 30,
                ),
                title: Text("Today's Sales",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                ),
                subtitle: Text('5,000'),

              ),
            ),
            Card(
              margin: EdgeInsets.only(bottom: 12),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
              leading: Icon(Icons.people,
              color: Colors.blue,
              size: 55,
              ),
                title: Text('Customers',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                ),
                subtitle: Text('55'),
            ),

              ),
            Card(
              margin: EdgeInsets.only(bottom: 12),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.inventory,
                color: Colors.orange,
                    size: 30,
                ),
                title: Text( 'Stock',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                ),
                subtitle: Text('30s'),
              ),
            ),
            Center(
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddProductScreen(),
                      ),
                    );
                  },
                icon: Icon(Icons.add),
                label: Text('Add Product'),
              ),
            ),


          ],
      ),





      ),
    );
  }
}
