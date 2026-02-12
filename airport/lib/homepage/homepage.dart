import 'package:flutter/material.dart';
import 'package:airport/details/detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER (Text Left, Profile Picture Right)
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Howdy,\nNalendra!',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Where to fly today len?',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/user.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // POPULAR DESTINATION LABEL
              const Text(
                'Popular Destination',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),

              // HORIZONTAL SCROLL (KARTU BESAR)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildDestinationCard(
                      'Emirates Stadium',
                      'London, UK',
                      'assets/images/emirates2.png',
                      5.0,
                    ),
                    _buildDestinationCard(
                      'Stamford Bridge',
                      'London, UK',
                      'assets/images/stambridge.png',
                      4.3,
                    ),
                    _buildDestinationCard(
                      'Brentford Stadium',
                      'London, UK',
                      'assets/images/brentford.png',
                      4.5,
                    ),
                    _buildDestinationCard(
                      'Craven Cottage',
                      'London, UK',
                      'assets/images/craven.png',
                      4.8,
                    ),
                    _buildDestinationCard(
                      'Wembley Stadium',
                      'London, UK',
                      'assets/images/wembley.png',
                      4.9,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // NEW THIS YEAR LABEL
              const Text(
                'New This Year',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),

              // VERTICAL LIST (TILE KECIL)
              Column(
                children: [
                  _buildDestinationTile(
                    'Etihad Stadium',
                    'Manchester, UK',
                    'assets/images/etihad.png',
                    4.8,
                  ),
                  _buildDestinationTile(
                    'Anfield Stadium',
                    'Liverpool, UK',
                    'assets/images/anfield.png',
                    4.8,
                  ),
                  _buildDestinationTile(
                    'Old Trafford',
                    'Manchester, UK',
                    'assets/images/oldtrafford.png',
                    4.8,
                  ),
                  _buildDestinationTile(
                    'Tottenham Hotspur Stadium',
                    'London, UK',
                    'assets/images/tottenham.png',
                    4.8,
                  ),
                ],
              ),
              
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xff5C40CC),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 24),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book, size: 24),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 24),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 24),
            label: '',
          ),
        ],
      ),
    );
  }

  // Widget Helper untuk Kartu (Horizontal Scroll)
  Widget _buildDestinationCard(
    String title,
    String location,
    String imagePath,
    double rating,
  ) {
    return Container(
      width: 200,
      height: 323,
      margin: const EdgeInsets.only(right: 24),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 55,
                height: 30,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 20),
                    const SizedBox(width: 2),
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            margin: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  location,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget Helper untuk List Tile (Vertical List)
  Widget _buildDestinationTile(
    String title,
    String location,
    String imagePath,
    double rating,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  location,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 20,
              ),
              const SizedBox(width: 4),
              Text(
                rating.toString(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
