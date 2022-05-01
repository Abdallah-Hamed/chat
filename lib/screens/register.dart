import 'dart:ui';

import 'package:chat/screens/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../component.dart';

var emailController = TextEditingController();

var passwordController = TextEditingController();

var formKey = GlobalKey<FormState>();

bool isPassword = true;

class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

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
                  'register',
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
              suffixPressed: () {},
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
                child: Text('register',
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
              Text(
                'already have an account ?',
                style: TextStyle(color: Color(0xffF2EBE5), fontSize: 15),
              ),
              SizedBox(
                width: 8.0,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff2B262D)),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
