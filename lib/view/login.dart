import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urbanclap/view/signup.dart';
import 'package:urbanclap/viewmodel/signcontrooler.dart';





// Sign In Screen
class SignInScreen extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Image.asset('images/leav.png')
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Padding(
               padding:EdgeInsets.only(bottom: MediaQuery.of(context).size.width*0.09),
               child: Row(
                 children: [
                   Image.asset('images/p.png'),
                   SizedBox(width: 2,),
                   Text.rich(
                     TextSpan(
                       children: [
                         TextSpan(
                           text: 'Urban',
                           style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)
                         ),
                         TextSpan(
                           text: 'Pro',
                           style: TextStyle(color: Colors.deepOrange,fontSize: 20,fontWeight: FontWeight.bold), // Change to your preferred color
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
             ),
          
              Padding(
                padding:EdgeInsets.only(right: MediaQuery.of(context).size.width*0.67),
                child: Text("SIGN IN", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding:EdgeInsets.only(right: MediaQuery.of(context).size.width*0.58),
                child: Text('Login as a Provider'),
              ),
              SizedBox(height: 20),
              TextField(
                controller: authController.emailController,
                decoration: InputDecoration(
                    labelText: "Enter email",
                  border: OutlineInputBorder(
                  ),
                    prefixIcon: Icon(Icons.email_outlined)
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: authController.passwordController,
                decoration: InputDecoration(labelText: "Enter password",
                  border: OutlineInputBorder(
                  ),
                    prefixIcon: Icon(Icons.lock_outline)
                ),
                obscureText: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text("Forgot password?",style: TextStyle(color: Colors.orange),),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity, // Full width
                height: 60, // Fixed height
                child: ElevatedButton(
                  onPressed: authController.login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange, // Change to your preferred color
                    foregroundColor: Colors.white, // Text color
          
          
                  ),
                  child: Text(
                    "Login now",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
          
             SizedBox(height: 4,),
              SizedBox(
                width:double.infinity ,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(SignUpScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Change to your preferred color
                    foregroundColor: Colors.black, // Text color
          
          
                  ),
                  child: Text("Don't have an account? Signup"),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.2),
              SizedBox(
                width: double.infinity, // Full width
                height: 60, // Fixed height
                child: OutlinedButton(
                  onPressed: () {
                    // Navigate to Servicemen login
                  },
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.orange, width: 2), // Border color and thickness
                    foregroundColor: Colors.orange, // Text color
          
                  ),
                  child: Text(
                    "Login as a Servicemen",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              )
          
            ],
          ),
        ),
      ),
    );
  }
}




