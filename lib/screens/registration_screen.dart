import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';
import '../components/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'chat_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'RegistrationScreen';
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 200,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              TextField(
                controller: emailTextController,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Enter Your Email',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordTextController,
                obscureText: showPassword,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                  suffix: InkWell(
                    onTap: () {
                      setState(() {
                        if (showPassword == true)
                          showPassword = false;
                        else
                          showPassword = true;
                      });
                    },
                    child: Icon(Icons.remove_red_eye),
                  ),
                  hintText: 'Enter Your Password',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              RoundedButton(
                  roundedBtnColor: Colors.blueAccent,
                  roundedBtnText: 'Sign Up',
                  onPressedRoundedBtn: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                        email: email.trim(),
                        password: password.trim(),
                      );
                      Navigator.pushNamed(context, ChatScreen.id);
                      setState(() {
                       emailTextController.clear();
                        passwordTextController.clear();
                        showSpinner = false;
                      });
                    } catch (e) {
                      setState(() {
                        showSpinner = false;
                      });
                      print(e);
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
