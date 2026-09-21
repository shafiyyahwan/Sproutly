import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import 'home.dart';
import 'plants.dart';
import 'community.dart';
import 'profile.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  final ImagePicker _picker = ImagePicker();

  File? selectedImage;

  // ============================================================
  // SELECTED PLANT
  // ============================================================

  String selectedPlant = 'CHI001: Chilli';

  // ============================================================
  // YES / NO ANSWERS
  // ============================================================

  String? fertilizedAnswer;
  String? diseaseAnswer;
  String? humidityAnswer;
  String? insectsAnswer;

  // ============================================================
  // CAMERA
  // ============================================================

  Future<void> _captureImage() async {
    final XFile? image = await _picker.pickImage(
      source: ImageSource.camera,
    );

    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  // ============================================================
  // UPLOAD IMAGE
  // ============================================================

  Future<void> _uploadImage() async {
    final XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,
    );

    if (image != null) {
      setState(() {
        selectedImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    const background = Color(0xFFF8F6EE);
    const headerGreen = Color(0xFFE8F0D8);
    const darkGreen = Color(0xFF4A6741);
    const cream = Color(0xFFFFFDF7);
    const border = Color(0xFFD8D4C0);

    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: SizedBox(
          width: 393,
          height: 852,
          child: Stack(
            children: [

              // ============================================================
              // HEADER
              // ============================================================

              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 393,
                  height: 106,
                  color: headerGreen,
                ),
              ),

              // Time
              Positioned(
                left: 25,
                top: 22,
                child: Text(
                  '14:10',
                  style: GoogleFonts.quicksand(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              // Status icons
              const Positioned(
                left: 296,
                top: 18,
                child: Icon(
                  Icons.signal_cellular_alt,
                  size: 20,
                  color: Colors.black,
                ),
              ),

              const Positioned(
                left: 323,
                top: 18,
                child: Icon(
                  Icons.wifi,
                  size: 18,
                  color: Colors.black,
                ),
              ),

              const Positioned(
                left: 346,
                top: 17,
                child: Icon(
                  Icons.battery_full,
                  size: 22,
                  color: Colors.black,
                ),
              ),

              // Title
              Positioned(
                left: 149,
                top: 66,
                child: SizedBox(
                  width: 95,
                  child: Text(
                    'AI Scan',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              // ============================================================
              // SCROLLABLE CONTENT
              // ============================================================

              Positioned(
                left: 0,
                top: 106,
                child: SizedBox(
                  width: 393,
                  height: 668,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // ==================================================
                        // SELECT PLANT
                        // ==================================================

                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            top: 20,
                          ),
                          child: Text(
                            'Select Plant',
                            style: GoogleFonts.quicksand(
                              color: const Color(0xFF6E6A61),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),

                        // ==================================================
                        // PLANT DROPDOWN
                        // ==================================================

                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            top: 12,
                          ),
                          child: Container(
                            width: 343,
                            height: 42,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18,
                            ),
                            decoration: BoxDecoration(
                              color: cream,
                              border: Border.all(
                                color: border,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: selectedPlant,
                                isExpanded: true,

                                icon: const Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 18,
                                  color: Color(0xFF6E6A61),
                                ),

                                style: GoogleFonts.quicksand(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),

                                items: const [

                                  DropdownMenuItem(
                                    value: 'CHI001: Chilli',
                                    child: Text('CHI001: Chilli'),
                                  ),

                                  DropdownMenuItem(
                                    value: 'PAN001: Pandan',
                                    child: Text('PAN001: Pandan'),
                                  ),

                                  DropdownMenuItem(
                                    value: 'ALOE001: Aloe Vera',
                                    child: Text('ALOE001: Aloe Vera'),
                                  ),

                                  DropdownMenuItem(
                                    value: 'BOU001: Bougainvillea',
                                    child: Text('BOU001: Bougainvillea'),
                                  ),

                                  DropdownMenuItem(
                                    value: 'CUR001: Curry Leaves',
                                    child: Text('CUR001: Curry Leaves'),
                                  ),

                                  DropdownMenuItem(
                                    value: 'MIN001: Mint',
                                    child: Text('MIN001: Mint'),
                                  ),

                                  DropdownMenuItem(
                                    value: 'TOM001: Tomato',
                                    child: Text('TOM001: Tomato'),
                                  ),

                                  DropdownMenuItem(
                                    value: 'STR001: Strawberry',
                                    child: Text('STR001: Strawberry'),
                                  ),
                                ],

                                onChanged: (value) {
                                  if (value != null) {
                                    setState(() {
                                      selectedPlant = value;
                                    });
                                  }
                                },
                              ),
                            ),
                          ),
                        ),

                        // ==================================================
                        // CAMERA / IMAGE BOX
                        // ==================================================

                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            top: 27,
                          ),
                          child: Container(
                            width: 343,
                            height: 228,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE3E7DD),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color(0xFFD0D5C9),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(9),
                              child: selectedImage != null

                                  // Show selected image
                                  ? Image.file(
                                      selectedImage!,
                                      width: 343,
                                      height: 228,
                                      fit: BoxFit.cover,
                                    )

                                  // Empty camera box
                                  : Stack(
                                      children: [

                                        Container(
                                          width: 343,
                                          height: 228,
                                          color: const Color(0xFFE3E7DD),
                                        ),

                                        // Camera icon + text
                                        const Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [

                                              Icon(
                                                Icons.camera_alt_outlined,
                                                size: 50,
                                                color: Color(0xFF6E7568),
                                              ),

                                              SizedBox(height: 8),

                                              Text(
                                                'Camera preview',
                                                style: TextStyle(
                                                  color: Color(0xFF6E7568),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),

                                              SizedBox(height: 3),

                                              Text(
                                                'Capture or upload a plant image',
                                                style: TextStyle(
                                                  color: Color(0xFF7C8178),
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        // Camera frame corners
                                        Positioned(
                                          left: 30,
                                          top: 30,
                                          child: _cameraCorner(
                                            top: true,
                                            left: true,
                                          ),
                                        ),

                                        Positioned(
                                          right: 30,
                                          top: 30,
                                          child: _cameraCorner(
                                            top: true,
                                            left: false,
                                          ),
                                        ),

                                        Positioned(
                                          left: 30,
                                          bottom: 30,
                                          child: _cameraCorner(
                                            top: false,
                                            left: true,
                                          ),
                                        ),

                                        Positioned(
                                          right: 30,
                                          bottom: 30,
                                          child: _cameraCorner(
                                            top: false,
                                            left: false,
                                          ),
                                        ),
                                      ],
                                    ),
                            ),
                          ),
                        ),

                        // ==================================================
                        // UPLOAD + CAPTURE
                        // ==================================================

                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            top: 18,
                          ),
                          child: Row(
                            children: [

                              // Upload
                              GestureDetector(
                                onTap: _uploadImage,
                                child: Container(
                                  width: 166.63,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: cream,
                                    border: Border.all(
                                      color: darkGreen,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [

                                      const Icon(
                                        Icons.upload_outlined,
                                        size: 13,
                                        color: darkGreen,
                                      ),

                                      const SizedBox(width: 7),

                                      Text(
                                        'Upload',
                                        style: GoogleFonts.quicksand(
                                          color: darkGreen,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              const SizedBox(width: 10),

                              // Capture
                              GestureDetector(
                                onTap: _captureImage,
                                child: Container(
                                  width: 166.63,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: darkGreen,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [

                                      const Icon(
                                        Icons.camera_alt_outlined,
                                        size: 13,
                                        color: Colors.white,
                                      ),

                                      const SizedBox(width: 7),

                                      Text(
                                        'Capture',
                                        style: GoogleFonts.quicksand(
                                          color: Colors.white,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        // ==================================================
                        // QUICK PLANT CHECK
                        // ==================================================

                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            top: 10,
                          ),
                          child: Text(
                            'Quick Plant Check',
                            style: GoogleFonts.quicksand(
                              color: const Color(0xFF6E6A61),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        // ==================================================
                        // QUESTION ROW 1
                        // ==================================================

                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                          ),
                          child: Row(
                            children: [

                              _questionCard(
                                title: 'Recently fertilized?',
                                icon: Icons.eco_outlined,
                                iconBackground:
                                    const Color(0xFFE8F0D8),
                                iconColor: darkGreen,
                                groupValue: fertilizedAnswer,
                                onChanged: (value) {
                                  setState(() {
                                    fertilizedAnswer = value;
                                  });
                                },
                              ),

                              const SizedBox(width: 10),

                              _questionCard(
                                title: 'Disease spreading?',
                                icon: Icons.warning_amber_outlined,
                                iconBackground:
                                    const Color(0xFFF1E4E4),
                                iconColor:
                                    const Color(0xFFA87E83),
                                groupValue: diseaseAnswer,
                                onChanged: (value) {
                                  setState(() {
                                    diseaseAnswer = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 10),

                        // ==================================================
                        // QUESTION ROW 2
                        // ==================================================

                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                          ),
                          child: Row(
                            children: [

                              _questionCard(
                                title: 'High humidity?',
                                icon: Icons.water_drop_outlined,
                                iconBackground:
                                    const Color(0xFFDCE8F0),
                                iconColor:
                                    const Color(0xFF527080),
                                groupValue: humidityAnswer,
                                onChanged: (value) {
                                  setState(() {
                                    humidityAnswer = value;
                                  });
                                },
                              ),

                              const SizedBox(width: 10),

                              _questionCard(
                                title: 'Insects nearby?',
                                icon: Icons.bug_report_outlined,
                                iconBackground:
                                    const Color(0xFFF2E4CE),
                                iconColor:
                                    const Color(0xFF9A7650),
                                groupValue: insectsAnswer,
                                onChanged: (value) {
                                  setState(() {
                                    insectsAnswer = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 15),

                        // ==================================================
                        // ANALYSE PLANT
                        // ==================================================

                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              // AI analysis will be connected later
                            },
                            child: Container(
                              width: 343,
                              height: 35,
                              decoration: BoxDecoration(
                                color: darkGreen,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  'Analyse Plant',
                                  style: GoogleFonts.quicksand(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              ),

              // ============================================================
              // BOTTOM NAVIGATION
              // ============================================================

              Positioned(
                left: 0,
                top: 774,
                child: Container(
                  width: 393,
                  height: 78,
                  color: headerGreen,
                ),
              ),

              // ============================================================
              // HOME
              // ============================================================

              Positioned(
                left: 31,
                top: 789,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: _navItem(
                    icon: Icons.home_outlined,
                    label: 'Home',
                    selected: false,
                  ),
                ),
              ),

              // ============================================================
              // PLANTS
              // ============================================================

              Positioned(
                left: 99,
                top: 789,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PlantsPage(),
                      ),
                    );
                  },
                  child: _navItem(
                    icon: Icons.local_florist_outlined,
                    label: 'Plants',
                    selected: true,
                  ),
                ),
              ),

              // ============================================================
              // COMMUNITY
              // ============================================================

              Positioned(
                left: 238,
                top: 789,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CommunityPage(),
                      ),
                    );
                  },
                  child: _navItem(
                    icon: Icons.people_outline,
                    label: 'Community',
                    selected: false,
                  ),
                ),
              ),

              // ============================================================
              // PROFILE
              // ============================================================

              Positioned(
                left: 308,
                top: 789,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ),
                    );
                  },
                  child: _navItem(
                    icon: Icons.person_outline,
                    label: 'Profile',
                    selected: false,
                  ),
                ),
              ),

              // ============================================================
              // FLOATING + BUTTON
              // ============================================================

              Positioned(
                left: 165,
                top: 752,
                child: GestureDetector(
                  onTap: () {
                    // Add action later
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: darkGreen,
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x332D5A27),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ============================================================
  // CAMERA CORNER
  // ============================================================

  static Widget _cameraCorner({
    required bool top,
    required bool left,
  }) {
    return SizedBox(
      width: 25,
      height: 25,
      child: CustomPaint(
        painter: _CameraCornerPainter(
          top: top,
          left: left,
        ),
      ),
    );
  }

  // ============================================================
  // QUESTION CARD
  // ============================================================

  Widget _questionCard({
    required String title,
    required IconData icon,
    required Color iconBackground,
    required Color iconColor,
    required String? groupValue,
    required ValueChanged<String?> onChanged,
  }) {
    return Container(
      width: 166.5,
      height: 75,

      // Bottom padding = 4px
      padding: const EdgeInsets.only(
        left: 14,
        top: 10,
        right: 10,
        bottom: 4,
      ),

      decoration: BoxDecoration(
        color: const Color(0xFFFFFDF7),
        border: Border.all(
          color: const Color(0xFFD8D4C0),
        ),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // ==========================================================
          // QUESTION TITLE
          // ==========================================================

          Row(
            children: [

              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                  color: iconBackground,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  icon,
                  size: 15,
                  color: iconColor,
                ),
              ),

              const SizedBox(width: 10),

              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.quicksand(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),

          const Spacer(),

          // ==========================================================
          // YES / NO BUTTONS
          // ==========================================================

          Row(
            children: [

              Expanded(
                child: _answerButton(
                  label: 'Yes',
                  value: 'Yes',
                  groupValue: groupValue,
                  onChanged: onChanged,
                ),
              ),

              const SizedBox(width: 6),

              Expanded(
                child: _answerButton(
                  label: 'No',
                  value: 'No',
                  groupValue: groupValue,
                  onChanged: onChanged,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ============================================================
  // YES / NO BUTTON
  // ============================================================

  Widget _answerButton({
    required String label,
    required String value,
    required String? groupValue,
    required ValueChanged<String?> onChanged,
  }) {
    final bool selected = groupValue == value;

    return GestureDetector(
      onTap: () {
        onChanged(value);
      },

      child: Container(
        height: 20,
        decoration: BoxDecoration(
          color: selected
              ? const Color(0xFFD8E6C9)
              : const Color(0xFFEBE6DD),

          borderRadius: BorderRadius.circular(5),

          border: Border.all(
            color: selected
                ? const Color(0xFF6BAA42)
                : Colors.transparent,
            width: 1,
          ),
        ),

        alignment: Alignment.center,

        child: Text(
          label,
          style: GoogleFonts.quicksand(
            color: selected
                ? const Color(0xFF44712C)
                : const Color(0xFF6E6A61),
            fontSize: 9,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  // ============================================================
  // NAV ITEM
  // ============================================================

  static Widget _navItem({
    required IconData icon,
    required String label,
    required bool selected,
  }) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Column(
        children: [

          Icon(
            icon,
            size: 25,
            color: selected
                ? const Color(0xFF1E4D36)
                : const Color(0xFF6B7280),
          ),

          const SizedBox(height: 7),

          Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.quicksand(
              color: selected
                  ? const Color(0xFF1E4D36)
                  : const Color(0xFF6B7280),
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

// ==================================================================
// CAMERA CORNER PAINTER
// ==================================================================

class _CameraCornerPainter extends CustomPainter {
  final bool top;
  final bool left;

  _CameraCornerPainter({
    required this.top,
    required this.left,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF6E7568)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final path = Path();

    if (top && left) {
      path.moveTo(0, 10);
      path.lineTo(0, 0);
      path.lineTo(10, 0);
    } else if (top && !left) {
      path.moveTo(15, 0);
      path.lineTo(25, 0);
      path.lineTo(25, 10);
    } else if (!top && left) {
      path.moveTo(0, 15);
      path.lineTo(0, 25);
      path.lineTo(10, 25);
    } else {
      path.moveTo(15, 25);
      path.lineTo(25, 25);
      path.lineTo(25, 15);
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}