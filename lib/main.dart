import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/screens/welcome_screen.dart';

import 'components/rounded_button.dart';
import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

/*class CheckBoxExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color: Colors.white,
        home: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 100, bottom: 150, left: 25, right: 25),
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25)),
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Material(
                    borderRadius: BorderRadius.circular(60),
                    elevation: 5,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Login',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    obscureText: true,
                    textAlign: TextAlign.center,
                    onChanged: (value) {},
                    decoration: kTextFieldDecoration.copyWith(
                      suffix: InkWell(
                        onTap: () {},
                        child: Icon(Icons.remove_red_eye),
                      ),
                      hintText: 'Enter Your Password',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      onChanged: (value) {},
                      decoration: kTextFieldDecoration,
                    ),
                  ),
                  RoundedButton(
                      roundedBtnColor: Colors.brown,
                      roundedBtnText: 'Log In',
                      onPressedRoundedBtn: () async {}),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Don\'t have account?',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
      initialRoute: WelcomeScreen.id,
      // home: CheckBoxExample(),
    );
  }
}
