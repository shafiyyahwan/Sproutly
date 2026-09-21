import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'register2.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? selectedExperience;

  void selectExperience(String experience) {
    setState(() {
      selectedExperience = experience;
    });
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
                    height: 458,
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

                      // Actual Sproutly SVG.
                      // No background behind it.
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
                  left: 90,
                  top: 204,
                  width: 213,
                  child: Text(
                    'What’s your gardening experience?',
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
                  top: 253,
                  width: 263,
                  child: Text(
                    "We'll personalise your experience",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      color: const Color(0xFF4E4E4E),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                // ============================================
                // BEGINNER
                // ============================================
                Positioned(
                  left: 65,
                  top: 293,
                  child: GestureDetector(
                    onTap: () => selectExperience('Beginner'),
                    child: Container(
                      width: 263,
                      height: 75,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7FAF2),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: selectedExperience == 'Beginner'
                              ? const Color(0xFF6BAA42)
                              : const Color(0xFFC8D9B0),
                          width: selectedExperience == 'Beginner' ? 2 : 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 15),

                          // Icon circle
                          Container(
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                              color: Color(0xFFD7E5CC),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.spa_outlined,
                              size: 20,
                              color: Color(0xFF6BAA42),
                            ),
                          ),

                          const SizedBox(width: 10),

                          // Text
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Beginner',
                                  style: GoogleFonts.quicksand(
                                    color: const Color(0xFF1E4D36),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'New to gardening and growing your first plants.',
                                  style: GoogleFonts.quicksand(
                                    color: const Color(0xFF5A5A5A),
                                    fontSize: 9,
                                    fontWeight: FontWeight.w500,
                                    height: 1.44,
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

                // ============================================
                // INTERMEDIATE
                // ============================================
                Positioned(
                  left: 65,
                  top: 383,
                  child: GestureDetector(
                    onTap: () => selectExperience('Intermediate'),
                    child: Container(
                      width: 263,
                      height: 75,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7FAF2),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: selectedExperience == 'Intermediate'
                              ? const Color(0xFF6BAA42)
                              : const Color(0xFFC8D9B0),
                          width: selectedExperience == 'Intermediate' ? 2 : 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 15),

                          // Icon circle
                          Container(
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF3E3D8),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.local_florist_outlined,
                              size: 20,
                              color: Color(0xFFA97445),
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Intermediate',
                                  style: GoogleFonts.quicksand(
                                    color: const Color(0xFF1E4D36),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'Growing plants regularly as a hobby at home or in your garden.',
                                  style: GoogleFonts.quicksand(
                                    color: const Color(0xFF5A5A5A),
                                    fontSize: 9,
                                    fontWeight: FontWeight.w500,
                                    height: 1.44,
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

                // ============================================
                // ADVANCED
                // ============================================
                Positioned(
                  left: 65,
                  top: 467,
                  child: GestureDetector(
                    onTap: () => selectExperience('Advanced'),
                    child: Container(
                      width: 263,
                      height: 75,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7FAF2),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: selectedExperience == 'Advanced'
                              ? const Color(0xFF6BAA42)
                              : const Color(0xFFC8D9B0),
                          width: selectedExperience == 'Advanced' ? 2 : 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 15),

                          // Icon circle
                          Container(
                            width: 45,
                            height: 45,
                            decoration: const BoxDecoration(
                              color: Color(0xFFD7EAF8),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.agriculture_outlined,
                              size: 20,
                              color: Color(0xFF4D8DB8),
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Advanced',
                                  style: GoogleFonts.quicksand(
                                    color: const Color(0xFF1E4D36),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  'Managing larger-scale growing operations or plant businesses.',
                                  style: GoogleFonts.quicksand(
                                    color: const Color(0xFF5A5A5A),
                                    fontSize: 9,
                                    fontWeight: FontWeight.w500,
                                    height: 1.44,
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

                // ============================================
                // CONTINUE BUTTON
                // ============================================
                Positioned(
                  left: 68,
                  top: 562,
                  child: GestureDetector(
                    onTap: () {
                      if (selectedExperience == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Please select your gardening experience.',
                              style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            backgroundColor: const Color(0xFF317039),
                          ),
                        );
                        return;
                      }

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Register2Page(),
                        ),
                      );
                    },
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
                          'Continue',
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
