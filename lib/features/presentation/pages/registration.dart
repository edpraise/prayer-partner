import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prayer_partner/features/presentation/pages/loginPage.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final addressController = TextEditingController();
  final fullNameController = TextEditingController();
  final userNameController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    phoneNumberController.dispose();
    addressController.dispose();
    fullNameController.dispose();
    userNameController.dispose();

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
                        end: Alignment(0.05, 0.9),
                        colors: [
                      Color(0xFF13131D),
                      Color(0xFF232A4E),
                      Color(0xFF13131D),
                    ])),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Center(
                            child: Image(
                                // color: Colors.black,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/4.png')),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40.0, right: 40, top: 10),
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.person, color: Colors.white),
                                labelText: 'Username',
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40.0, right: 40, top: 20),
                        child: TextFormField(
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.phone, color: Colors.white),
                                labelText: 'Phone Number',
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40.0, right: 40, top: 20),
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.person, color: Colors.white),
                                labelText: 'Fullname',
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40.0, right: 40, top: 20),
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.email, color: Colors.white),
                                labelText: 'Email',
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40.0, right: 40, top: 20),
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock_outline,
                                    color: Colors.white),
                                labelText: 'Password',
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40.0, right: 40, top: 20),
                        child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.location_on,
                                    color: Colors.white),
                                labelText: 'Address',
                                labelStyle:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                        minWidth: MediaQuery.of(context).size.width / 1.3,
                        height: 50,
                        color: Color(0xFFD1CBCB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("""Already Have an Account?""",
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: Text('LOGIN',
                                style: TextStyle(
                                    color: Color(0XFFeba41d),
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
