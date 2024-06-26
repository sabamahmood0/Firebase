import 'package:firebase_app/Ui/Buttons/buttons.dart';
import 'package:firebase_app/Ui/Screens/homescreeen.dart';
import 'package:firebase_app/Ui/login_signUp/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});



  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
    final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 207, 192),
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
        child: Center(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Image.asset("assets/images/loginpic.jpg", width: 250, height: 250,),
                const Text("Welcome Back", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.blue),),
                const Text("SIgn in To Contiue", style: TextStyle(color: Colors.blue),),
                const SizedBox(height: 20,),
                TextFormField(
                  controller: emailcontroller ,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    
                    labelText: "Enter Email",
                  border: const OutlineInputBorder(),
                  ),

                  validator: (value) {
                    bool emailValid = RegExp( r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_^{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
                    if(value.isEmpty){
                      return "Enter Email";
                    }
                    if(!emailValid){
                      return "Enter Valid Email";
                    }
                    return null;
                      
                  
                  },
            
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
              
                  
                  controller: passcontroller ,
                
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock_open),
                    
                    labelText: "Enter Password",
                  border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if(value!.length < 8){
                      return "The Password Length Must Be 8 characters Long";
                    }
                    if(value.isEmpty){
                      return "Password";
                    }
                    return null;
                  },
                
                ),
                SizedBox(height: 20,),
            
                Button(label: "Login", press: (){
                  if(_formkey.currentState!.validate())
                  
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                  }
            
                }),
            SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Text("Don't Have An Account"),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => SignUppage()));
                  }, child: Text("Sign Up", style: TextStyle(color: Colors.blue),))],
                )
            
            ]),
          ),
        ),),

      ),
    );


  }
}



