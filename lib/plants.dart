import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';
import 'community.dart';
import 'profile.dart';
import 'scan.dart';

class PlantsPage extends StatelessWidget {
  const PlantsPage({super.key});

  static const Color background = Color(0xFFF8F6EE);
  static const Color lightGreen = Color(0xFFE8F0D8);
  static const Color darkGreen = Color(0xFF1E4D36);
  static const Color accentGreen = Color(0xFF44712C);
  static const Color greyText = Color(0xFF6B7280);
  static const Color creamCard = Color(0xFFFFFDF7);
  static const Color border = Color(0xFFD8D4C0);
  static const Color imageBackground = Color(0xFFEBE6DD);
  static const Color terracotta = Color(0xFFC26D4D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Center(
          child: Container(
            width: 393,
            height: 852,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              color: background,
            ),
            child: Stack(
              children: [

                // =========================================================
                // HEADER
                // =========================================================
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 393,
                    height: 106,
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

                // Plant Library title
                Positioned(
                  left: 149,
                  top: 66,
                  child: Text(
                    'Plant Library',
                    style: GoogleFonts.quicksand(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),

                // =========================================================
                // SCROLLABLE CONTENT
                // =========================================================
                Positioned(
                  left: 0,
                  top: 106,
                  child: SizedBox(
                    width: 393,
                    height: 668,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [

                          // =================================================
                          // SEARCH BAR
                          // =================================================
                          Container(
                            margin: const EdgeInsets.only(
                              left: 25,
                              right: 25,
                              top: 20,
                            ),
                            width: 343,
                            height: 40,
                            decoration: BoxDecoration(
                              color: creamCard,
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
                                  size: 17,
                                  color: Color(0xFF5A5A5A),
                                ),

                                const SizedBox(width: 9),

                                Text(
                                  'Search plants, IDs or types...',
                                  style: GoogleFonts.quicksand(
                                    color: const Color(0xFF5A5A5A),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 10),

                          // =================================================
                          // CATEGORY FILTERS
                          // =================================================
                          SizedBox(
                            height: 30,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.only(left: 25),
                              children: [

                                _filterChip(
                                  text: 'All (8)',
                                  selected: true,
                                ),

                                const SizedBox(width: 5),

                                _filterChip(
                                  text: 'Healthy (4)',
                                ),

                                const SizedBox(width: 5),

                                _filterChip(
                                  text: 'At risk (1)',
                                ),

                                const SizedBox(width: 5),

                                _filterChip(
                                  text: 'Herb',
                                ),

                                const SizedBox(width: 5),

                                _filterChip(
                                  text: 'Vegetables',
                                ),

                                const SizedBox(width: 5),

                                _filterChip(
                                  text: 'Fruits',
                                ),

                                const SizedBox(width: 25),
                              ],
                            ),
                          ),

                          const SizedBox(height: 20),

                          // =================================================
                          // PLANT GRID
                          // =================================================
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 25,
                            ),
                            child: GridView.count(
                              crossAxisCount: 2,
                              crossAxisSpacing: 11,
                              mainAxisSpacing: 10,
                              childAspectRatio: 166 / 160,
                              shrinkWrap: true,
                              physics:
                                  const NeverScrollableScrollPhysics(),
                              children: [

                                // 1. Chilli
                                _plantGridCard(
                                  icon:
                                      Icons.local_fire_department_outlined,
                                  name: 'Chilli',
                                  id: 'CHI001 · Backyard',
                                  type: 'Vegetables',
                                  status: 'At risk',
                                  risk: true,
                                ),

                                // 2. Aloe Vera
                                _plantGridCard(
                                  icon: Icons.eco_outlined,
                                  name: 'Aloe Vera',
                                  id: 'ALOE001 · Backyard',
                                  type: 'Succulent',
                                  status: 'Healthy',
                                  risk: false,
                                ),

                                // 3. Pandan
                                _plantGridCard(
                                  icon: Icons.grass_outlined,
                                  name: 'Pandan',
                                  id: 'PAN001 · Backyard',
                                  type: 'Herb',
                                  status: 'Healthy',
                                  risk: false,
                                ),

                                // 4. Bougainvillea
                                _plantGridCard(
                                  icon: Icons.local_florist_outlined,
                                  name: 'Bougainvillea',
                                  id: 'BOU001 · Backyard',
                                  type: 'Flower',
                                  status: 'Healthy',
                                  risk: false,
                                ),

                                // 5. Curry Leaves
                                _plantGridCard(
                                  icon: Icons.spa_outlined,
                                  name: 'Curry Leaves',
                                  id: 'CUR001 · Backyard',
                                  type: 'Herb',
                                  status: 'Healthy',
                                  risk: false,
                                ),

                                // 6. Mint
                                _plantGridCard(
                                  icon: Icons.eco_outlined,
                                  name: 'Mint',
                                  id: 'MIN001 · Backyard',
                                  type: 'Herb',
                                  status: 'Healthy',
                                  risk: false,
                                ),

                                // 7. Tomato
                                _plantGridCard(
                                  icon: Icons.circle_outlined,
                                  name: 'Tomato',
                                  id: 'TOM001 · Backyard',
                                  type: 'Vegetables',
                                  status: 'Healthy',
                                  risk: false,
                                ),

                                // 8. Strawberry
                                _plantGridCard(
                                  icon: Icons.favorite_border,
                                  name: 'Strawberry',
                                  id: 'STR001 · Backyard',
                                  type: 'Fruits',
                                  status: 'Healthy',
                                  risk: false,
                                ),

                                // =================================================
                                // ADD PLANT
                                // =================================================
                                _addPlantCard(
                                  onTap: () {
                                    // Add plant page later
                                  },
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 30),
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
                    height: 78,
                    color: lightGreen,
                  ),
                ),

                // HOME
                Positioned(
                  left: 31,
                  top: 788,
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

                // PLANTS
                Positioned(
                  left: 99,
                  top: 788,
                  child: _navItem(
                    icon: Icons.local_florist_outlined,
                    label: 'Plants',
                    selected: true,
                  ),
                ),

                // PLUS BUTTON
                Positioned(
                  left: 165,
                  top: 752,
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
                  top: 788,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const CommunityPage(),
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
                  top: 788,
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

  // =============================================================
  // FILTER CHIP
  // =============================================================
  Widget _filterChip({
    required String text,
    bool selected = false,
  }) {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: selected ? terracotta : imageBackground,
        borderRadius: BorderRadius.circular(30),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: GoogleFonts.quicksand(
          color: selected
              ? Colors.white
              : const Color(0xFF6E6A61),
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  // =============================================================
  // PLANT GRID CARD
  // =============================================================
  Widget _plantGridCard({
    required IconData icon,
    required String name,
    required String id,
    required String type,
    required String status,
    required bool risk,
  }) {
    return Container(
      width: 166,
      height: 160,
      decoration: BoxDecoration(
        color: creamCard,
        border: Border.all(
          color: border,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [

          // Temporary image area
          Positioned(
            left: 14,
            top: 15,
            child: Container(
              width: 137,
              height: 60,
              decoration: BoxDecoration(
                color: lightGreen,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                icon,
                color: accentGreen,
                size: 32,
              ),
            ),
          ),

          // ID
          Positioned(
            left: 14,
            top: 83,
            child: SizedBox(
              width: 137,
              child: Text(
                id,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.quicksand(
                  color: Colors.black,
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          // Name
          Positioned(
            left: 14,
            top: 98,
            child: SizedBox(
              width: 137,
              child: Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.quicksand(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),

          // Type
          Positioned(
            left: 14,
            top: 116,
            child: SizedBox(
              width: 137,
              child: Text(
                type,
                style: GoogleFonts.quicksand(
                  color: Colors.black,
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          // Status
          Positioned(
            right: 14,
            bottom: 14,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 9,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                color: risk
                    ? const Color(0xFFFDE8E8)
                    : lightGreen,
                border: Border.all(
                  color: risk
                      ? const Color(0xFFEDC8BA)
                      : const Color(0xFFCCDDB3),
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(50),
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

  // =============================================================
  // ADD PLANT CARD
  // =============================================================
  Widget _addPlantCard({
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 166,
        height: 160,
        decoration: BoxDecoration(
          color: imageBackground,
          border: Border.all(
            color: const Color(0xFF6E6A61),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              '+',
              style: TextStyle(
                color: Color(0xFF6E6A61),
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 3),

            Text(
              'Add plant',
              style: GoogleFonts.quicksand(
                color: const Color(0xFF6E6A61),
                fontSize: 10,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // =============================================================
  // NAV ITEM
  // =============================================================
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

