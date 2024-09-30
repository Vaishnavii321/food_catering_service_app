import 'package:flutter/material.dart';

class otpInputField extends StatelessWidget {
  final TextEditingController otpController;
  
  const otpInputField({super.key, required this.otpController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(0, 0, 0, 0.04),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: otpController,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        maxLength: 1,
        decoration: const InputDecoration(
          border: InputBorder.none,
          counterText: '',
        ),
      ),
    );
  }
}