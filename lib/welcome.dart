import 'register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signIn.dart';

class SproutlyScreen extends StatelessWidget {
  const SproutlyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6EE),
      body: Center(
        child: SizedBox(
          width: 393,
          height: 852,
          child: Stack(
            children: [
              // =========================
              // BACKGROUND
              // =========================
              Container(
                width: 393,
                height: 852,
                color: const Color(0xFFF8F6EE),
              ),

              // =========================
              // BROWN SOIL
              // =========================
              Positioned(
                left: -319,
                top: 688,
                child: Container(
                  width: 1032,
                  height: 242,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFA97445), Color(0xFF8B5E34)],
                    ),
                    shape: BoxShape.rectangle,
                  ),
                ),
              ),

              // =========================
              // TREE
              // =========================
              Positioned(
                left: 90,
                top: 490,
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: SvgPicture.asset(
                    'lib/assets/images/tree.svg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              // =========================
              // LOGO
              // =========================
              Positioned(
                  left: 135,
                  top: 105,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'sprou',
                        style: GoogleFonts.quicksand(
                          color: const Color(0xFF113B28),
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.25,
                        ),
                      ),

                      // Your actual SVG.
                      // Transparent background.
                      Transform.translate(
                        offset: const Offset(0, -3),
                        child: SizedBox(
                          width: 30,
                          height: 35,
                          child: SvgPicture.asset(
                            'lib/assets/images/sproutly.svg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),

                      Text(
                        'ly',
                        style: GoogleFonts.quicksand(
                          color: const Color(0xFF113B28),
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.25,
                        ),
                      ),
                    ],
                  ),
                ),

              // =========================
              // MAIN TITLE
              // =========================
              Positioned(
                left: 67,
                top: 185,
                width: 260,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Let’s grow\n",
                        style: GoogleFonts.quicksand(
                          color: const Color(0xFF1E4D36),
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: "something beautiful",
                        style: GoogleFonts.quicksand(
                          color: const Color(0xFF6BAA42),
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // =========================
              // DESCRIPTION
              // =========================
              Positioned(
                left: 41,
                top: 278,
                width: 311,
                child: Text(
                  'Your all-in-one garden companion\n'
                  'to help your plants grow and you thrive.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.quicksand(
                    color: const Color(0xFF4D604F),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              // =========================
              // TRACK GROWTH
              // =========================
              Positioned(
                left: 61,
                top: 356,
                child: Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE8F0D8),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.eco_outlined,
                        size: 32,
                        color: Color(0xFF6BAA42),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Track Growth',
                      style: GoogleFonts.quicksand(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF31543C),
                      ),
                    ),
                  ],
                ),
              ),

              // =========================
              // SMART REMINDERS
              // =========================
              Positioned(
                left: 279,
                top: 343,
                child: Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE8F0D8),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.notifications_none,
                        size: 32,
                        color: Color(0xFF6BAA42),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Smart Reminders',
                      style: GoogleFonts.quicksand(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF31543C),
                      ),
                    ),
                  ],
                ),
              ),

              // =========================
              // AI DISEASE SCAN
              // =========================
              Positioned(
                left: 45,
                top: 565,
                child: Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE8F0D8),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.document_scanner_outlined,
                        size: 32,
                        color: Color(0xFF6BAA42),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'AI Disease Scan',
                      style: GoogleFonts.quicksand(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF31543C),
                      ),
                    ),
                  ],
                ),
              ),

              // =========================
              // COMMUNITY SUPPORT
              // =========================
              Positioned(
                left: 297,
                top: 562,
                child: Column(
                  children: [
                    Container(
                      width: 65,
                      height: 65,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE8F0D8),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.people_outline,
                        size: 32,
                        color: Color(0xFF6BAA42),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Community Support',
                      style: GoogleFonts.quicksand(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF31543C),
                      ),
                    ),
                  ],
                ),
              ),

              // =========================
              // GET STARTED BUTTON
              // =========================
              Positioned(
                left: 64,
                top: 730,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: Container(
                    width: 266,
                    height: 45,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFDDE796),
                          Color(0xFFCDDD7E),
                          Color(0xFFBED367),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Get Started',
                        style: GoogleFonts.quicksand(
                          color: const Color(0xFF31543C),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // =========================
              // SIGN IN
              // =========================
              Positioned(
                left: 101,
                top: 793,
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: GoogleFonts.quicksand(
                      color: const Color(0xFF31543C),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sign In',
                        style: GoogleFonts.quicksand(
                          color: const Color(0xFFBED367),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignInPage(),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
