import 'package:flutter/material.dart';
import 'package:flutter_catelogapplication/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  String lname = "";
  bool changeButton = false;
  final _fromkey = GlobalKey<FormState>();

 Future MoveToHome(BuildContext context) async {
    if (_fromkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoutes);

      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Form(
              key: _fromkey,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "Username"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          name = value;
                        }
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password should be 6 digit";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          lname = value;
                        }
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 50),
                    Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => MoveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50,
                            width: changeButton ? 50 : 150,
                            alignment: Alignment.center,
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                          ),
                        )
                        // ElevatedButton(
                        //   onPressed: () {
                        //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
                        //   },
                        //   child: Text("Login"),
                        //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
                        )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
