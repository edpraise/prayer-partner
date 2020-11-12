import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:prayer_partner/features/presentation/pages/registration.dart';
import 'package:prayer_partner/features/screen/bottomNavigation.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF206040),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF206040),
      ),
      body: SafeArea(
              child: SingleChildScrollView(
          child: Container(
              child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                
                ),
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Center(
                  child: CircularProfileAvatar(
                   '',
                    child: FlutterLogo(),
                    borderColor: Color(0xFFFF8F00),
                    borderWidth: 0,
                    elevation: 2,
                    radius: 60,

                  ),
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40, top: 40),
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                        labelText: 'Username or Email',
                        labelStyle: TextStyle(color: Colors.white, fontSize: 10),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40, top: 20),
                child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline, color: Colors.white),
                        labelText: 'password',
                        labelStyle: TextStyle(color: Colors.white, fontSize: 10),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            ),
                            ),
                            ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BottomNavBar()));
                },
                            child: Ink(
                              child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width/1.3,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text(
                          'LOGIN',
                          style: TextStyle(fontSize: 20),
                        ),
                    ),
                  ),
                ),
              ),
              // FlatButton(
              //   minWidth: MediaQuery.of(context).size.width / 1.3,
              //   height: 50,
              //   color: Color(0xFFffff99),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10.0),
              //   ),
              //   child: GestureDetector(
              //     onTap: () {
              //       Navigator.push(context,
              //           MaterialPageRoute(builder: (context) => BottomNavBar()));
              //     },
              //     child: Text(
              //       'LOGIN',
              //       style: TextStyle(fontSize: 20),
              //     ),
              //   ),
              //   onPressed: () {},
              // ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Text('Forgot Password?',
                    style: TextStyle(color: Colors.grey)),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("""Don't Have an Account?""",
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegistrationPage()));
                    },
                    child: Text('SIGN UP',
                        style: TextStyle(
                            color: Colors.yellow, fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
