import 'package:ecommerce/constants/button.dart';
import 'package:ecommerce/constants/texts.dart';
import 'package:ecommerce/screens/card1.dart';
import 'package:ecommerce/screens/loging_screen.dart';
import 'package:ecommerce/wigets/cardwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ecommerce/screens/loging.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
              child: headingtext(text: "Getting Started"),
            ),
            Container(
              child: Text(
                "Create an account to continue!",
                style: TextStyle(
                  color: Color(0xff171717),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 40),
            //------------email text field
            Container(
              child: Textstyle(
                text: "Email",
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: textfielddynamic(
                  labeltext: "Email",
                  icon: Icon(Icons.email),
                  controller: nameController),
            ),
            Container(
              child: Textstyle(text: "UserName"),
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: textfielddynamic(
                    labeltext: "UserName",
                    icon: Icon(Icons.person_outlined),
                    controller: usnameController)),
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
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.fromLTRB(33, 0, 50, 0),
              child: Column(
                children: [
                  const Text(
                    "By creating an account, you agree to our",
                    style: TextStyle(
                        fontSize: 10,
                        color: Color.fromARGB(200, 3, 3, 3),
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    child: TextButton(
                      child: const headingtext(text: 'Term & Conditions'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 100),

            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: signinbutton(
                    labeltext: "SIGN IN",
                    backgroundcolor: Color.fromARGB(234, 198, 171, 89),
                    icon: const Icon(
                      Icons.login,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LOging_screen(),
                          ));
                    })),
            Row(
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500),
                ),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 3, 3, 3),
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(height: 10),

            Container(
              // height: 20,
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
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
