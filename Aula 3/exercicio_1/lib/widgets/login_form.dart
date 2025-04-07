import 'package:exercicio_1/models/login.dart';
import 'package:exercicio_1/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildTextField("Email", _userController),
        SizedBox(height: 10),
        buildTextField("Password", _passwordController, isPassword: true),
        SizedBox(height: 10),
        InkWell(
          child: Text("Forgot Password", style: TextStyle(color: Colors.blue)),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            foregroundColor: Colors.white,
            fixedSize: Size(200, 0),
          ),
          onPressed: () {
            Login login = Login(_userController.text, _passwordController.text);
            if (!login.isAdmin()) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Error, invalid credentials"),
                  backgroundColor: Colors.red,
                ),
              );
              return;
            }
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Text("Login"),
        ),
      ],
    );
  }
}

Container buildTextField(
  String hintText,
  TextEditingController controller, {
  bool isPassword = false,
}) {
  return Container(
    width: 350,
    child: TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
    ),
  );
}
