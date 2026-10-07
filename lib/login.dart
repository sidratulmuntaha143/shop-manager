import 'package:flutter/material.dart';
import 'package:soma/shopp.dart';



class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool hidePassword = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:Center(
        child: Column(
          children: [
            SizedBox(height: 45),
            Text('Welcome Back',
            style: TextStyle(
                color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
            ),
        SizedBox(height: 12),
        Text('Login to continue',style: TextStyle(
          color: Colors.grey,
          fontSize: 14,

        ),),
        SizedBox(height: 15,),
        Icon(
          Icons.store,
          size: 80,
          color: Colors.deepOrange,
        ),
            SizedBox(height: 15,),
            Text('Shop Manager',
              style: TextStyle(
                color: Colors.deepOrangeAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),

            ),
            Text('Manage your shop easily',
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),),
            SizedBox(height: 20,),
            SizedBox(width: 300,
            child:  TextField(
              controller: emailController,
              decoration: InputDecoration(
                prefixIcon: Icon( Icons.person),
                labelText: "Email or Phone",
                hintText: "Enter your phone number",
                border: OutlineInputBorder()
              ),
            ),
            ),
            SizedBox(height: 15,),
            SizedBox(width: 300,
            child: TextField(
              controller: passwordController,
              obscureText: hidePassword,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: "Password",
                hintText: "Enter your password",
                border: OutlineInputBorder(),

                suffixIcon: IconButton(
                  icon:Icon(
                    hidePassword?Icons.visibility_off:
                        Icons.visibility,
                  ),
                    onPressed: () {
                    setState(() {
                      hidePassword=!hidePassword;
                    });
                    }

              ),
            ),


            ),

              ),
        SizedBox(height: 20,),
        SizedBox(width: 300,
          height: 45,
        child: ElevatedButton(
            onPressed: (){

              print(emailController);
              print(passwordController);

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => shop(),),
              );

            },

          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(12)
            ),
          ),
            child:Row(
              mainAxisAlignment:
              MainAxisAlignment.center,
              children: [
                Icon(Icons.login,
                color: Colors.white,
                ),


              SizedBox(width: 8,),

            Text('Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,

            ),),
          ]
        ),
        ),
        ),

            TextButton(
                onPressed: () {},

              child:Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.lock,
                  color: Colors.deepOrange,
                    size: 18,


              ) ,
              SizedBox(width: 5),
              Text("Forget Password?",
              style: TextStyle(
                color: Colors.deepOrange,
              ),
              ),
              ]
              ),
            ),
            TextButton(onPressed: () {},

                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.person_add,
                      color: Colors.deepOrange,
                      size: 18,

                    ),
                SizedBox(width: 5),

                Text("Create Account",
                style: TextStyle(
                  color: Colors.deepOrange
                ),),
              ]
            ),

        ),

      ]
        ),
      ),





    );
  }
}
