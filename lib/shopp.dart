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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        elevation: 0,

        title:Row(
          children: [
            Icon(Icons.storefront,
            color: Colors.white,
              size: 28,
            ),
            SizedBox(width: 10,),



        Text('Shop Manager', style: TextStyle(
          color: Colors.white,
          fontSize: 20,
            fontWeight: FontWeight.w700,
        ),),
      ],

        ),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.notifications_none,
              color: Colors.white,
              )),
          IconButton(onPressed: (){},
              icon: Icon(Icons.person,
              color: Colors.white,
              )

          )
        ],
      ),
      body:SingleChildScrollView(
        padding: const EdgeInsets.only(
         left: 20, right: 20,top: 20,
        ),
      child: Column(
           crossAxisAlignment: CrossAxisAlignment.start   ,
          children: [

            Center(
              child: Text("Dashboard",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              ),
            ),
      SizedBox(height: 15,),
      Text('Overview',style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),),

            GridView.count(crossAxisCount: 2,
            shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.3,
              children: [
                Card(

                  elevation: 5,
                  color: Colors.orange.shade50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child:ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    leading:Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple.shade50,
                        shape: BoxShape.circle,

                      ),

                      child:  Icon(Icons.shopping_bag,
                        color: Colors.deepPurple,
                        size: 25,
                      ),
                    ),
                    title:Text('Total Products',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('120',style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                    ),

                  ),

                ),



            // Total products  card end
            Card(

              elevation: 5,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),


              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8
                ),
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    shape: BoxShape.circle,
                  ),


               child:  Icon(
                  Icons.attach_money,
                  color: Colors.green,
                  size: 25,
                ),
                ),
                title: Text("Today's Sales",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                ),
                subtitle: Text('5,000',style: TextStyle(
                  color: Colors.green,
                      fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),

                ),

              ),
            ),
            ]
            ),
            // Today's sales  card end
           GridView.count(crossAxisCount: 2,
           shrinkWrap: true,
             physics: NeverScrollableScrollPhysics(),
             crossAxisSpacing: 12,
             mainAxisSpacing: 12,
             childAspectRatio: 1.3,
             children: [
               Card(
                 margin: EdgeInsets.only(bottom: 12),
                 elevation: 5,
                 color: Colors.blue.shade50,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(16),
                 ),
                 child:
                 ListTile(
                   leading:Container(
                     padding:EdgeInsets.all(10),
                     decoration: BoxDecoration(
                         color: Colors.white,
                         shape: BoxShape.circle
                     ),


                     child:  Icon(Icons.people,
                       color: Colors.blue,
                       size: 25,
                     ),
                   ),
                   title: Text('Customers',
                     style: TextStyle(
                       color: Colors.black87,
                       fontWeight: FontWeight.bold,
                       fontSize: 17,
                     ),
                   ),
                   subtitle: Text('55',
                     style: TextStyle(color: Colors.blue ,
                       fontWeight: FontWeight.w600,
                       fontSize: 22,
                     ),
                   ),
                 ),

               ),


            // customers card end
            Card(
              margin: EdgeInsets.only(bottom: 12),
              elevation: 5,
              color: Colors.green.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),

              ),
              child: ListTile(
                leading: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),


               child:  Icon(Icons.inventory_2,
                color: Colors.orange,
                    size: 25,
                ),
                ),
                title: Text( 'Stock',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                ),
                subtitle: Text('85',style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 22,
                  fontWeight: FontWeight.w600

                ),
                ),
              ),
            ),
            ],
           ),
            //Stock card end

            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(12)
                  ),
                ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddProductScreen(),
                      ),
                    );
                  },
                icon: Icon(Icons.add,
                  size: 22,
                ),
                label: Text('Add Product',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,

                  ),

                ),
              ),
            ),


          ],
      ),





      ),
    );
  }
}
