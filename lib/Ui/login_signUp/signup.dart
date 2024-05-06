import 'package:firebase_app/Ui/Buttons/buttons.dart';
import 'package:firebase_app/Ui/login_signUp/login.dart';
import 'package:flutter/material.dart';

class SignUppage extends StatefulWidget {
  const SignUppage({super.key});

  @override
  State<SignUppage> createState() => _SignUppageState();
}

class _SignUppageState extends State<SignUppage> {
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 207, 192),
      appBar: AppBar(title: Text("Sign Up"),
      backgroundColor: Colors.blue,
      centerTitle: true,
      automaticallyImplyLeading: true,),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Image.asset("assets/images/signup.jpg", width: 250, height: 250,),
                const Text("Welcome Back", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.blue),),
                const Text("SIgn in To Contiue", style: TextStyle(color: Colors.blue),),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: emailcontroller ,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    
                    labelText: "Enter Email",
                  border: const OutlineInputBorder(),
                  ),
            
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
              
                  
                  controller: passcontroller ,
                
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  
                  decoration: const InputDecoration(
                    
                    labelText: "Enter Password",
                  border: OutlineInputBorder(),
                  ),
                
                ),
                SizedBox(height: 20,),
            
                Button(label: "SignUp", press: (){
            
                }),
            SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text("Already Have An Account"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
                  }, child: Text("Login Up", style: TextStyle(color: Colors.blue),))],
                )
            
            ]),
          ),
        ),),

      ),
    );
  }
}