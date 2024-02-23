import 'package:flutter/material.dart';
import 'package:flutter_rest_api/screens/authentication/register_screen.dart';
import 'package:flutter_rest_api/utils/routers.dart';
import 'package:flutter_rest_api/widgets/button.dart';
import 'package:flutter_rest_api/widgets/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _email.clear();
    _password.clear();
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: CustomScrollView(
          slivers: [
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [

                      CustomTextField(
                        title: 'Email',
                        controller : _email,
                        hint: 'Enter Your valid email address'
                      ),
                      CustomTextField(
                        title: 'PAssword',
                        controller : _password,
                        hint: 'Enter Your secured password'
                      ),
                      CustomButotm(
                        context: context,
                        status: false,
                        tap: (){},
                        text: 'Login'
                      ),

                      GestureDetector(
                        onTap: () {
                          PageNavigator(context: context).nextPage(page: RegisterPage());
                        },
                        child: const Text(
                          'Register Please'
                        ),
                      )



                    ],
                  ),
                ),
              )
          ],
      ),
    );
  }
}