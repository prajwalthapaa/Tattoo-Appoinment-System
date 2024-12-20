import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/booking.dart';
import 'package:flutter_application_1/view/explore.dart';
import 'package:flutter_application_1/view/home.dart';
import 'package:flutter_application_1/view/profile.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 235, 245),
      appBar: AppBar(
        title: const Text(
          "TATTOO CRAFT",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20, // Adjust font size as needed
            letterSpacing:
                2.0, // Adds spacing between letters for better aesthetics
          ),
        ),
        centerTitle: true, // Ensures the title is centered
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome !",
              style: TextStyle(
                fontFamily: 'Montserrat-Italic',
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Explore and manage your bookings seamlessly.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildDashboardCard(
                    context,
                    title: "New Booking",
                    icon: Icons.calendar_today,
                    color: Colors.purple,
                    onTap: () {
                      // Add functionality
                    },
                  ),
                  _buildDashboardCard(
                    context,
                    title: "Appointments",
                    icon: Icons.list_alt,
                    color: Colors.orange,
                    onTap: () {
                      // Add functionality
                    },
                  ),
                  _buildDashboardCard(
                    context,
                    title: "Artists",
                    icon: Icons.person,
                    color: Colors.teal,
                    onTap: () {
                      // Add functionality
                    },
                  ),
                  _buildDashboardCard(
                    context,
                    title: "Settings",
                    icon: Icons.settings,
                    color: Colors.blue,
                    onTap: () {
                      // Add functionality
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildResponsiveNavBar(context),
    );
  }

  Widget _buildDashboardCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResponsiveNavBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildBottomNavItem(Icons.home, "Home", context, isActive: true),
          _buildBottomNavItem(Icons.explore, "Explore", context),
          _buildBottomNavItem(Icons.calendar_today, "Bookings", context),
          _buildBottomNavItem(Icons.account_circle, "Profile", context),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(IconData icon, String label, BuildContext context,
      {bool isActive = false}) {
    return GestureDetector(
      onTap: () {
        if (label == "Home") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        } else if (label == "Explore") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ExploreScreen()),
          );
        } else if (label == "Bookings") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BookingScreen()),
          );
        } else if (label == "Profile") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfileScreen()),
          );
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: isActive ? Colors.blue : Colors.grey),
          const SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isActive ? Colors.blue : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
