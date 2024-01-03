import 'package:flutter/material.dart';
import 'package:myapp_1/components/my_button.dart';
import 'package:myapp_1/components/my_textfield.dart';
import 'package:myapp_1/components/square_tile.dart';

class Loginpage extends StatelessWidget {
  Loginpage ({super.key});
  //text editting controller
  final  usernameController = TextEditingController();
  final  passwordController = TextEditingController();
  //sign user in method
  void signIn(){}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const SizedBox(height: 50),
              //logo
             const Icon(
                Icons.lock,
                size: 100,
              ),
             const  SizedBox(height: 50),
              //welcome back, you've been missed!
             const Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
             const SizedBox(height: 50),
              //user name textfield
             MyTextField (
                controller: usernameController,
               hintText: 'User Name',
               obscureText: false,

              ),
             const SizedBox(height: 10),
              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'password',
                obscureText: true,
              ),
            const  SizedBox(height: 10),
              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forget Password',
                    style: TextStyle(color:Colors.grey[600]
                    ),
                    ),
                  ],
                ),
              ),
            const  SizedBox(height: 25),
              //signin button
              MyButton(
                onTap: signIn,
              ),
            const  SizedBox(height: 25),
              // or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child:  Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
              ),
              Text("Or Continue with",
              style: TextStyle(color: Colors.grey[700]),
              ),
              
                   Expanded(
                    child:  Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
              ),
              ],
              ),
            ),
              //google+apple sign in button
             const Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
            //google button 
            SquareTile(imagePath: 'lib/images/google.png'),
            
            SizedBox(width: 25),
            //apple button 
             SquareTile(imagePath: 'lib/images/apple.png'),
            ],
            ),
            const  SizedBox(height: 50),
              //not a member register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'not a member?',
                style: TextStyle(color: Colors.grey[700]),
                ),
                 const SizedBox(width: 4),
                const Text(
                  'Register Now',
                  style: TextStyle(
                    color: Colors.blue ,
                    fontWeight: FontWeight.bold 
                  ),
                  ),
              ],
            )

            ],
          ),
        ),
      ),
    );
  }
}
