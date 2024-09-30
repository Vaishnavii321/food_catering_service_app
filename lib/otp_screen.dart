import 'package:craft_my_plate/home_screen.dart';
import 'package:craft_my_plate/opt_input.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OTPVerificationScreen extends StatelessWidget {
  String verificationid;

  // Define controllers for each OTP input field
  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();
  final TextEditingController otpController5 = TextEditingController();
  final TextEditingController otpController6 = TextEditingController();

  OTPVerificationScreen({
    super.key,
    required this.verificationid,
  });

  void verifyOtp(context) async {
    String otp = otpController1.text.trim() + otpController2.text.trim() + otpController3.text.trim() + otpController4.text.trim() + otpController5.text.trim() + otpController6.text.trim();
    try{
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationid,
        smsCode: otp,
      );

      UserCredential userCredential =await FirebaseAuth.instance.signInWithCredential(credential);
      if(userCredential.user != null){
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    }catch(ex){
      print(ex.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 246, 240, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(247, 246, 240, 1),
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        centerTitle: true,
        title: const Text('OTP Verification', style: TextStyle(color: Colors.black, fontSize: 20)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            //message
            const Center(
              child: Text(
                'We have sent a verification code to',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(84, 84, 84, 1),
                  ),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '+91-XXXXXX6794',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.verified, color: Colors.green),
                ],
              ),
            ),
            const SizedBox(height: 30),

            // OTP Input fields
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                otpInputField(otpController: otpController1,),
                const SizedBox(width: 8),
                otpInputField(otpController: otpController2),
                const SizedBox(width: 8),
                otpInputField(otpController: otpController3),
                const SizedBox(width: 8),
                otpInputField(otpController: otpController4),
                const SizedBox(width: 8),
                otpInputField(otpController: otpController5),
                const SizedBox(width: 8),
                otpInputField(otpController: otpController6),
                const SizedBox(width: 8),
              ],
            ),
            const SizedBox(height: 40),

            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  backgroundColor: const Color.fromRGBO(99, 24, 175, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  verifyOtp(context);
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Resend code
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Didn't receive code?",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Resend Again.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(99, 24, 175, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

