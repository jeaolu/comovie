import 'package:flutter/material.dart';

class MovieHomePage extends StatelessWidget {
  const MovieHomePage({super.key});

  final List<String> trendingNow = const [
    'assets/beast.jpeg',
    'assets/if.jpeg',
    'assets/king.jpeg',
  ];

  final List<String> series = const [
    'assets/challengers.jpeg',
    'assets/power.jpeg',
    'assets/barbarian.jpeg',
  ];

  final List<String> animations = const [
    'assets/hood.jpeg',
    'assets/soul.jpeg',
    'assets/dino.jpeg',
  ];

  Widget buildCategory(String title, List<String> posters) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const Text('See all', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: posters.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(posters[index], width: 120, fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/avatar.jpeg'),
                        radius: 20,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Welcome back,', style: TextStyle(color: Colors.grey)),
                          Text('Ayomide David', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.cast, color: Colors.white),
                      SizedBox(width: 16),
                      Icon(Icons.search, color: Colors.white),
                    ],
                  )
                ],
              ),
            ),

            buildCategory('Trending Now', trendingNow),
            buildCategory('Series', series),
            buildCategory('Animations', animations),
            const SizedBox(height: 100),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.download_outlined), label: 'Downloads'),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.jpeg'),
              radius: 12,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}