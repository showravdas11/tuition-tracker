import 'package:flutter/material.dart';
import 'package:poralekha/common/button.dart';
import 'package:poralekha/common/text_filed.dart';
import 'package:poralekha/theme/myTheme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // final _formKey = GlobalKey<FormState>();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.WhiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Color(0xFF375FBE),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormFiledCommon(
                  controller: emailController,
                  text: "Email",
                  obscure: false,
                  suffixIcon: Icon(Icons.email),
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormFiledCommon(
                  controller: passwordController,
                  text: "Password",
                  obscure: true,
                  suffixIcon: Icon(Icons.remove_red_eye),
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Color(0xFFFFFFFF),
                          activeColor: Color(0xFF375FBE),
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                          materialTapTargetSize: MaterialTapTargetSize
                              .shrinkWrap, 
                          visualDensity: VisualDensity(
                              horizontal: -4.0,
                              vertical: -4.0),
                        ),
                        Text("Remember me", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF375FBE)),),
                      ],
                    ),
                    Text("Forget Password ?",  style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF375FBE)),)
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                RoundedButton(title: "Login", width: 250, onTap: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
