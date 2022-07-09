import 'package:flutter/material.dart';
import 'package:project/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome $name!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeroute);
                  },
                  child: AnimatedContainer(
                    width: changeButton ? 50 : 150,
                    height: 40,
                    duration: Duration(seconds: 1),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      // shape:
                      //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 20 : 8),
                    ),
                    child: changeButton
                        ? Icon(Icons.done, color: Colors.white)
                        : Text('Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                  ),
                )
                // ElevatedButton(
                //   child: Text('Login'),
                //   style: TextButton.styleFrom(
                //     minimumSize: Size(150, 40),
                //   ),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeroute);
                //   },
                // ),
              ]),
            )
          ],
        ));
  }
}
