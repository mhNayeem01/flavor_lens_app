import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacementNamed(context, '/home', arguments: true);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('About FlavorLens'),
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home', arguments: true);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                // App logo
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.restaurant,
                    size: 80,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 24),
                // App name
                const Text(
                  'FlavorLens',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                // Version
                const Text(
                  'Version 1.0.0',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 32),
                // App description
                const Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'FlavorLens is a generative AI recipe & meal planner app, built as a course project for Mobile Application Design Lab under Md. Mezbaul Islam Zion (MIZ), Lecturer, DIU.',
                      style: TextStyle(fontSize: 16, height: 1.5),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Technology stack
                const Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          'Technology',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Powered by Google\'s Gemini AI API\n• Ingredient detection using image analysis\n• Recipe generation from ingredients\n• Recipe image generation with Gemini',
                          style: TextStyle(fontSize: 14, height: 1.5),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                // Team section
                const Text(
                  'Our Team',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                // Team members
                const TeamMemberCard(
                  name: 'Md Mehedi Hasan Nayeem',
                  id: '221‑15‑5049',
                ),
                const TeamMemberCard(
                  name: 'Md Mobashir Hasan',
                  id: '221‑15‑5405',
                ),
                const TeamMemberCard(name: 'Tanvirul Islam', id: '221‑15‑5386'),
                const TeamMemberCard(name: 'Azmira Shekh', id: '221‑15‑5569'),
                const TeamMemberCard(
                  name: 'Md. Jahid Hasan',
                  id: '221‑15‑5388',
                ),
                const SizedBox(height: 40),
                // Footer
                const Text(
                  '© 2024 FlavorLens Team',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TeamMemberCard extends StatelessWidget {
  final String name;
  final String id;

  const TeamMemberCard({super.key, required this.name, required this.id});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.deepOrange,
          child: Icon(Icons.person, color: Colors.white),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('ID: $id'),
      ),
    );
  }
}
