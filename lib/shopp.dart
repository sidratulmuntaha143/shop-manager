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
          Stack(
            children: [



              IconButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('No new notifications')),
                );
              },
                icon: Icon(Icons.notifications_none,
                  color: Colors.white,
                ),
              ),
              Positioned(
                right: 10,
                top: 8,
                child:Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                    )

                ),
              ),
            ],
          ),
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Profile coming soon')),
            );
          },
            icon: Icon(Icons.person,
              color: Colors.white,
            ),

          ),
        ],
      ),
      body:SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 20, right: 20,top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start   ,
          children: [

            Text('Dashboard',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
            ),
            SizedBox(height: 5),
            Text("welcome back! Here's yours shop overview.",
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 15,
            ),
            ),
            SizedBox(height: 18),
            Text('Overview',
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),

            GridView.count(crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.4,
                children: [
                  Card(

                    elevation: 5,
                    color: Colors.orange.shade50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child:Padding(
                        padding: EdgeInsets.all(12),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             padding: EdgeInsets.all(8),
                             decoration: BoxDecoration(
                               color: Colors.deepPurple.shade50,
                               shape: BoxShape.circle,
                             ),
                             child: Icon(Icons.shopping_bag,
                             color: Colors.deepPurple,
                               size: 22,
                             ),
                           ),
                           Text('Total Product',
                           style: TextStyle(
                             color: Colors.black87,
                             fontSize: 15,
                             fontWeight: FontWeight.bold,
                           ),
                           ),
                           SizedBox(height: 2),
                           Text('120',style: TextStyle(
                             color: Colors.deepOrange,
                             fontWeight: FontWeight.bold,
                             fontSize: 22,
                           ),)
                         ],
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
                    child: Padding(
                        padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.green.shade50,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.attach_money,
                          color: Colors.green,
                            size: 22,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text("Today's Sales",style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 4),
                        Text('5,000',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),
                    )
                  ),
                ]
            ),
            // Today's sales  card end
            GridView.count(crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.4,
              children: [
                Card(
                  margin: EdgeInsets.only(bottom: 16),
                  elevation: 5,
                  color: Colors.blue.shade50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child:Padding(
                      padding:EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade50,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.people,
                        color: Colors.orange,
                          size: 22,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text('Customers',
                       style: TextStyle(
                         color: Colors.black87,
                         fontSize: 15,
                         fontWeight: FontWeight.bold,

                       ),
                      ),
                      SizedBox(height: 4),
                      Text('45',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),)
                    ],
                  ),
                  )

                ),


                // customers card end
                Card(
                  margin: EdgeInsets.only(bottom: 12),
                  elevation: 5,
                  color: Colors.green.shade50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),

                  ),
                  child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.orange.shade50,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.inventory_2,
                            color: Colors.orange,
                              size: 22,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text('Stock',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,

                          ),
                          ),
                          Text('85',
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          )
                        ],
                      ),
                  )
                ),
              ],
            ),
            //Stock card end

           SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton.icon(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                AddProductScreen(),
                ),

                );
              },
                icon:Icon(Icons.add,
                color: Colors.white,
                ),
                label:Text('Add Product',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(14),
                  )
                )
                  ),
            ),


          ],
        ),





      ),
    );
  }
}
