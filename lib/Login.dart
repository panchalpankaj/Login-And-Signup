
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}
class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white60,

      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(

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
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,right: 35,left: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.blueGrey.shade100,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
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
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('Login',style: TextStyle(
                        fontSize: 28, fontWeight: FontWeight.w700
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
                        Navigator.pushNamed(context, 'SignUp');
                      },child: Text(
                        'Sign up',style: TextStyle(
                        decoration: TextDecoration.underline,fontSize: 20,color: Colors.white,
                      ),
                      )
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
    );
  }
}













