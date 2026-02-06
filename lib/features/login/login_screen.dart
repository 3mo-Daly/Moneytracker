// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final myKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'MoneyWise',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: myKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.wallet,
                    color: Colors.blueAccent,
                    size: 40,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Login to manage your finances and \n             track your expenses.',
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                InputField(
                  paramater: 'Email Address',
                  hint: 'name@example.com',
                  controller: emailController,
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your email' : null,
                ),
                SizedBox(
                  height: 15,
                ),
                InputField(
                  paramater: 'Password',
                  hint: 'Enter your password',
                  controller: passwordController,
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your password' : null,
                ),
                Align(
                  alignment: Alignment.topRight,
                 // alignment: AlignmentGeometry.topRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'forgot password?',
                        style: TextStyle(color: Colors.blueAccent),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        shadowColor: Colors.blue,
                        minimumSize: const Size(double.infinity, 50),
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                            //borderRadius: BorderRadiusGeometry.circular(10)
                            ),
                        fixedSize: const Size.fromHeight(50.0)),
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white),
                    )),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 20,
                        endIndent: 10,
                      ),
                    ),
                    Text(
                      "OR CONTINUE WITH",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 10,
                        endIndent: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: SizedBox(
                      width: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/google.png',
                            width: 30,
                            height: 30,
                          ),
                          Text(
                            'Google',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    )),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don`t have an account? '),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Create account',
                          style: TextStyle(color: Colors.blueAccent),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String paramater;
  final String hint;
  final FormFieldValidator<String> validator;
  final TextEditingController controller;
  const InputField({
    super.key,
    required this.paramater,
    required this.hint,
    required this.validator,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      

     // spacing: 10,
      //mafe4 7aga esmaha spacing yasta mathzar4
      children: [
        Text(
          paramater,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            hintText: hint,
            // hintText m4 hint 
            // hint: Text(
            //   hint,
            //   style: TextStyle(color: Colors.grey),
            // ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
