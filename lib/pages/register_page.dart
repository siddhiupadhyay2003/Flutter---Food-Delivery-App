import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController confirmPasswordcontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo

              Icon(Icons.lock_open_rounded,
                  size: 100,
                  color: Theme.of(context).colorScheme.inversePrimary),

              const SizedBox(height: 25),

              //message, app slogan

              Text(
                "Let's create an account for you!",
                style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),

              const SizedBox(height: 25),

              //email textfield
              MyTextField(
                controller: emailcontroller,
                hintText: "Email",
                obscureText: false,
              ),
              const SizedBox(height: 10),
              //password textfield

              MyTextField(
                controller: passwordcontroller,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(height: 10),

              //confirm password

              MyTextField(
                controller: confirmPasswordcontroller,
                hintText: "Confirm Password",
                obscureText: true,
              ),
              const SizedBox(height: 25),

              //sign in button

              MyButton(text: 'Sign Up', onTap: () {}),
              const SizedBox(height: 25),
              

              //already have an account? login here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "already have an account?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text("Login Now",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
