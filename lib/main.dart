import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main () {
  
   runApp(MainPage());
  
}
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}
class FirstPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.purple,
        leading: Icon(Icons.code)
      ),
       body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email Address"
              ),
              keyboardType: TextInputType.emailAddress
            ),

             TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: "Password"
              ),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                print("Email Address: ${_emailController.text}");
                print("Password: ${_passwordController.text}");
                
              },

              child: Text("Submit"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple, // This is the color of the button
              )
            ),
          ],
          
          
        )
      )
      
    );
  }
}