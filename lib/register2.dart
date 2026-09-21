import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'registerSuccess.dart';

class Register2Page extends StatefulWidget {
  const Register2Page({super.key});

  @override
  State<Register2Page> createState() => _Register2PageState();
}

class _Register2PageState extends State<Register2Page> {
  bool agreeToTerms = false;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  void createAccount() {
    if (nameController.text.trim().isEmpty ||
        emailController.text.trim().isEmpty ||
        passwordController.text.isEmpty ||
        confirmPasswordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Please fill in all fields.',
            style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
          ),
          backgroundColor: const Color(0xFF317039),
        ),
      );
      return;
    }

    if (passwordController.text != confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Passwords do not match.',
            style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
          ),
          backgroundColor: const Color(0xFF317039),
        ),
      );
      return;
    }

    if (!agreeToTerms) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Please agree to the Terms of Service and Privacy Policy.',
            style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
          ),
          backgroundColor: const Color(0xFF317039),
        ),
      );
      return;
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const RegisterSuccessPage()),
    );
  }

  InputDecoration fieldDecoration({
    required String hintText,
    required IconData icon,
  }) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: GoogleFonts.quicksand(
        color: const Color(0xFF5A5A5A),
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      prefixIcon: Icon(icon, size: 15, color: const Color(0xFF5A5A5A)),
      filled: true,
      fillColor: const Color(0xFFF7FAF2),
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Color(0xFFC8D9B0), width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Color(0xFFC8D9B0), width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Color(0xFF6BAA42), width: 1),
      ),
    );
  }

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
            decoration: const BoxDecoration(color: Color(0xFFF8F6EE)),
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
                    height: 518,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE8F0D8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                // ============================================
                // LOGO
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
                // TITLE
                // ============================================
                Positioned(
                  left: 105,
                  top: 204,
                  width: 184,
                  child: Text(
                    'Create Account',
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
                  top: 234,
                  width: 263,
                  child: Text(
                    "Let's set up your profile credentials",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      color: const Color(0xFF4E4E4E),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                // ============================================
                // NAME LABEL
                // ============================================
                Positioned(
                  left: 65,
                  top: 284,
                  child: Text(
                    'Name',
                    style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                // NAME FIELD
                Positioned(
                  left: 65,
                  top: 304,
                  child: SizedBox(
                    width: 263,
                    height: 40,
                    child: TextField(
                      controller: nameController,
                      style: GoogleFonts.quicksand(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1E4D36),
                      ),
                      decoration: fieldDecoration(
                        hintText: 'Enter your name',
                        icon: Icons.person_outline,
                      ),
                    ),
                  ),
                ),

                // ============================================
                // EMAIL LABEL
                // ============================================
                Positioned(
                  left: 65,
                  top: 359,
                  child: Text(
                    'Email Address',
                    style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                // EMAIL FIELD
                Positioned(
                  left: 65,
                  top: 379,
                  child: SizedBox(
                    width: 263,
                    height: 40,
                    child: TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      style: GoogleFonts.quicksand(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1E4D36),
                      ),
                      decoration: fieldDecoration(
                        hintText: 'Enter your email',
                        icon: Icons.email_outlined,
                      ),
                    ),
                  ),
                ),

                // ============================================
                // PASSWORD LABEL
                // ============================================
                Positioned(
                  left: 65,
                  top: 434,
                  child: Text(
                    'Password',
                    style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                // PASSWORD FIELD
                Positioned(
                  left: 65,
                  top: 455,
                  child: SizedBox(
                    width: 263,
                    height: 40,
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      style: GoogleFonts.quicksand(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1E4D36),
                      ),
                      decoration: fieldDecoration(
                        hintText: 'Enter your password',
                        icon: Icons.lock_outline,
                      ),
                    ),
                  ),
                ),

                // ============================================
                // CONFIRM PASSWORD LABEL
                // ============================================
                Positioned(
                  left: 65,
                  top: 510,
                  child: Text(
                    'Confirm Password',
                    style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                // CONFIRM PASSWORD FIELD
                Positioned(
                  left: 65,
                  top: 531,
                  child: SizedBox(
                    width: 263,
                    height: 40,
                    child: TextField(
                      controller: confirmPasswordController,
                      obscureText: true,
                      style: GoogleFonts.quicksand(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF1E4D36),
                      ),
                      decoration: fieldDecoration(
                        hintText: 'Re-enter your password',
                        icon: Icons.lock_outline,
                      ),
                    ),
                  ),
                ),

                // ============================================
                // TERMS CHECKBOX
                // ============================================
                Positioned(
                  left: 65,
                  top: 586,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        agreeToTerms = !agreeToTerms;
                      });
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: agreeToTerms
                                ? const Color(0xFF6BAA42)
                                : const Color(0xFFF7FAF2),
                            borderRadius: BorderRadius.circular(3),
                            border: Border.all(
                              color: const Color(0xFFC8D9B0),
                              width: 1,
                            ),
                          ),
                          child: agreeToTerms
                              ? const Icon(
                                  Icons.check,
                                  size: 12,
                                  color: Colors.white,
                                )
                              : null,
                        ),
                        const SizedBox(width: 11),
                        SizedBox(
                          width: 237,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'I agree to the ',
                                  style: GoogleFonts.quicksand(
                                    color: Colors.black,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Terms of Service',
                                  style: GoogleFonts.quicksand(
                                    color: const Color(0xFF1E4D36),
                                    fontSize: 9,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                TextSpan(
                                  text: ' and ',
                                  style: GoogleFonts.quicksand(
                                    color: Colors.black,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: GoogleFonts.quicksand(
                                    color: const Color(0xFF1E4D36),
                                    fontSize: 9,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // ============================================
                // CREATE ACCOUNT BUTTON
                // ============================================
                Positioned(
                  left: 65,
                  top: 622,
                  child: GestureDetector(
                    onTap: createAccount,
                    child: Container(
                      width: 263,
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFDDE796), Color(0xFFBED367)],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Create Account',
                          style: GoogleFonts.quicksand(
                            color: const Color(0xFF317039),
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // ============================================
                // STATUS BAR
                // ============================================
                Positioned(
                  left: 25,
                  top: 22,
                  child: Text(
                    '14:10',
                    style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                Positioned(
                  right: 25,
                  top: 20,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.signal_cellular_alt,
                        size: 16,
                        color: Colors.black,
                      ),
                      SizedBox(width: 7),
                      Icon(Icons.wifi, size: 16, color: Colors.black),
                      SizedBox(width: 7),
                      Icon(Icons.battery_full, size: 21, color: Colors.black),
                    ],
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
