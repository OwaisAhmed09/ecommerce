import 'package:ecommerce/constants/texts.dart';
import 'package:ecommerce/screens/Sign_in.dart';
import 'package:ecommerce/screens/card1.dart';
import 'package:ecommerce/screens/Sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ecommerce/screens/loging.dart';

class LOging_screen extends StatefulWidget {
  const LOging_screen({super.key});

  @override
  State<LOging_screen> createState() => _LOging_screenState();
}

class _LOging_screenState extends State<LOging_screen> {
  registerUser() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: nameController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            // width: MediaQuery.of(context).size.width * 1,
            // height: MediaQuery.of(context).size.height * 0.5,
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(25, 90, 0, 0),
              child: headingtext(text: "Let's Sign You In"),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text(
                "Welcome back, you've  been missed!",
                style: TextStyle(
                  color: Color(0xff171717),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 80),
            Container(
              child: Textstyle(text: "Username or Email"),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: textfielddynamic(
                    labeltext: "UserName",
                    icon: Icon(Icons.person_outlined),
                    controller: nameController)),
            Container(
              child: Textstyle(text: "Password"),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Passworddynamic(
                  labeltext: "Password",
                  icon: Icon(Icons.lock),
                  controller: passwordController),
            ),

            SizedBox(height: 150),

            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton.icon(
                onPressed: () {
                  registerUser();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => card1()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(234, 198, 171, 89),
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                icon: const Icon(Icons.login),
                label: Text("SIGN IN"),
              ),
            ),
            Row(
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500),
                ),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 3, 3, 3),
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sign_in(),
                        ));
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(height: 10),

            Container(
              height: 20,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff3C79E6),
                    textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )),
                child: Text(
                  "Connect with Facebook",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
