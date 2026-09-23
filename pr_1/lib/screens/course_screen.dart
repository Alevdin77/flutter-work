import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'wallet_screen.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // верхняя панель
              Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      color: const Color(0xFF304FFE).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(Icons.arrow_back_ios_new,
                          size: 16, color: Color(0xFF304FFE)),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    '3D Design Basic',
                    style: GoogleFonts.sourceSans3(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF09101D),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // картинка курса
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/course_illustration.jpg',
                  width: double.infinity,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 24),

              // рейтинг и бейдж
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xFF304FFE).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.star,
                            size: 16, color: Color(0xFF304FFE)),
                        const SizedBox(width: 4),
                        Text(
                          '4.569',
                          style: GoogleFonts.sourceSans3(
                            fontSize: 14,
                            color: const Color(0xFF304FFE),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xFF304FFE).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.star,
                            size: 16, color: Color(0xFF304FFE)),
                        const SizedBox(width: 4),
                        Text(
                          '4.9',
                          style: GoogleFonts.sourceSans3(
                            fontSize: 14,
                            color: const Color(0xFF304FFE),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  // бейдж Best Seller
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF304FFE),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Text(
                      'Best Seller',
                      style: GoogleFonts.sourceSans3(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // заголовок
              Text(
                '3D Design Basic',
                style: GoogleFonts.sourceSans3(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF09101D),
                ),
              ),

              const SizedBox(height: 12),

              // описание
              Text(
                'In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.',
                style: GoogleFonts.sourceSans3(
                  fontSize: 16,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 20),

              // заголовок уроков
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '24 Lessons (20 hours)',
                    style: GoogleFonts.sourceSans3(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2C3A4B),
                    ),
                  ),
                  Text(
                    'See all',
                    style: GoogleFonts.sourceSans3(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF304FFE),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // карточка урока
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color(0xFFF4F6F9)),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF5A6CEA).withOpacity(0.08),
                      blurRadius: 50,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/lesson_illustration.jpg',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Introduction to 3D',
                            style: GoogleFonts.sourceSans3(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF09101D),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '20 mins',
                            style: GoogleFonts.sourceSans3(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF394452),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.check_circle,
                        color: Color(0xFF304FFE), size: 24),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // кнопка Enroll
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF304FFE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: Text(
                    'Enroll - \$24.99',
                    style: GoogleFonts.sourceSans3(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // кнопка кошелька
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WalletScreen(),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF304FFE), width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: Text(
                    'My E-Wallet',
                    style: GoogleFonts.sourceSans3(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF304FFE),
                    ),
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