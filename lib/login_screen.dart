import 'package:craft_my_plate/otp_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();

  // void sendOTP() async{
  //   String phone = '+91' + phoneController.text.trim();
  //   await FirebaseAuth.instance.verifyPhoneNumber(
  //     phoneNumber: phone,
  //     verificationCompleted: (credential){},
  //     verificationFailed: (FirebaseAuthException ex){
  //       print(ex.toString());
  //     },
  //     codeSent: (verificationid, resendtoken){
  //       Navigator.push(context, MaterialPageRoute(builder: (context) => OTPVerificationScreen(verificationid: verificationid,)));
  //     },
  //     codeAutoRetrievalTimeout: (verificationid){},
  //     timeout: const Duration(seconds: 30),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //logo & name
            Container(
              height: 420,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(99, 24, 175, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Logo.png'),
                  const Text(
                    "India's 1st Dynamic Pricing Food\nCatering App",
                    style: TextStyle(
                      color: Color.fromRGBO(252, 255, 247, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ),
            const SizedBox(height: 40),

            //login form
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Log In or Sign Up with Craft My Plate",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )
                  ),
                  const SizedBox(height: 20),
              
                  //phone number
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 55,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color:const Color.fromRGBO(170, 170, 170, 1))
                        ),
                        child: const Center(
                          child: Text(
                            '+91',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          controller: phoneController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(255, 255, 255, 1),
                            hintText: 'Enter Phone Number',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Color.fromRGBO(170, 170, 170, 1)), 
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),

                  //continue button
                  SizedBox(
                    height: 44,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // sendOTP();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OTPVerificationScreen()));
                      },
                      child: Text(
                        'Continue',
                        style:  TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        )
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(99, 24, 175, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      )
                    ),
                  ),
                  const SizedBox(height: 25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "don't have an account?",
                        style: TextStyle(
                          color: Colors.black
                        )
                      ),
                      InkWell(
                        onTap: (){},
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(99, 24, 175, 1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  // Terms and Conditions
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'By continuing, I accept ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromRGBO(99, 24, 175, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        ' and ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  const Center(
                    child: Text(
                      'Privacy Policy',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(99, 24, 175, 1),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      )
    );
  }
}