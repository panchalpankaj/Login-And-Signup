
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myregister extends StatefulWidget {
  const Myregister({Key? key}) : super(key: key);

  @override
  State<Myregister> createState() => _MyregisterState();
}

class _MyregisterState extends State<Myregister> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
      decoration: BoxDecoration(
        color: Colors.lightGreen,

      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(

          children: [
            Container(
              padding: EdgeInsets.only(left: 47, top: 77),
              child: Text('Create\n Account', style: TextStyle(
                  color: Colors.white,
                  fontSize: 33

              ),
              ),

            ),

            SingleChildScrollView(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3,right: 35,left: 35),
              child: Column(
                children: [

                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.blueGrey.shade100,
                        filled: true,
                        hintText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),



                     TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.blueGrey.shade100,
                        filled: true,
                        hintText: 'Number',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)

                        )
                    ),

                  ),
                  SizedBox(
                    height: 30,
                  ),

                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.blueGrey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.blueGrey.shade100,
                        filled: true,
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Sign Up',style: TextStyle(
                        fontSize: 27, fontWeight: FontWeight.w700
                    ),
                    ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlueAccent,
                        child: IconButton(
                          color: Colors.red,
                          onPressed: (){},
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
      )
    );
  }
}












