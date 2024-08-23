import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForgotPassword extends StatelessWidget {
  const LoginForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Forgot Password?',
      style: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        color: const Color(0xff141414),
      ),
    );
  }
}
