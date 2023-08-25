import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';


class LoginScreen extends StatefulWidget {
  const
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  final formKey=GlobalKey<FormState>();
  bool ispassword=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key:formKey,
              child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    defaultFormField(
                      controller:emailController ,
                      type: TextInputType.emailAddress,
                      onSubmit: (value)
                      {
                        if (kDebugMode) {
                          print(value);
                        }
                        return null;
                      },
                      validate: ( value)
                      {
                        if(value!.isEmpty){
                          return 'email address required';
                        }
                        return null;
                      },
                      label: 'Email address',
                      prefix: Icons.email,
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    defaultFormField(
                        ispassword: ispassword,
                        controller: passwordController,
                        type: TextInputType.visiblePassword,
                        validate: (value)
                        {
                          if(value!.isEmpty){
                            return 'password too short';
                          }
                          return null;
                        },
                        label: 'password',
                        prefix: Icons.lock,
                        suffix:ispassword?Icons.visibility:Icons.visibility_off,
                        suffixPressed:()
                        {
                          setState(() {
                            ispassword=!ispassword;
                          });
                        }
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    defaultButton(
                        function: (){
                          if(formKey.currentState!.validate())
                          {
                            if (kDebugMode) {
                              print(emailController.text);
                            }
                            if (kDebugMode) {
                              print(passwordController.text);
                            }
                          }
                        },
                        text: 'login'
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        const Text('Don\'t have account?'),
                        TextButton(
                            onPressed: (){},
                            child: const Text('Register Now'))
                      ],
                    ),
                  ] ),
            ),
          ),


        ),
      ),
    );


  }
}


