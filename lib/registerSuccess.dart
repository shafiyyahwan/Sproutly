import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signIn.dart';

class RegisterSuccessPage extends StatelessWidget {
  const RegisterSuccessPage({super.key});

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
                // Main card
                Positioned(
                  left: 40,
                  top: 197,
                  child: Container(
                    width: 313,
                    height: 444,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE8F0D8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                // Sproutly logo
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

                // Success circle
                Positioned(
                  left: 121,
                  top: 227,
                  child: Container(
                    width: 152,
                    height: 152,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Transform.translate(
                        offset: const Offset(0, 5),
                        child: SizedBox(
                          width: 75,
                          height: 75,
                          child: SvgPicture.asset(
                            'lib/assets/images/tree.svg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // Title
                Positioned(
                  left: 98,
                  top: 426,
                  width: 197,
                  child: Text(
                    'Welcome to Sproutly',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      color: const Color(0xFF113B28),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                // Subtitle
                Positioned(
                  left: 109,
                  top: 458,
                  width: 176,
                  child: Text(
                    'Your account is ready!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      color: const Color(0xFF113B28),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                // Description
                Positioned(
                  left: 68,
                  top: 493,
                  width: 258,
                  child: Text(
                    'Your gardening adventure starts here. '
                    'Learn, grow, and care for your plants with confidence.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      color: const Color(0xFF4E4E4E),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      height: 1.50,
                    ),
                  ),
                ),

                // Sign In button
                Positioned(
                  left: 65,
                  top: 571,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPage(),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.login,
                            size: 15,
                            color: Color(0xFF317039),
                          ),
                          const SizedBox(width: 6),
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

                // Status bar
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
