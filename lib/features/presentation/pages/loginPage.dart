// import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:prayer_partner/features/presentation/pages/registration.dart';
import 'package:prayer_partner/features/screen/bottomNavigation.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF13131D),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        // tileMode:TileMode.repeated,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xFF13131D),
                      Color(0xFF232A4E),
                      Color(0xFF232A4E),
                      Color(0xFF13131D),
                    ])
                    ),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Center(
                                child: Image(
                                    // color: Colors.black,
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/4.png')),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 40.0, right: 40, top: 40),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                            controller: emailController,
                            decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.person, color: Colors.white),
                                labelText: 'Username or Email',
                                labelStyle:
                                    TextStyle(color: Colors.white, fontSize: 10),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)))),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 40.0, right: 40, top: 20),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          controller: passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon:
                                Icon(Icons.lock_outline, color: Colors.white),
                            labelText: 'password',
                            labelStyle:
                                TextStyle(color: Colors.white, fontSize: 10),
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
                        onTap: () {
                          // final form = _formKey.currentState;
                          // if (form.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BottomNavBar()));
                          // }
                        },
                        child: Ink(
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width / 1.3,
                            decoration: BoxDecoration(
                                color: Color(0xFFD1CBCB),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                'LOGIN',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
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
                                    color: Color(0xFFeba41d),
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
