import 'package:flutter/material.dart';
import 'package:thirtyday/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userName = "";
  bool buttonAnimation = false;

  final _formKey = GlobalKey<FormState>();

  goToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        buttonAnimation = true;
      });
      await Future.delayed(
        const Duration(seconds: 2),
      );

      await Navigator.pushNamed(context, AppRoutes.homePage);
      setState(() {
        buttonAnimation = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/login.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $userName",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: ((value) {
                          userName = value;
                          setState(() {});
                        }),
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value.length < 6) {
                            return "Password length should be atleast 6 char";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Password",
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Material(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(
                            buttonAnimation == true ? 50 : 8),
                        child: InkWell(
                          onTap: () => goToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: (buttonAnimation == true) ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: buttonAnimation
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
