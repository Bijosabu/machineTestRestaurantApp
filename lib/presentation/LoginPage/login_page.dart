// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:restaurantapp/constants/constants.dart';
import 'package:restaurantapp/presentation/HomePage/home_page.dart';
import 'package:restaurantapp/presentation/widgets/main_text_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;
  Future<void> saveLoginDetails(
      String username, String password, bool rememberMe) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('username', username);
    prefs.setString('password', password);
    prefs.setBool('rememberMe', rememberMe);
    print('login details saved ');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight30,
              Container(
                height: size.height * 0.3,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/loginimage.jpg'))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 26),
                    child: Text(
                      'Log in',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 26),
                    child: Text(
                      'your account',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800]),
                    ),
                  ),
                ],
              ),
              kHeight20,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: MainTextField(
                  controller: usernameController,
                  hintText: '   Username',
                  obscureText: false,
                  inputType: TextInputType.name,
                ),
              ),
              kHeight10,
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: MainTextField(
                  controller: passwordController,
                  hintText: '   Password',
                  obscureText: true,
                  inputType: TextInputType.name,
                ),
              ),
              kHeight5,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      const Text(
                        'Remember me',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.blue[800], fontSize: 16),
                      )),
                ],
              ),
              kHeight30,
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        minimumSize: const Size(double.infinity, 60),
                        backgroundColor: Colors.orange[600],
                      ),
                      onPressed: () async {
                        final username = usernameController.text;
                        final password = passwordController.text;

                        if (username.isEmpty || password.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text(
                                      'Enter Both Username and Password ')));
                        } else {
                          await saveLoginDetails(
                              username, password, rememberMe);

                          // Navigate to the HomeScreen after successful login
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return const HomePage();
                            },
                          ));
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
