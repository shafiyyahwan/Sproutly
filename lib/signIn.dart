
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6EE),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 393,
            height: 852,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: Color(0xFFF8F6EE),
            ),
            child: Stack(
              children: [

                // ============================================
                // MAIN LIGHT GREEN CARD
                // ============================================

                Positioned(
                  left: 40,
                  top: 174,
                  child: Container(
                    width: 313,
                    height: 481,
                    decoration: BoxDecoration(
                      color: const Color(0xF2E8F0D8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                // ============================================
                // LOGO
                // sprou + SVG + ly
                // ============================================

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

                // ============================================
                // SMALL ICON ABOVE TITLE
                // ============================================

                const Positioned(
                  left: 177,
                  top: 204,
                  child: Icon(
                    Icons.eco_outlined,
                    size: 30,
                    color: Color(0xFF6BAA42),
                  ),
                ),

                // ============================================
                // WELCOME BACK
                // ============================================

                Positioned(
                  left: 105,
                  top: 238,
                  width: 184,
                  child: Text(
                    'Welcome back!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      color: const Color(0xFF1E4D36),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                // ============================================
                // SUBTITLE
                // ============================================

                Positioned(
                  left: 65,
                  top: 268,
                  width: 263,
                  child: Text(
                    'Sign in to continue your garden journey',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      color: const Color(0xFF4E4E4E),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                // ============================================
                // EMAIL LABEL
                // ============================================

                Positioned(
                  left: 65,
                  top: 318,
                  child: Text(
                    'Email Address',
                    style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                // ============================================
                // EMAIL FIELD
                // ============================================

                Positioned(
                  left: 65,
                  top: 338,
                  child: SizedBox(
                    width: 263,
                    height: 40,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: GoogleFonts.quicksand(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1E4D36),
                      ),
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: GoogleFonts.quicksand(
                          color: const Color(0xFF5A5A5A),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          size: 15,
                          color: Color(0xFF5A5A5A),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF7FAF2),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 12,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFFC8D9B0),
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFFC8D9B0),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFF6BAA42),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // ============================================
                // PASSWORD LABEL
                // ============================================

                Positioned(
                  left: 65,
                  top: 393,
                  child: Text(
                    'Password',
                    style: GoogleFonts.quicksand(
                      color: const Color(0xFF00160B),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                // ============================================
                // PASSWORD FIELD
                // ============================================

                Positioned(
                  left: 65,
                  top: 414,
                  child: SizedBox(
                    width: 263,
                    height: 40,
                    child: TextField(
                      obscureText: true,
                      style: GoogleFonts.quicksand(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1E4D36),
                      ),
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: GoogleFonts.quicksand(
                          color: const Color(0xFF5A5A5A),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          size: 15,
                          color: Color(0xFF5A5A5A),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF7FAF2),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 12,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFFC8D9B0),
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFFC8D9B0),
                            width: 1,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color(0xFF6BAA42),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // ============================================
                // FORGOT PASSWORD
                // ============================================

                Positioned(
                  left: 241,
                  top: 465,
                  child: GestureDetector(
                    onTap: () {
                      // Add forgot password navigation later.
                    },
                    child: Text(
                      'Forgot Password?',
                      textAlign: TextAlign.right,
                      style: GoogleFonts.quicksand(
                        color: const Color(0xFF1F4D2E),
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),

                // ============================================
                // SIGN IN BUTTON
                // ============================================

                Positioned(
                  left: 65,
                  top: 500,
                  child: GestureDetector(
                    onTap: () {
                      // Add actual authentication later.
                    },
                    child: Container(
                      width: 263,
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFFDDE796),
                            Color(0xFFBED367),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.login,
                            size: 15,
                            color: Color(0xFF317039),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Sign In',
                            style: GoogleFonts.quicksand(
                              color: const Color(0xFF317039),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // ============================================
                // OR CONTINUE WITH
                // ============================================

                Positioned(
                  left: 141,
                  top: 558,
                  width: 111,
                  child: Text(
                    'or continue with',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      color: const Color(0xFF5A5A5A),
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                // Left divider
                Positioned(
                  left: 65,
                  top: 564,
                  child: Container(
                    width: 65,
                    height: 1,
                    color: const Color(0xFFC8D9B0),
                  ),
                ),

                // Right divider
                Positioned(
                  left: 263,
                  top: 564,
                  child: Container(
                    width: 65,
                    height: 1,
                    color: const Color(0xFFC8D9B0),
                  ),
                ),

                // ============================================
                // GOOGLE BUTTON
                // ============================================

                Positioned(
                  left: 65,
                  top: 585,
                  child: Container(
                    width: 126,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.g_mobiledata,
                          size: 22,
                          color: Color(0xFF4285F4),
                        ),
                        Text(
                          'Google',
                          style: GoogleFonts.quicksand(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // ============================================
                // FACEBOOK BUTTON
                // ============================================

                Positioned(
                  left: 202,
                  top: 585,
                  child: Container(
                    width: 126,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.facebook,
                          size: 17,
                          color: Color(0xFF1877F2),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          'Facebook',
                          style: GoogleFonts.quicksand(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // ============================================
                // CREATE ACCOUNT
                // ============================================

                Positioned(
                  left: 65,
                  top: 680,
                  width: 263,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don’t have an account? ',
                          style: GoogleFonts.quicksand(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'Create Account',
                          style: GoogleFonts.quicksand(
                            color: const Color(0xFF317039),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
