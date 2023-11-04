import 'package:flutter/material.dart';
import 'package:mordern_login_ui/widgets/myBtn.dart';
import 'package:mordern_login_ui/widgets/square_tile.dart';
import 'package:mordern_login_ui/widgets/textField.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  // text controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign in method
  void _signUserIn() {}

  void _onGoogleTap() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // logo
                SizedBox(
                  height: 120,
                  width: 150,
                  child: Image.asset(
                    'assets/images/odcl_logo.png',
                  ),
                ),
                const SizedBox(height: 15),

                // wellcome text
                Text(
                  'Wellcome, You have been missed...',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 25),

                // username tf
                textField(
                  controller: usernameController,
                  hintText: 'Username',
                  obsCuretext: false,
                ),
                const SizedBox(height: 12),

                // password tf
                textField(
                  controller: passwordController,
                  hintText: 'Password',
                  obsCuretext: true,
                ),
                const SizedBox(height: 12),

                // forget pass
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),

                // sign in btn
                Btn(onTap: _signUserIn),
                const SizedBox(height: 25),

                // Divider(thickness: 1),
                // or conti with google/ apple sign in btn
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text('Or Cotinue with'),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: _onGoogleTap,
                      child: SquareTile(imagePath: 'assets/images/google.png'),
                    ),
                    const SizedBox(width: 10),
                    SquareTile(imagePath: 'assets/images/apple.png'),
                  ],
                ),
                const SizedBox(height: 25),
                // reg btn
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a member?'),
                    SizedBox(width: 4),
                    Text(
                      'Register Now!',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
