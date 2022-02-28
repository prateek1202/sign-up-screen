import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
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
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.4),
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60), topRight: Radius.circular(60))),
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(50),
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
                                bottom:
                                    BorderSide(color: Colors.grey.shade500))),
                        child: const TextField(
                          decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: const TextField(
                          decoration: InputDecoration(
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
                Container(
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
                    const Text('Or Sign Up With'),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Don\'t have an account?'),
                    TextButton(
                        onPressed: null,
                        child: Text(
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
    ]);
  }
}
