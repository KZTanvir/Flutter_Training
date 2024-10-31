import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 85),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.0),
                          child: Text(
                            '@KZTanvir',
                            style: TextStyle(color: Colors.grey, fontSize: 19),
                          ),
                        ),
                        Text(
                          'Md. Kamruzzaman',
                          style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Software Developer', style: TextStyle(color: Colors.grey, fontSize: 16)),
                              Text(' | ', style: TextStyle(color: Colors.grey, fontSize: 16)),
                              Text('Joined March 2024', style: TextStyle(color: Colors.grey, fontSize: 16)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildOutlinedButton('Follow', Icons.person),
                        const SizedBox(width: 10),
                        buildOutlinedButton('Message', Icons.message),
                        const SizedBox(width: 10),
                        buildOutlinedButton('More', Icons.more_horiz),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'CEO BinaryZone, Because your satisfaction is everything & Standing '
                            'out from the rest, and that`s what we want you to be as well.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                    ),
                    Container(
                      height: 10,
                      color: Colors.grey.withOpacity(0.1),
                      margin: const EdgeInsets.symmetric(vertical: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Information',
                            style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildInformationItems(Icons.web, "GitHub: ", "KZTanvir"),
                              const SizedBox(height: 8),
                              buildInformationItems(Icons.public, "Website: ", "kztanvir.github.io"),
                              const SizedBox(height: 8),
                              buildInformationItems(Icons.email, "Email: ", "kamruzzaman.git@gmail.com"),
                              const SizedBox(height: 8),
                              buildInformationItems(Icons.phone, "Phone: ", "+880 1700000000"),
                              const SizedBox(height: 8),
                              buildInformationItems(Icons.calendar_today, "Joined: ", "26 March, 2024"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 20,
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    const SizedBox(height: 20),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      alignment: WrapAlignment.start,
                      children: [
                        buildTextButton('Backend Development'),
                        buildTextButton('Web Development'),
                        buildTextButton('UI Design'),
                        buildTextButton('Rest API'),
                        buildTextButton('Flutter'),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const Positioned(
                top: 45,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/71467760'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function for creating OutlinedButton
  OutlinedButton buildOutlinedButton(String text, IconData icon) {
    return OutlinedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        side: const BorderSide(color: Colors.grey),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          const SizedBox(width: 8),
          Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  // Function for creating Information items
  Row buildInformationItems(IconData icon, String label, String value) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey),
        const SizedBox(width: 8),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 16)),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(color: Colors.black87, fontSize: 16),
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }

  // Function to create TextButton
  TextButton buildTextButton(String text) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.grey[200],
        foregroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
