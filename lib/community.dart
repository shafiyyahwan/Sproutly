
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';
import 'plants.dart';
import 'profile.dart';
import 'scan.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

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
                        // Search bar
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            top: 20,
                          ),
                          child: Container(
                            width: 343,
                            height: 40,
                            decoration: BoxDecoration(
                              color: cream,
                              border: Border.all(
                                color: border,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(width: 19),
                                const Icon(
                                  Icons.search,
                                  size: 16,
                                  color: Color(0xFF5A5A5A),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Search discussions, topics or keywords...',
                                  style: GoogleFonts.quicksand(
                                    color: const Color(0xFF5A5A5A),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Browse Topics
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            top: 20,
                          ),
                          child: Text(
                            'Browse Topics',
                            style: GoogleFonts.quicksand(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // Topic cards
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  _topicCard(
                                    width: 166,
                                    height: 98,
                                    backgroundColor: const Color(0xFFF7FAF2),
                                    borderColor: const Color(0xFFC8D9B0),
                                    iconBackground: headerGreen,
                                    icon: Icons.help_outline,
                                    iconColor: darkGreen,
                                    title: 'Gardening Q&A',
                                    posts: '248 posts',
                                  ),
                                  const SizedBox(height: 11),
                                  _topicCard(
                                    width: 166,
                                    height: 98,
                                    backgroundColor: const Color(0xFFF1F5F0),
                                    borderColor: const Color(0xFFD7E2D7),
                                    iconBackground: const Color(0xFFDCE8F0),
                                    icon: Icons.settings_outlined,
                                    iconColor: const Color(0xFF527080),
                                    title: 'Garden Tech',
                                    posts: '136 posts',
                                  ),
                                ],
                              ),
                              const SizedBox(width: 11),
                              Column(
                                children: [
                                  _topicCard(
                                    width: 166,
                                    height: 98,
                                    backgroundColor: const Color(0xFFFAF3E8),
                                    borderColor: const Color(0xFFE8D8C0),
                                    iconBackground: const Color(0xFFF2E4CE),
                                    icon: Icons.bug_report_outlined,
                                    iconColor: const Color(0xFF9A7650),
                                    title: 'Pest & Disease',
                                    posts: '380 posts',
                                  ),
                                  const SizedBox(height: 11),
                                  _topicCard(
                                    width: 166,
                                    height: 98,
                                    backgroundColor: const Color(0xFFF6EFEB),
                                    borderColor: const Color(0xFFE5D8D3),
                                    iconBackground: const Color(0xFFF1E4E4),
                                    icon: Icons.eco_outlined,
                                    iconColor: const Color(0xFFA87E83),
                                    title: 'Harvest Tips',
                                    posts: '248 posts',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Recent Posts
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            top: 18,
                          ),
                          child: Text(
                            'Recent Posts',
                            style: GoogleFonts.quicksand(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // Post 1
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: _postCard(
                            initial: 'S',
                            name: 'Shafiyyah',
                            time: '2 hours ago',
                            title: 'My plant finally grew a new leaf!!',
                            description:
                                'After 2 months of nothing, I woke up and saw a new leaf. Small win but I’m so happy!',
                            avatarBackground: const Color(0xFFE8F0D8),
                            avatarColor: darkGreen,
                          ),
                        ),

                        const SizedBox(height: 15),

                        // Post 2
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: _postCard(
                            initial: 'N',
                            name: 'Nadia',
                            time: '4 hours ago',
                            title:
                                'Auto watering system for apartment balcony?',
                            description:
                                'I travel a lot and need something cheap and reliable. Anyone using drip systems for pots?',
                            avatarBackground: const Color(0xFFF1E4E4),
                            avatarColor: const Color(0xFFA87E83),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // Post 3
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: _postCard(
                            initial: 'A',
                            name: 'Addini',
                            time: '5 hours ago',
                            title:
                                'Plants that survived even when I forgot them',
                            description:
                                'Not proud but I\'ve neglected these and they STILL survive. What are your "unkillable" plants?',
                            avatarBackground: const Color(0xFFF8E1D7),
                            avatarColor: const Color(0xFFC26A45),
                          ),
                        ),

                        // Extra space so last card can scroll above bottom nav
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
              ),

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
                  style: const TextStyle(
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

              // Page title
              Positioned(
                left: 127,
                top: 66,
                child: SizedBox(
                  width: 139,
                  child: Text(
                    'Community Forum',
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

              // Home
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

              // Plants
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
                    selected: false,
                  ),
                ),
              ),

              // Community
              Positioned(
                left: 238,
                top: 789,
                child: _navItem(
                  icon: Icons.people_outline,
                  label: 'Community',
                  selected: true,
                ),
              ),

              // Profile
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
              // FLOATING ADD BUTTON
              // ============================================================
              Positioned(
                left: 165,
                top: 752,
                child: GestureDetector(
                  onTap: () {
                    // Add post later
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
  // TOPIC CARD
  // ============================================================
  static Widget _topicCard({
    required double width,
    required double height,
    required Color backgroundColor,
    required Color borderColor,
    required Color iconBackground,
    required IconData icon,
    required Color iconColor,
    required String title,
    required String posts,
  }) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.only(
        left: 18,
        top: 15,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: iconBackground,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(
              icon,
              size: 19,
              color: iconColor,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: GoogleFonts.quicksand(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 3),
          Text(
            posts,
            style: GoogleFonts.quicksand(
              color: Colors.black,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // POST CARD
  // ============================================================
  static Widget _postCard({
    required String initial,
    required String name,
    required String time,
    required String title,
    required String description,
    required Color avatarBackground,
    required Color avatarColor,
  }) {
    return Container(
      width: 343,
      height: 165,
      padding: const EdgeInsets.only(
        left: 18,
        right: 18,
        top: 15,
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
          // User information
          Row(
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  color: avatarBackground,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    initial,
                    style: GoogleFonts.quicksand(
                      color: avatarColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 1),
                  Text(
                    time,
                    style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 10),

          Text(
            title,
            style: GoogleFonts.quicksand(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            description,
            style: GoogleFonts.quicksand(
              color: Colors.black,
              fontSize: 10,
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
          ),

          const Spacer(),

          Container(
            width: 304,
            height: 1,
            color: const Color(0xFFD8D4C0),
          ),

          const SizedBox(height: 7),

          Row(
            children: [
              const Icon(
                Icons.favorite_border,
                size: 13,
                color: Color(0xFF5A5A5A),
              ),
              const SizedBox(width: 5),
              Text(
                '24',
                style: GoogleFonts.quicksand(
                  color: const Color(0xFF5A5A5A),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 15),
              const Icon(
                Icons.chat_bubble_outline,
                size: 13,
                color: Color(0xFF5A5A5A),
              ),
              const SizedBox(width: 5),
              Text(
                '8',
                style: GoogleFonts.quicksand(
                  color: const Color(0xFF5A5A5A),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 15),
              const Icon(
                Icons.share_outlined,
                size: 13,
                color: Color(0xFF5A5A5A),
              ),
              const SizedBox(width: 5),
              Text(
                'Share',
                style: GoogleFonts.quicksand(
                  color: const Color(0xFF5A5A5A),
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ============================================================
  // BOTTOM NAV ITEM
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
                ? const Color(0xFF4A6741)
                : const Color(0xFF6B7280),
          ),
          const SizedBox(height: 7),
          Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.quicksand(
              color: selected
                  ? const Color(0xFF4A6741)
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
