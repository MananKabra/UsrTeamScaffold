import 'package:flutter/material.dart';

class loginPageSeller extends StatefulWidget {
  @override
  State<loginPageSeller> createState() => _loginPageSellerState();
}

class _loginPageSellerState extends State<loginPageSeller> {
  String email = "";
  String password = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //SingleChildScrollView is used to scroll the page to avoid overflow error
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            SizedBox(
              height: 90.0,
            ),
            Text(
              "Seller Login",
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 15, 16)),
            ),
            Image.asset(
              'images/login.jpg',
              fit: BoxFit.cover,
              height: 150,
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 16.0, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Email",
                          labelText: "Email Address"),
                      onChanged: (value) {
                        email = value;
                        setState(
                                () {}); //setState is used beause we are changing the state of the widget so we need to call setState to change the state
                      }),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                      onChanged: (value) {
                        password = value;
                        setState(
                                () {}); //setState is used beause we are changing the state of the widget so we need to call setState to change the state
                      }
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Material(
                    color: Color.fromARGB(255, 33, 201, 198),
                    borderRadius:
                    BorderRadius.circular(changeButton ? 50 : 20),
                    child: InkWell(
                      onTap: (){

                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 40,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                            : Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
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
    );
  }
}
