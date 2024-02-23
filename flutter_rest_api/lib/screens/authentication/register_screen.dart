import 'package:flutter/material.dart';
import 'package:flutter_rest_api/provider/authProvider/auth_provider.dart';
import 'package:flutter_rest_api/screens/authentication/login_screen.dart';
import 'package:flutter_rest_api/utils/routers.dart';
import 'package:flutter_rest_api/widgets/button.dart';
import 'package:flutter_rest_api/widgets/text_field.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _email.clear();
    _password.clear();
    _firstName.clear();
    _lastName.clear();
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
   // final registerProvider = Provider().of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
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
                        title: 'First Name',
                        controller : _firstName,
                        hint: 'enter first Name'
                      ),

                      CustomTextField(
                        title: 'Last Name',
                        controller : _lastName,
                        hint: 'enter last Name'
                      ),

                      CustomTextField(
                        title: 'Email',
                        controller : _email,
                        hint: 'Enter Your valid email address'
                      ),
                      CustomTextField(
                        title: 'Psssword',
                        controller : _password,
                        hint: 'Enter Your secured password'
                      ),
                      Consumer<AuthenticationProvider>(
                        builder: (context, value, child) {
                          return CustomButotm(
                            context: context,
                            status: value.isLoading,
                            tap: (){},
                            text: 'Register'
                          );
                        },
                        
                      ),

                      GestureDetector(
                        onTap: () {
                          PageNavigator(context: context).nextPage(page: LoginPage());
                        },
                        child: const Text(
                          'login Please'
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