import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'package:flutter/services.dart';

class SigninScreen extends StatefulWidget {
  static String routeName = '/sign-in';

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  void signIn(String email, password) {}
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.white));
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Image.asset('assets/images/background.jpg'),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 200, 0, 0),
              child: Text(
                'Welcome!',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold),
              )),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.4),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.only(
                    top: 50, right: 50, left: 50, bottom: 30),
                child: Column(
                  children: [
                    //Sign in text
                    Text(
                      'Sign in',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue.shade600,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // email and password
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 20,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade500))),
                            child: TextField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: TextField(
                              controller: passwordController,
                              decoration: const InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: const TextButton(
                        child: Text('Forget Password?'),
                        onPressed: null,
                      ),
                    ),
                    // login
                    InkWell(
                      onTap: () =>
                          signIn(emailController.text, passwordController.text),
                      child: Container(
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue.shade600),
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: const BoxDecoration(color: Colors.grey),
                          height: 10,
                        ),
                        const Text(
                          'Or Sign-in With',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          decoration: const BoxDecoration(color: Colors.grey),
                          height: 10,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          height: 30,
                          width: 30,
                          child: Image.asset('assets/images/google-icon.png'),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          height: 30,
                          width: 30,
                          child: Image.asset('assets/images/facebook-icon.png'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account?'),
                        TextButton(
                            onPressed: () => Navigator.of(context)
                                .pushReplacementNamed(SignupScreen.routeName),
                            child: const Text(
                              'Sign Up!',
                              style: TextStyle(color: Colors.amber),
                            ))
                      ],
                    )
                  ],
                ),
              )),
            ),
          )
        ]),
      ),
    );
  }
}
