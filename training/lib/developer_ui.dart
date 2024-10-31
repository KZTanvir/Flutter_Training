import 'package:flutter/material.dart';

class DeveloperProfileUi extends StatelessWidget {
  const DeveloperProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildHeader(),
            const SizedBox(height: 20),
            _buildActionButtons(),
            const SizedBox(height: 20),
            _buildProfileDescription(),
            const SizedBox(height: 20),
            _buildInfoSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.black87,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "@Arnoldy",
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              const Text(
                "Arnoldy Chafe",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Bandung | Joined March 2023",
                style: TextStyle(fontSize: 14, color: Colors.white54),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 100,
          width: double.infinity,
          color: Colors.white,
          child: Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2019/08/11/18/59/icon-4399701_1280.png',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
          ),
          child: const Text("Follow", style: TextStyle(fontSize: 16, color: Colors.white)),
        ),
        const SizedBox(width: 10),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            side: const BorderSide(color: Colors.blue),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
          ),
          child: const Text("Message", style: TextStyle(fontSize: 16, color: Colors.blue)),
        ),
      ],
    );
  }

  Widget _buildProfileDescription() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: const Center(
        child: Text(
          "CEO System D, Because your satisfaction is everything & Standing out from the rest, and that’s what we want you to be as well.",
          style: TextStyle(fontSize: 16, color: Colors.black87),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildInfoSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(thickness: 1),
          const SizedBox(height: 10),
          _buildInfoTile(Icons.language, "Website", "www.Arnoldy.com"),
          _buildInfoTile(Icons.email, "Email", "Hello@adalahreza.com"),
          _buildInfoTile(Icons.phone, "Phone", "+62 517 218 92 00"),
          _buildInfoTile(Icons.calendar_today, "Joined", "26 March, 2023"),
          const SizedBox(height: 20),
          const Divider(thickness: 1),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Skills & Interests",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
            ),
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              _buildChip("UI Designer"),
              _buildChip("UX Designer"),
              _buildChip("Design System"),
              _buildChip("Product"),
              _buildChip("Successful"),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildInfoTile(IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.black54)),
        tileColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }

  Widget _buildChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.blue[50],
      labelStyle: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
    );
  }
}
