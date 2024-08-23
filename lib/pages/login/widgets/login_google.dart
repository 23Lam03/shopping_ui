import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginGoogle extends StatelessWidget {
  const LoginGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffCE181B),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/image/gg.png'),
          ),
          Expanded(
            child: SizedBox(
              width: 235,
              height: 26,
              child: Text(
                'Sign With Google',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: const Color(0xffB0B0B0),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
