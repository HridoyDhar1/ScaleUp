import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  static const String name = '/profile';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1F26),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C1F26),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 50, // Adjusted for better size
                  backgroundColor: const Color(0xFF1C1F26), // Background color
                  child: ClipOval(
                    child:
                    Image.asset(
                      "assets/icons/profile.png",
                      height: 100, // Ensure it fits inside the circle
                      width: 80,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Icon(
                            Icons.broken_image,
                            color: Colors.grey,
                          ),
                        );
                      },
                    ),
                  ),
                ),

                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Rafsan Jany',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '@rafsanjany07',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.edit, color: Colors.grey),
                  onPressed: () {
                    // Edit profile action
                  },
                ),
              ],
            ),
          ),
          const Divider(color: Colors.grey, thickness: 0.5),
          Expanded(
            child: ListView(
              children: [
                _buildListTile(
                  icon: Icons.account_circle,
                  title: 'Manage your Account',
                ),
                _buildListTile(
                  icon: Icons.switch_account,
                  title: 'Switch Account',
                  trailing: Icons.arrow_forward_ios,
                ),
                const Divider(color: Colors.grey, thickness: 0.5),
                _buildListTile(
                  icon: Icons.brightness_6,
                  title: 'Device Theme',
                  trailing: Icons.arrow_forward_ios,
                ),
                _buildListTile(
                  icon: Icons.language,
                  title: 'Language: English',
                  trailing: Icons.arrow_forward_ios,
                ),
                _buildListTile(
                  icon: Icons.location_on,
                  title: 'Location: USA',
                  trailing: Icons.arrow_forward_ios,
                ),
                const Divider(color: Colors.grey, thickness: 0.5),
                _buildListTile(
                  icon: Icons.settings,
                  title: 'Settings',
                ),
                _buildListTile(
                  icon: Icons.headset_mic,
                  title: 'Help & Support',
                ),
                _buildListTile(
                  icon: Icons.feedback_outlined,
                  title: 'Feedback',
                ),
                const Divider(color: Colors.grey, thickness: 0.5),
                _buildListTile(
                  icon: Icons.logout,
                  title: 'Sign Out',
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String title,
    IconData? trailing,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      trailing: trailing != null ? Icon(trailing, color: Colors.grey) : null,
      onTap: () {
        // Handle tile tap
      },
    );
  }
}
