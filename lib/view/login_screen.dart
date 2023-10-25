import 'package:flutter/material.dart';
import 'package:flutter_application_3/view/bottom_navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  get isSignin => false;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
 
  bool obscure = true;
  bool isSignin = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController mobile = TextEditingController();

  void login() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context);
    }
    if (email.text == 'mitali@' && password.text == '123') {
      print('Login successful');
      setState(() {});
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => BottomNavigationScreen()));
    }
  }

  void toggle() {
    setState(() {
      isSignin = !isSignin;
    });
    name.clear();
    email.clear();
    password.clear();
    mobile.clear();
    obscure = !obscure;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(19, 26, 34, 1),
      body: SingleChildScrollView(
              child: Padding(
            padding:
                const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 40),
            child: Column(children: [
              Visibility(
                  replacement: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Create account",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      )),
                  visible: !isSignin,
                  child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Sing in",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ))),
              Visibility(
                visible: !isSignin,
                child: Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forget password?",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 15, 121, 179),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Form(
                  key: _formKey,
                  child: Column(children: [
                    Visibility(
                        replacement: Column(
                          children: [
                            TextFormField(
                              controller: name,
                              decoration: const InputDecoration(
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Colors.white)),
                                  fillColor: Colors.white,
                                  hintText: "First and last name",
                                  hintStyle: TextStyle(
                                    fontSize: 18,
                                  )),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: email,
                              decoration: const InputDecoration(
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Colors.white)),
                                  fillColor: Colors.white,
                                  hintText: "Mobile number or email",
                                  hintStyle: TextStyle(
                                    fontSize: 18,
                                  )),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: password,
                              obscureText: obscure,
                              decoration: const InputDecoration(
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Colors.white)),
                                  fillColor: Colors.white,
                                  hintText: "Create password",
                                  hintStyle: TextStyle(
                                    fontSize: 18,
                                  )),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                        visible: !isSignin,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: email,
                              decoration: const InputDecoration(
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Colors.white)),
                                  fillColor: Colors.white,
                                  hintText: "Email or mobile number",
                                  hintStyle: TextStyle(
                                    fontSize: 18,
                                  )),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            TextFormField(
                              obscureText: obscure,
                              controller: password,
                              decoration: const InputDecoration(
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Colors.white)),
                                  fillColor: Colors.white,
                                  hintText: "Amazon Password",
                                  hintStyle: TextStyle(
                                    fontSize: 18,
                                  )),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ],
                        )),
                    Align(
                      alignment: Alignment.topLeft,
                      child: CheckboxListTile(
                        activeColor: Colors.white,
                        fillColor: MaterialStatePropertyAll(Colors.white),
                        checkColor: Colors.black,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text(
                          'Show password',
                          style:
                              TextStyle(fontSize: 20, color: Colors.blueGrey),
                        ),
                        value: !obscure,
                        onChanged: (value) {
                          setState(() {
                            obscure = !value!;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                          onPressed: login,
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              textStyle: const TextStyle(fontSize: 16),
                              backgroundColor:
                                  const Color.fromARGB(255, 15, 121, 179),
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )),
                          child: Column(
                            children: [
                              Visibility(
                                  replacement: const Text(
                                    'Continue',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  visible: !isSignin,
                                  child: const Text(
                                    'Sign in',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ))
                            ],
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Visibility(
                        visible: isSignin,
                        child: TextButton(
                            onPressed: toggle,
                            child: const Text(
                              'Already have an account?',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 15, 121, 179),
                              ),
                            ))),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 1.5,
                      child: const Text(
                        "By Signing in you agree to the Prime Video Terms of Use and license agreements which can be found on the Amazon website.",
                        style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                      ),
                    )
                  ])),
              const SizedBox(
                height: 20,
              ),
              Visibility(
                visible: !isSignin,
                child: const Text(
                  "New to Amazon?",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              SizedBox(height: 10,),
              Visibility(
                  visible: !isSignin,
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                        onPressed: toggle,
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            textStyle: const TextStyle(fontSize: 16),
                            backgroundColor:
                                const Color.fromARGB(255, 97, 113, 137),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                        child: const Text(
                          'Create New Account',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  )),
            ]),
          ))
    );
  }
}
