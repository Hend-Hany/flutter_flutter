import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class JoinUs extends StatefulWidget {
  const JoinUs({Key? key}) : super(key: key);

  @override
  State<JoinUs> createState() => _JoinUsState();
}

class _JoinUsState extends State<JoinUs> {
  final formKey = GlobalKey<FormState>();

  String? value;

  bool? v=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 21,bottom: 21),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Join Us',
                      style: TextStyle(
                        fontFamily: 'assets/fonts/fonts/NunitoSans-Bold',
                        color: Color(0xFF1C1C1C),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 74),
                      child: Text(
                        'Create an account so you can stay up to date with awesome recipes',
                        style: TextStyle(
                          fontFamily: 'assets/fonts/fonts.txt/NunitoSans-Regular',
                          fontSize: 16,
                          color: Color(0xFF606060),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: TextFormField(
                        validator: (value) {
                          if(value==null||value.isEmpty){
                          return 'Name must not empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'First and last name',
                          hintStyle: const TextStyle(
                            color: Color(0xFFA3A3A3),
                            fontSize: 16,
                            fontFamily: 'assets/fonts/fonts.txt/NunitoSans-Regular',
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFE6E6E6),
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password must not be empty';
                          } else if (!value.contains('@')) {
                            return 'Email must have @';
                          } else if (!value.contains('.com')) {
                            return 'Email must have .com';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Email address',
                          hintStyle: const TextStyle(
                            color: Color(0xFFA3A3A3),
                            fontSize: 16,
                            fontFamily: 'assets/fonts/fonts/NunitoSans-Regular',
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFE6E6E6),
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        validator: (value) {
                          if(value==null || value.length<8) {
                            return 'Password must have(8-20 characther)';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Password (8 - 20 characthers)',
                          hintStyle: const TextStyle(
                            color: Color(0xFFA3A3A3),
                            fontSize: 16,
                            fontFamily: 'assets/fonts/fonts.txt/NunitoSans-Regular',
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFE6E6E6),
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Mobile number (For delivery updates)',
                          hintStyle: const TextStyle(
                            color: Color(0xFFA3A3A3),
                            fontSize: 16,
                            fontFamily: 'assets/fonts/fonts.txt/NunitoSans-Regular',
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFFE6E6E6),
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Checkbox(
                          activeColor:const Color(0xFF79B955) ,
                            value: v,
                            onChanged: (v){
                              setState(() {
                                this.v=v;
                              });
                            }),
                        Container(
                          padding:const EdgeInsets.only(right: 18,),
                          child: const SizedBox(
                            width: 303,
                            height: 59,
                            child: Text(
                              'By joining Savory you agree that you are over 18 years of age or older, will receive email updates, promotions and special offers.',
                              style:TextStyle(
                                fontSize: 14,
                                color: Color(0xFF606060),
                                fontFamily: 'assets/fonts/fonts.txt/NunitoSans-Regular',
                              ) ,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Container(
                      width:344 ,
                      height: 42,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:const Color(0xFFD53C25),
                        ),
                        onPressed: () {
                          formKey.currentState?.save();
                          print(value);
                          if (formKey.currentState?.validate() == true) {
                            print('Valid');
                          } else {
                            print('Invalid');
                          }
                        },
                        child: const Text(
                          'Join Us',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'assets/fonts/fonts.txt/NunitoSans-Bold',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 113,
                    ),
                    const Center(
                      child: Text(
                        'Continue with',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'assets/fonts/fonts.txt/NunitoSans-SemiBold',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 33,
                    ),
                    Container(
                      color:const Color(0xFF2E2E2E),
                      width: 344,
                      height: 42,
                      padding:const EdgeInsets.only(left:16 ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                              FontAwesomeIcons.instagram,
                            color: Color(0xFFFFFFFF),
                          ),
                          SizedBox(
                            width: 99,
                          ),
                          Text(
                              'Instagram',
                            style: TextStyle(
                              fontFamily: 'assets/fonts/fonts.txt/NunitoSans-Bold',
                              fontSize: 16,
                              color: Color(0xFFFFFFFF)
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      color:const Color(0xFF4760A9),
                      width: 344,
                      height: 42,
                      padding:const EdgeInsets.only(left:16 ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            FontAwesomeIcons.facebook,
                            color: Color(0xFFFFFFFF),
                          ),
                          SizedBox(
                            width: 99,
                          ),
                          Text(
                            'Facebook',
                            style: TextStyle(
                                fontFamily: 'assets/fonts/fonts.txt/NunitoSans-Bold',
                                fontSize: 16,
                                color: Color(0xFFFFFFFF)
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      color:const Color(0xFF1DA1F2),
                      width: 344,
                      height: 42,
                      padding:const EdgeInsets.only(left:16 ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            FontAwesomeIcons.twitter,
                            color: Color(0xFFFFFFFF),
                          ),
                          SizedBox(
                            width: 99,
                          ),
                          Text(
                            'Twitter',
                            style: TextStyle(
                                fontFamily: 'assets/fonts/fonts.txt/NunitoSans-Bold',
                                fontSize: 16,
                                color: Color(0xFFFFFFFF)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
