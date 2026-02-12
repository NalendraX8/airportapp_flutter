import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Tambahan biar aman
      body: Stack(
        children: [
          // 1. BACKGROUND IMAGE
          Container(
            width: double.infinity,
            height: 500,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/emirates2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // 2. TOMBOL BACK
           SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.arrow_back_ios_new, size: 20),
                ),
              ),
            ),
          ),

          // 3. JUDUL & RATING (Melayang)
          Positioned(
            top: 300,
            left: 24,
            right: 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Emirates Stadium',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(blurRadius: 10, color: Colors.black45, offset: Offset(2, 2))
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'London, UK',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white70,
                     shadows: [
                      Shadow(blurRadius: 10, color: Colors.black45, offset: Offset(2, 2))
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.star, color: Colors.amber, size: 24),
                    SizedBox(width: 4),
                    Text(
                      '5.0',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                         shadows: [
                          Shadow(blurRadius: 10, color: Colors.black45, offset: Offset(2, 2))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // 4. KOTAK PUTIH (KONTEN UTAMA)
          Container(
            margin: const EdgeInsets.only(top: 420),
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 100), // Padding bawah gede buat tombol
              child: SingleChildScrollView( 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // --- ABOUT ---
                    const Text(
                      'About',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                      style: TextStyle(color: Colors.grey, height: 1.5),
                    ),
                    const SizedBox(height: 24),

                    //  photos
                    const Text(
                      'Photos',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    // Pakai SingleChildScrollView horizontal biar aman kalau fotonya banyak
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildPhoto('assets/images/emirates2.png'),
                          const SizedBox(width: 16),
                          _buildPhoto('assets/images/emirates2.png'),
                          const SizedBox(width: 16),
                          _buildPhoto('assets/images/emirates2.png'),
                          const SizedBox(width: 16),
                          _buildPhoto('assets/images/emirates2.png'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),

                    // interests
                     const Text(
                      'Interests',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(child: _buildInterest('Kids Park')),
                        Expanded(child: _buildInterest('Honor Bridge')),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(child: _buildInterest('City Museum')),
                        Expanded(child: _buildInterest('Central Mall')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // tombol book now
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'IDR 2.500.000',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xff5C40CC)),
                      ),
                      Text(
                        'per orang',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xff5C40CC),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Center(
                      child: Text(
                        'Book Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  //helper func photos di about

  Widget _buildPhoto(String imagePath) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  //helper func interests di about

  Widget _buildInterest(String text) {
    return Row(
      children: [
        const Icon(Icons.check_circle_outline, color: Color(0xff5C40CC), size: 20),
        const SizedBox(width: 6),
        Text(text),
      ],
    );
  }
}