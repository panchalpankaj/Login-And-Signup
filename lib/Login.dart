
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}


class _MyLoginState extends State<MyLogin> {


  final _formKey=GlobalKey<FormState>();
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assert/16.jpeg"),
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
                  padding: EdgeInsets.only(left: 45, top: 130),
                  child: Text('Welcome\n Back', style: TextStyle(
                      color: Colors.white,
                      fontSize: 33

                  ),
                  ),

                ),


                Positioned(
                  left: 135, // adjust left position
                  top: 225, // adjust top position
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assert/Lion.jpeg'),
                  ),
                ),


                SingleChildScrollView(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          icon: const Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: const Icon(Icons.email_outlined),

                          ),
                          fillColor: Colors.blueGrey.shade100,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
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
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: _validatePassword,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.lightBlueAccent,
                            child: IconButton(
                              color: Colors.red,
                              onPressed: () {
                                String uEmail = _emailController.text.toString();
                                String uPassword = _passwordController.text.toString();
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
                        height: 40,
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'SignUp');
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


















