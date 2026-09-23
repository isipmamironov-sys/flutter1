import 'package:flutter/material.dart';

void main() {
  runApp(const MedinowApp());
}

class MedinowApp extends StatelessWidget {
  const MedinowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(8, 161, 165, 1),
        ),
      ),
      home: PageView(
        children: const [
          OldPage(),
          MeditationPage(),
          NewPage(),
          OrganizerPage(),
        ],
      ),
    );
  }
}

class OldPage extends StatelessWidget {
  const OldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(8, 161, 165, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            children: [
              const Spacer(),
              const Text(
                'medinow',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 37,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Meditate With Us!',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(height: 45),
              templateContainer('Sign in with Apple', Colors.white),
              const SizedBox(height: 11),
              templateContainer(
                'Continue with Email or Phone',
                const Color.fromRGBO(196, 243, 245, 1),
              ),
              const SizedBox(height: 16),
              const Text(
                'Continue With Google',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const Spacer(),
              Image.asset(
                'lib/img/9d8e94eee9a8a2d6985d3f34298b53200302e5d5.png',
                height: 250,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget templateContainer(String text, Color color) {
  return Container(
    height: 47,
    width: double.infinity,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(25),
    ),
    child: Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        color: Color.fromRGBO(16, 16, 16, 1),
      ),
    ),
  );
}

class MeditationPage extends StatelessWidget {
  const MeditationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(23, 13, 23, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: ColoredBox(
                  color: const Color.fromRGBO(255, 211, 79, 1),
                  child: Image.asset(
                    'lib/img/Group 122.png',
                    width: double.infinity,
                    height: 226,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Peter Mach',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 5),
              const Text(
                'Mind Deep Relax',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happiness session across the World.',
                style: TextStyle(fontSize: 15, height: 1.5),
              ),
              const SizedBox(height: 22),
              Container(
                height: 48,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(8, 161, 165, 1),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Text(
                  '▷   Play Next Session',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              const SizedBox(height: 25),
              meditationSession(
                'Sweet Memories',
                const Color.fromRGBO(52, 127, 233, 1),
              ),
              meditationSession(
                'A Day Dream',
                const Color.fromRGBO(8, 161, 165, 1),
              ),
              meditationSession(
                'Mind Explore',
                const Color.fromRGBO(255, 146, 46, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget meditationSession(String title, Color color) {
  return Container(
    height: 72,
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Color.fromRGBO(238, 238, 238, 1)),
      ),
    ),
    child: Row(
      children: [
        Container(
          width: 41,
          height: 41,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.play_arrow_outlined, color: Colors.white),
        ),
        const SizedBox(width: 13),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const Text(
              'December 29 Pre-Launch',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        const Spacer(),
        const Text('•••', style: TextStyle(color: Colors.grey)),
      ],
    ),
  );
}

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 33,
                    height: 33,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(240, 242, 255, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.chevron_left,
                      color: Color.fromRGBO(91, 98, 255, 1),
                    ),
                  ),
                  const SizedBox(width: 18),
                  const Text(
                    '3D Design Basic',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 27),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'lib/img/2c8be823c31da7fe8453d57825d263b9ebf8d1b6.jpg',
                  width: double.infinity,
                  height: 218,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 22),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 9,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(241, 242, 255, 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.language,
                          size: 13,
                          color: Color.fromRGBO(77, 85, 255, 1),
                        ),
                        SizedBox(width: 6),
                        Text(
                          '4.569',
                          style: TextStyle(
                            color: Color.fromRGBO(77, 85, 255, 1),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 9,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(241, 242, 255, 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 13,
                          color: Color.fromRGBO(77, 85, 255, 1),
                        ),
                        SizedBox(width: 6),
                        Text(
                          '4.9',
                          style: TextStyle(
                            color: Color.fromRGBO(77, 85, 255, 1),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 9,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(77, 85, 255, 1),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: const Text(
                      'Best Seller',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 27),
              const Text(
                '3D Design Basic',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 26),
              const Text(
                'In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learnin videos for you.',
                style: TextStyle(fontSize: 14, height: 1.55),
              ),
              const SizedBox(height: 27),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '24 Lessons (20 hours)',
                    style: TextStyle(
                      color: Color.fromRGBO(47, 62, 82, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Color.fromRGBO(62, 79, 255, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Container(
                height: 81,
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(17),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(235, 237, 245, 1),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'lib/img/2c8be823c31da7fe8453d57825d263b9ebf8d1b6.jpg',
                        width: 55,
                        height: 55,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 18),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Introduction to 3D',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('20 mins', style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.check_circle_outline,
                      color: Color.fromRGBO(77, 85, 255, 1),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(77, 85, 255, 1),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: const Text(
                  'Enroll - \$24.99',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrganizerPage extends StatelessWidget {
  const OrganizerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(18, 9, 18, 24),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: Color.fromRGBO(88, 98, 255, 1),
                    size: 23,
                  ),
                  const SizedBox(width: 17),
                  const Text(
                    'Organizer',
                    style: TextStyle(
                      color: Color.fromRGBO(18, 27, 43, 1),
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 41,
                    height: 41,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(240, 242, 255, 1),
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: const Icon(
                      Icons.more_vert,
                      color: Color.fromRGBO(88, 98, 255, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 27),
              ClipOval(
                child: Image.asset(
                  'lib/img/ecef97c4927b0777344c52addd0aee987ea7c0e3.png',
                  width: 110,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 22),
              const Text(
                'Albert Flores',
                style: TextStyle(
                  color: Color.fromRGBO(18, 27, 43, 1),
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '2.368',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Followers'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.symmetric(
                          vertical: BorderSide(
                            color: Color.fromRGBO(232, 234, 239, 1),
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            '346',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text('Following'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          '13',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Events'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(color: Color.fromRGBO(232, 234, 239, 1), height: 1),
              const SizedBox(height: 22),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 44,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(88, 98, 255, 1),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_add_alt_1,
                            size: 15,
                            color: Colors.white,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Follow',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 9),
                  Expanded(
                    child: Container(
                      height: 44,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(88, 98, 255, 1),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.message,
                            size: 15,
                            color: Color.fromRGBO(88, 98, 255, 1),
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Messages',
                            style: TextStyle(
                              color: Color.fromRGBO(88, 98, 255, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(color: Color.fromRGBO(232, 234, 239, 1), height: 1),
              const SizedBox(height: 22),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 39,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(88, 98, 255, 1),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: const Text(
                        'About',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: 39,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(88, 98, 255, 1),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: const Text(
                        'Events',
                        style: TextStyle(
                          color: Color.fromRGBO(88, 98, 255, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      height: 39,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color.fromRGBO(88, 98, 255, 1),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: const Text(
                        'Reviews',
                        style: TextStyle(
                          color: Color.fromRGBO(88, 98, 255, 1),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 26),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About',
                  style: TextStyle(
                    color: Color.fromRGBO(47, 62, 82, 1),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: TextStyle(
                    color: Color.fromRGBO(64, 76, 95, 1),
                    fontSize: 14,
                    height: 1.6,
                  ),
                ),
              ),
              const SizedBox(height: 2),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Read more...',
                  style: TextStyle(
                    color: Color.fromRGBO(88, 98, 255, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
