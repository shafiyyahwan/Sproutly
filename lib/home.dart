
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'plants.dart';
import 'community.dart';
import 'profile.dart';
import 'scan.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const Color background = Color(0xFFF8F6EE);
  static const Color lightGreen = Color(0xFFE8F0D8);
  static const Color darkGreen = Color(0xFF1E4D36);
  static const Color cardGreen = Color(0xFF4A6741);
  static const Color accentGreen = Color(0xFF44712C);
  static const Color greyText = Color(0xFF6B7280);
  static const Color border = Color(0xFFEAE4D8);
  static const Color creamCard = Color(0xFFFFFCF2);

  bool reminder1 = true;
  bool reminder2 = true;
  bool reminder3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Center(
          child: Container(
            width: 393,
            height: 835,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: background,
            ),
            child: Stack(
              children: [

                // =========================================================
                // FIXED HEADER
                // =========================================================
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 393,

                    // CHANGE 1:
                    // Was 106, now slightly bigger
                    height: 120,

                    color: lightGreen,
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
                Positioned(
                  right: 25,
                  top: 19,
                  child: Row(
                    children: const [
                      Icon(
                        Icons.signal_cellular_alt,
                        size: 16,
                        color: Colors.black,
                      ),
                      SizedBox(width: 7),
                      Icon(
                        Icons.wifi,
                        size: 16,
                        color: Colors.black,
                      ),
                      SizedBox(width: 7),
                      Icon(
                        Icons.battery_full,
                        size: 20,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),

                // =========================================================
                // SPROUTLY LOGO
                // =========================================================
                Positioned(
                  left: 135,
                  top: 70,
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

                // =========================================================
                // SCROLLABLE CONTENT
                // =========================================================
                Positioned(
                  left: 0,

                  // CHANGE 1:
                  // Was 106, now matches the bigger header
                  top: 120,

                  child: SizedBox(
                    width: 393,
                    height: 656,

                    child: SingleChildScrollView(
                      child: Column(
                        children: [

                          // =================================================
                          // GOOD MORNING
                          // =================================================
                          SizedBox(
                            // CHANGE 2:
                            // Was 74.
                            // Increase this to create more gap below Shafiyyah.
                            height: 90,

                            child: Stack(
                              children: [
                                Positioned(
                                  left: 25,
                                  top: 20,
                                  child: Text(
                                    'Good morning,',
                                    style: GoogleFonts.quicksand(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  left: 25,
                                  top: 39,
                                  child: Text(
                                    'Shafiyyah',
                                    style: GoogleFonts.quicksand(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // =================================================
                          // GARDEN STATUS
                          // =================================================
                          Container(
                            width: 343,
                            height: 160,
                            decoration: BoxDecoration(
                              color: cardGreen,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 19,
                                top: 18,
                                right: 19,
                              ),
                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [

                                  Text(
                                    'Garden looks pretty good!',
                                    style: GoogleFonts.quicksand(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),

                                  const SizedBox(height: 5),

                                  Text(
                                    '3 plants need attention today',
                                    style: GoogleFonts.quicksand(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                  const SizedBox(height: 18),

                                  Row(
                                    children: [
                                      _gardenStat(
                                        number: '5',
                                        label: 'Plants',
                                      ),

                                      const SizedBox(width: 10),

                                      _gardenStat(
                                        number: '2',
                                        label: 'Need water',
                                      ),

                                      const SizedBox(width: 10),

                                      _gardenStat(
                                        number: '1',
                                        label: 'At risk',
                                      ),
                                    ],
                                  ),

                                  // CHANGE 3:
                                  // Was 10.
                                  // Smaller = boxes closer to bottom.
                                  const SizedBox(height: 5),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(height: 30),

                          // =================================================
                          // DAILY REMINDER
                          // =================================================
                          _sectionTitle('Daily Reminder'),

                          const SizedBox(height: 13),

                          Container(
                            width: 343,
                            height: 121,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFDF7),
                              border: Border.all(
                                color: const Color(0xFFD8D4C0),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [

                                _reminderRow(
                                  text:
                                      'PAN001 & ALO001 need watering today.',
                                  checked: reminder1,
                                  onChanged: (value) {
                                    setState(() {
                                      reminder1 = value;
                                    });
                                  },
                                ),

                                _divider(),

                                _reminderRow(
                                  text:
                                      'CHI001 is under treatment (Day 1).',
                                  checked: reminder2,
                                  onChanged: (value) {
                                    setState(() {
                                      reminder2 = value;
                                    });
                                  },
                                ),

                                _divider(),

                                _reminderRow(
                                  text:
                                      'BOU001 needs fertilizer this week.',
                                  checked: reminder3,
                                  onChanged: (value) {
                                    setState(() {
                                      reminder3 = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 20),

                          // =================================================
                          // TODAY'S TIPS
                          // =================================================
                          Container(
                            width: 343,
                            height: 83,
                            decoration: BoxDecoration(
                              color: lightGreen,
                              border: Border.all(
                                color: const Color(0xFFC8D9B0),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Row(
                                children: [

                                  const Icon(
                                    Icons.wb_sunny_outlined,
                                    size: 17,
                                    color: accentGreen,
                                  ),

                                  const SizedBox(width: 5),

                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [

                                        Text(
                                          "Today's tips",
                                          style: GoogleFonts.quicksand(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),

                                        const SizedBox(height: 5),

                                        Text(
                                          'Water in the early morning to reduce evaporation and prevent leaf diseases.',
                                          style: GoogleFonts.quicksand(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const SizedBox(height: 20),

                          // =================================================
                          // MY PLANTS
                          // =================================================
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25,
                            ),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [

                                Text(
                                  'My Plants',
                                  style: GoogleFonts.quicksand(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),

                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const PlantsPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'See All',
                                    style: GoogleFonts.quicksand(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 14),

                          _plantCard(
                            icon: Icons.local_fire_department_outlined,
                            name: 'Chili',
                            id: 'CHI001 · Backyard',
                            info: 'Vegetable · 24 days',
                            status: 'At risk',
                            risk: true,
                          ),

                          const SizedBox(height: 10),

                          _plantCard(
                            icon: Icons.eco_outlined,
                            name: 'Aloe Vera',
                            id: 'ALOE002 · Frontyard',
                            info: 'Vegetable · 60 days',
                            status: 'Healthy',
                            risk: false,
                          ),

                          const SizedBox(height: 10),

                          _plantCard(
                            icon: Icons.grass_outlined,
                            name: 'Pandan',
                            id: 'PAN001 · Backyard',
                            info: 'Vegetable · 45 days',
                            status: 'Healthy',
                            risk: false,
                          ),

                          const SizedBox(height: 20),

                          // =================================================
                          // LEARN & GROW
                          // =================================================
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25,
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Learn & Grow',
                                style: GoogleFonts.quicksand(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 14),

                          _learningCard(
                            icon: Icons.water_drop_outlined,
                            title: 'How to Water Correctly',
                            duration: '3 min',
                            rating: '4.9 · 1.7k votes',
                            progress: 1,
                            progressText: '100%',
                            status: 'Completed',
                            completed: true,
                          ),

                          const SizedBox(height: 10),

                          _learningCard(
                            icon: Icons.local_florist_outlined,
                            title: 'Beginner Plant Care',
                            duration: '5 min',
                            rating: '4.7 · 3.1k votes',
                            progress: 0.33,
                            progressText: '33%',
                            status: 'In Progress',
                            completed: false,
                          ),

                          const SizedBox(height: 25),
                        ],
                      ),
                    ),
                  ),
                ),

                // =========================================================
                // FIXED BOTTOM NAVIGATION
                // =========================================================
                Positioned(
                  left: 0,
                  top: 774,
                  child: Container(
                    width: 393,
                    height: 85,
                    color: lightGreen,
                  ),
                ),

                // HOME
                Positioned(
                  left: 31,
                  top: 785,
                  child: _navItem(
                    icon: Icons.home_outlined,
                    label: 'Home',
                    selected: true,
                  ),
                ),

                // PLANTS
                Positioned(
                  left: 99,
                  top: 785,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PlantsPage(),
                        ),
                      );
                    },
                    child: _navItem(
                      icon: Icons.local_florist_outlined,
                      label: 'Plants',
                      selected: false,
                    ),
                  ),
                ),

                // PLUS BUTTON
                Positioned(
                  left: 165,
                  top: 750,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScanPage(),
                        ),
                      );
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: accentGreen,
                        shape: BoxShape.circle,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x332D5A27),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),

                // COMMUNITY
                Positioned(
                  left: 238,
                  top: 785,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
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

                // PROFILE
                Positioned(
                  left: 308,
                  top: 785,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _gardenStat({
    required String number,
    required String label,
  }) {
    return Expanded(
      child: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.20),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              number,
              style: GoogleFonts.quicksand(
                color: lightGreen,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 2),

            Text(
              label,
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                color: lightGreen,
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: GoogleFonts.quicksand(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Widget _reminderRow({
    required String text,
    required bool checked,
    required ValueChanged<bool> onChanged,
  }) {
    return SizedBox(
      height: 39,
      child: Row(
        children: [

          const SizedBox(width: 19),

          GestureDetector(
            onTap: () {
              onChanged(!checked);
            },
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: checked
                    ? const Color(0xFFD8D6C0)
                    : Colors.transparent,
                border: checked
                    ? null
                    : Border.all(
                        color: const Color(0xFFD8D6C0),
                      ),
                borderRadius: BorderRadius.circular(3),
              ),
              child: checked
                  ? const Center(
                      child: Text(
                        '✔',
                        style: TextStyle(
                          color: Color(0xFF55565A),
                          fontSize: 8,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  : null,
            ),
          ),

          const SizedBox(width: 11),

          Expanded(
            child: Text(
              text,
              style: GoogleFonts.quicksand(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          const SizedBox(width: 10),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      height: 1,
      color: const Color(0xFFD8D4C0),
    );
  }

  Widget _plantCard({
    required IconData icon,
    required String name,
    required String id,
    required String info,
    required String status,
    required bool risk,
  }) {
    return Container(
      width: 343,
      height: 74,
      decoration: BoxDecoration(
        color: creamCard,
        border: Border.all(
          color: border,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [

          const SizedBox(width: 19),

          Container(
            width: 60,
            height: 45,
            decoration: BoxDecoration(
              color: lightGreen,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(
              icon,
              color: accentGreen,
              size: 27,
            ),
          ),

          const SizedBox(width: 11),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  id,
                  style: GoogleFonts.quicksand(
                    color: Colors.black,
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                Text(
                  name,
                  style: GoogleFonts.quicksand(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Text(
                  info,
                  style: GoogleFonts.quicksand(
                    color: Colors.black,
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                color: risk
                    ? const Color(0xFFFDE8E8)
                    : lightGreen,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: risk
                      ? const Color(0xFFEDC8BA)
                      : const Color(0xFFCCDDB3),
                  width: 0.5,
                ),
              ),
              child: Text(
                status,
                style: GoogleFonts.quicksand(
                  color: risk
                      ? const Color(0xFFC03838)
                      : accentGreen,
                  fontSize: 8,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _learningCard({
    required IconData icon,
    required String title,
    required String duration,
    required String rating,
    required double progress,
    required String progressText,
    required String status,
    required bool completed,
  }) {
    return Container(
      width: 343,
      height: 74,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFDF7),
        border: Border.all(
          color: const Color(0xFFD8D6C0),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [

          const SizedBox(width: 19),

          Container(
            width: 60,
            height: 45,
            decoration: BoxDecoration(
              color: lightGreen,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(
              icon,
              color: accentGreen,
              size: 25,
            ),
          ),

          const SizedBox(width: 11),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.quicksand(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 2),

                Text(
                  '$duration · ★ $rating',
                  style: GoogleFonts.quicksand(
                    color: Colors.black,
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 6),

                Row(
                  children: [

                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          value: progress,
                          minHeight: 5,
                          backgroundColor: const Color(0xFFEBE6DD),
                          valueColor:
                              AlwaysStoppedAnimation<Color>(
                            completed
                                ? accentGreen
                                : const Color(0xFFD4A017),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 7),

                    Text(
                      progressText,
                      style: GoogleFonts.quicksand(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: 10),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 9,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: completed
                  ? accentGreen
                  : const Color(0xFFD4A017),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              status,
              style: GoogleFonts.quicksand(
                color: Colors.white,
                fontSize: 8,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          const SizedBox(width: 10),
        ],
      ),
    );
  }

  Widget _navItem({
    required IconData icon,
    required String label,
    required bool selected,
  }) {
    return SizedBox(
      width: 60,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Icon(
            icon,
            size: 25,
            color: selected
                ? accentGreen
                : greyText,
          ),

          const SizedBox(height: 7),

          Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.quicksand(
              color: selected
                  ? accentGreen
                  : greyText,
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
