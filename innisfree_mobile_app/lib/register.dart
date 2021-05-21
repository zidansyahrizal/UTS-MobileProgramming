import 'dart:ui';
import 'package:flutter/material.dart';

class RegPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<RegPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  DateTime currentDate = DateTime.now();

  int _groupValue = -1;

  bool _isObscure = true;

  bool _agree1 = true;

  bool _agree2 = true;

  var confirmPass;

  Widget buildAgree1() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(
              unselectedWidgetColor: Color(0xffBDBDBD),
            ),
            child: Checkbox(
              value: _agree1,
              checkColor: Colors.white,
              activeColor: const Color(0xff0d4335),
              onChanged: (value) {
                setState(() {
                  _agree1 = value;
                });
              },
            ),
          ),
          Expanded(
              child: (Row(
            children: [
              Text(
                'I would like to receive your newsletter & promotion',
                style: TextStyle(fontSize: 14, color: Color(0xffBDBDBD)),
              ),
            ],
          ))),
        ],
      ),
    );
  }

  Widget buildAgree2() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(
              unselectedWidgetColor: Color(0xffBDBDBD),
            ),
            child: Checkbox(
              value: _agree2,
              checkColor: Colors.white,
              activeColor: const Color(0xff0d4335),
              onChanged: (value) {
                setState(() {
                  _agree2 = value;
                });
              },
            ),
          ),
          Expanded(
              child: (Row(
            children: [
              Text(
                'I agree to the',
                style: TextStyle(fontSize: 14, color: Color(0xffBDBDBD)),
              ),
              Text(
                ' Terms & Conditions',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xffBDBDBD),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ))),
        ],
      ),
    );
  }

  Widget buildButtonReg() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            primary: Color(0xff0D4335),
            onPrimary: Colors.white,
            elevation: 5,
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
        child: Text("Register",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget buildSignUp() {
    return Container(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () => print("Login Pressed"),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'Already have an Account ? ',
                  style: TextStyle(
                      color: Color(0xffBDBDBD),
                      fontSize: 16,
                      fontWeight: FontWeight.w500)),
              TextSpan(
                  text: 'Login',
                  style: TextStyle(
                      color: Color(0xff0D4335),
                      fontSize: 16,
                      fontWeight: FontWeight.bold))
            ]),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(12),
            child: ListView(children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20, bottom: 45),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: const Color(0xff0d4335),
                        fontWeight: FontWeight.w900,
                        fontSize: 30),
                  )),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      fillColor: Color(0xfff6f6f6),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Color(0xffe8e8e8))),
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15, top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      fillColor: Color(0xfff6f6f6),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Color(0xffe8e8e8))),
                      hintText: 'E-mail Address',
                      hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 15, left: 17, top: 20),
                  child: Text(
                    'Gender',
                    style: TextStyle(
                        color: const Color(0xff425F5D),
                        fontWeight: FontWeight.w800,
                        fontSize: 16),
                  )),
              Row(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: RadioListTile(
                    value: 0,
                    groupValue: _groupValue,
                    title: Text(
                      "Male",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    onChanged: (newValue) =>
                        setState(() => _groupValue = newValue),
                    activeColor: Color(0xff0d4335),
                    selected: false,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RadioListTile(
                    value: 1,
                    groupValue: _groupValue,
                    title: Text("Female"),
                    onChanged: (newValue) =>
                        setState(() => _groupValue = newValue),
                    activeColor: Color(0xff0d4335),
                    selected: false,
                  ),
                ),
              ]),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15, top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: Color(0xfff6f6f6),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Color(0xffe8e8e8))),
                      hintText: 'Username',
                      hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15, top: 10),
                child: TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    fillColor: Color(0xfff6f6f6),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Color(0xffe8e8e8))),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                    suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15, top: 10),
                child: TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    fillColor: Color(0xfff6f6f6),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Color(0xffe8e8e8))),
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                    suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: buildAgree1(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: buildAgree2(),
              ),
              buildButtonReg(),
              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: buildSignUp(),
              )
            ])));
  }
}
