import 'package:chat/screens/register.dart';
import 'package:flutter/material.dart';

import '../component.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Column(
        children: [
          Image.asset('assets/images/scholar.png'),
          Text(
            'Schoalr Chat',
            style: TextStyle(
                fontSize: 32, color: Colors.white, fontFamily: 'pacifico'),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: defaultFormField(
              controller: emailController,
              label: 'البريد الالكتروني',
              prefix: Icons.email,
              type: TextInputType.emailAddress,
              validate: (String? value) {
                if (value!.isEmpty) {
                  return 'البريد الالكتروني لايجب ان تكون فارغه';
                }
                return null;
              },
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: defaultFormField(
              controller: passwordController,
              label: 'كلمةالمرور',
              prefix: Icons.lock,
              suffix: isPassword ? Icons.visibility : Icons.visibility_off,
              isPassword: isPassword,
              suffixPressed: () {
                setState(() {
                  isPassword = !isPassword;
                });
              },
              type: TextInputType.visiblePassword,
              validate: (String? value) {
                if (value!.isEmpty) {
                  return 'كلمةالمرور قصيرة';
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              height: 35,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => asd()));
                },
                child: Text('Login',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                        color: Color(0xff2B262D),
                        width: 2.0,
                      ),
                    ))),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => register()));
                  },
                  child: Text(
                    'register',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2B262D)),
                  )),
              SizedBox(
                width: 8.0,
              ),
              Text(
                'donot have an account ?',
                style: TextStyle(color: Color(0xffF2EBE5), fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
