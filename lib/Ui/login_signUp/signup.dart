// import 'package:firebase_app/Ui/Buttons/buttons.dart';
// import 'package:firebase_app/Ui/login_signUp/login.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// class SignUppage extends StatefulWidget {
//   const SignUppage({super.key});
  

//   @override
//   State<SignUppage> createState() => _SignUppageState();
// }

// class _SignUppageState extends State<SignUppage> {

//   final _formkey = GlobalKey<FormState>();
//   final emailcontroller = TextEditingController();
//   final passcontroller = TextEditingController();

// FirebaseAuth _auth = FirebaseAuth.instance;
// FirebaseAuthException auth = FirebaseAuthException.instance;

//   @override
//   void dispose() {
//     emailcontroller;
//     passcontroller;
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 207, 207, 192),
//       appBar: AppBar(title: Text("Sign Up"),
//       backgroundColor: Colors.blue,
//       centerTitle: true,
//       automaticallyImplyLeading: true,),
//       body: SingleChildScrollView(
//         child: Padding(padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
//         child: Center(
//           child: Form(
//             key: _formkey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // Image.asset("assets/images/signup.jpg", width: 250, height: 250,),
//                 const Text("Welcome Back", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.blue),),
//                 const Text("SIgn in To Contiue", style: TextStyle(color: Colors.blue),),
//                 const SizedBox(height: 20,),
//                 TextFormField(
//                   keyboardType: TextInputType.emailAddress,
//                   controller: emailcontroller ,
                  
//                   decoration: const InputDecoration(
//                     prefixIcon: Icon(Icons.email),
                    
//                     labelText: "Enter Email",
//                   border: const OutlineInputBorder(),
//                   ),
//                    validator: (value) {
//                     bool emailValid = RegExp( r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_^{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
//                     if(value.isEmpty){
//                       return "Enter Email";
//                     }
//                     if(!emailValid){
//                       return "Enter Valid Email";
//                     }
//                     return null;
                      
                  
//                   },
            
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 TextFormField(
              
//                     keyboardType: TextInputType.visiblePassword,
//                   controller: passcontroller ,
                
                
//                   obscureText: true,
                  
//                   decoration: const InputDecoration(
//                     prefixIcon: Icon(Icons.lock_open),
                    
//                     labelText: "Enter Password",
//                   border: OutlineInputBorder(),
//                   ),
//                    validator: (value) {
//                     if(value!.length < 8){
//                       return "The Password Length Must Be 8 characters Long";
//                     }
//                     if(value.isEmpty){
//                       return "Password";
//                     }
//                     return null;
//                   },
                
//                 ),
//                 SizedBox(height: 20,),
            
//                 Button(label: "SignUp", press: (){
//                    if(_formkey.currentState!.validate()){
//                     auth.createUserWithEmailAndPassword(email: emailcontroller.text.toString(), password: passcontroller.text.toString());
//                    }
                  
                  
            
//                 }),
//             SizedBox(height: 10,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [Text("Already Have An Account"),
//                   TextButton(onPressed: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
//                   }, child: Text("Login Up", style: TextStyle(color: Colors.blue),))],
//                 )
            
//             ]),
//           ),
//         ),),

//       ),
//     );
//   }
// }






import 'package:firebase_app/Ui/Buttons/buttons.dart';
import 'package:firebase_app/Ui/login_signUp/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUppage extends StatefulWidget {
  const SignUppage({super.key});
  

  @override
  State<SignUppage> createState() => _SignUppageState();
}

class _SignUppageState extends State<SignUppage> {

  final _formkey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();

FirebaseAuth _auth = FirebaseAuth.instance;


  @override
  void dispose() {
    emailcontroller;
    passcontroller;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text("Sign Up"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/signup.jpg",
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Welcome Back",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const Text(
                    "Sign Up To Continue",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailcontroller,
                    decoration: const InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email)),
                    validator: (value) {
                      bool emialValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_^{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);
                      if (value.isEmpty) {
                        return "Enter Email";
                      }
                      if (!emialValid) {
                        return "Enter Valid Email";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passcontroller,
                    obscureText: true,
                    decoration: const InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock_open)),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      }
                      if (value.length < 8) {
                        return "The Password Must be 8 Characters Long";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Button(
                
                      label: "SignUp",
                      press: () {
                        if (_formkey.currentState!.validate()) {
                         
                          _auth
                              .createUserWithEmailAndPassword(
                                  email: emailcontroller.text.toString(),
                                  password: passcontroller.text.toString());
                             
                        }
                        emailcontroller.clear();
                        passcontroller.clear();
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Already have an Account? "),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}