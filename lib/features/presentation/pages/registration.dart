import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:prayer_partner/features/presentation/pages/loginPage.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF13131D),
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Color(0xFF206040),
      //   leading: GestureDetector(
      //     onTap:(){
      //       Navigator.pop(context);
      //     },
      //             child: Icon(
      //       Icons.arrow_back,
      //       color: Colors.grey,
      //     ),
      //   ),
      // ),
      body: SafeArea(
              child: SingleChildScrollView(
          child: Container(
             decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.05,0.9),
                colors: [
                   Color(0xFF13131D),
                   Color(0xFF232A4E),
                   Color(0xFF13131D),

                ]
              )
            ),
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
                    child: Image(
                      color: Colors.black,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/4.png')),
                    borderColor: Color(0xFFFF8F00),
                    borderWidth: 0,
                    elevation: 2,
                    radius: 40,

                  ),
                ),
              ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40, top: 10),
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                        labelText: 'Username or Email',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 10),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40, top: 20),
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone, color: Colors.white),
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 10),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40, top: 20),
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Colors.white),
                        labelText: 'Fullname',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 10),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40, top: 20),
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email, color: Colors.white),
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 10),
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
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 10),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40, top: 20),
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.location_on,
                            color: Colors.white),
                        labelText: 'Adress',
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 10),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)))),
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
              // Padding(
              //   padding: const EdgeInsets.only(left: 150),
              //   child: Text('Forgot Password?',
              //       style: TextStyle(color: Colors.grey)),
              // ),
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
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> LoginPage()));
                    },
                                    child: Text('LOGIN',
                        style: TextStyle(
                            color: Color(0XFFaba41d), fontWeight: FontWeight.bold)),
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
