
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myregister extends StatefulWidget {
  const Myregister({Key? key}) : super(key: key);

  @override
  State<Myregister> createState() => _MyregisterState();
}

class _MyregisterState extends State<Myregister> {

  final _formKey=GlobalKey<FormState>();
  var _NameController = TextEditingController();
  var _NumberController = TextEditingController();
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();


  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }



  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    } else if (value.length < 6) {
      return 'Password should be at least 6 characters long';
    }
    return null;
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your name';
    }
    return null;
  }

  String? _validateNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assert/13.jpeg"),
              fit: BoxFit.cover,
            ),
          ),

          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Form(
              key: _formKey,
              child: Stack(

                children: [

                  Container(
                    padding: EdgeInsets.only(left: 47, top: 77),
                    child: Text('Create\n Account', style: TextStyle(
                        color: Colors.white,
                        fontSize: 33
                    )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 140, top: 175),
                    child: Text('Sign Up', style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700
                    )
                    ),
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3,right: 35,left: 35),
                    child: Column(
                      children: [

                        TextFormField(
                          controller:_NameController,

                          decoration: InputDecoration(
                              icon: const Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: const Icon(Icons.supervised_user_circle_outlined),

                              ),
                              fillColor: Colors.blueGrey.shade100,
                              filled: true,
                              hintText: 'Name',
                              border: OutlineInputBorder(

                                  borderRadius: BorderRadius.circular(20)

                              )
                          ),
                          validator: _validateName,
                        ),
                        SizedBox(
                          height: 30,
                        ),



                        TextFormField(
                          controller: _NumberController,
                          decoration: InputDecoration(
                              icon: const Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: const Icon(Icons.confirmation_num),

                              ),
                              fillColor: Colors.blueGrey.shade100,
                              filled: true,
                              hintText: 'Number',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)

                              )
                          ),
                          validator: _validateNumber,
                        ),
                        SizedBox(
                          height: 30,
                        ),

                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                              icon: const Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: const Icon(Icons.attach_email_outlined),

                              ),
                              fillColor: Colors.blueGrey.shade100,
                              filled: true,
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                          validator: _validateEmail,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: const Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: const Icon(Icons.password),

                            ),
                            fillColor: Colors.blueGrey.shade100,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                          ),
                          validator: _validatePassword,
                        ),

                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text('',style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.w900,
                          ),
                          ),
                            CircleAvatar(
                              radius: 33,
                              backgroundColor: Colors.white54,


                              child: IconButton(
                                color: Colors.red,
                                onPressed: (){
                                  String uName = _NameController.text.toString();
                                  String uNumber = _NumberController.text.toString();
                                  String uEmail = _emailController.text.toString();
                                  String uPassword = _passwordController.text.toString();
                                  print("Name: $uName");
                                  print("Number: $uNumber");
                                  print("Email: $uEmail");
                                  print("Password: $uPassword");
                                  if (_formKey.currentState!.validate()) {
                                    // form is valid, do something
                                  }
                                },
                                icon: Icon(Icons.arrow_forward),
                              ),
                            )
                          ],

                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Row(
                          children: [
                            TextButton(onPressed: (){
                              Navigator.pushNamed(context, 'Login');
                            },child: Text('Login',style: TextStyle(
                              decoration: TextDecoration.underline,fontSize: 20,color: Colors.white,
                            ),))
                          ],
                        )
                      ],
                    ),
                  )
                ],

              ),
            ),
          ),
        )
    );
  }
}












