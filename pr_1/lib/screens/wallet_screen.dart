import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // верхняя панель
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: const Icon(Icons.arrow_back, size: 26),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        'My E-Wallet',
                        style: GoogleFonts.sourceSans3(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.search, size: 26),
                      SizedBox(width: 12),
                      Icon(Icons.more_horiz, size: 26),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // карта
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xFF1C1C1E),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // имя и логотипы
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Andrew Ainsley',
                          style: GoogleFonts.sourceSans3(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            // VISA
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                'VISA',
                                style: GoogleFonts.sourceSans3(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[900],
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            // Mastercard
                            const Icon(Icons.circle,
                                color: Colors.red, size: 20),
                            const Icon(Icons.circle,
                                color: Colors.orange, size: 20),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // номер карты
                    Text(
                      '•••• •••• •••• 3629',
                      style: GoogleFonts.sourceSans3(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 24),
                    // баланс
                    Text(
                      'Your balance',
                      style: GoogleFonts.sourceSans3(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$9,379',
                          style: GoogleFonts.sourceSans3(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        // кнопка Top Up
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_upward, size: 18),
                          label: const Text('Top Up'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // заголовок истории
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaction History',
                    style: GoogleFonts.sourceSans3(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: GoogleFonts.sourceSans3(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF304FFE),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // список транзакций
              transaction('assets/images/chair.jpg', 'Lawson Chair',
                  'Dec 15, 2024 | 10:00 AM', '\$120', 'Orders', Colors.red),
              transaction('assets/images/wallet.jpg', 'Top Up Wallet',
                  'Dec 14, 2024 | 16:42 PM', '\$400', 'Top Up', Colors.blue),
              transaction('assets/images/lamp.jpg', 'Parabolic Reflector',
                  'Dec 14, 2024 | 11:39 AM', '\$170', 'Orders', Colors.red),
              transaction('assets/images/table.jpg', 'Mini Wooden Table',
                  'Dec 13, 2024 | 14:46 PM', '\$165', 'Orders', Colors.red),
              transaction('assets/images/wallet.jpg', 'Top Up Wallet',
                  'Dec 12, 2024 | 09:27 AM', '\$300', 'Top Up', Colors.blue),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      // нижняя панель
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: 3,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }

  // транзакция
  Widget transaction(String imagePath, String title, String date,
      String amount, String label, Color labelColor) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          // картинка
          ClipOval(
            child: Image.asset(
              imagePath,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          // название и дата
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.sourceSans3(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  date,
                  style: GoogleFonts.sourceSans3(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // сумма и метка
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amount,
                style: GoogleFonts.sourceSans3(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    label,
                    style: GoogleFonts.sourceSans3(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 4),
                  // стрелка
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      color: labelColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(
                      label == 'Orders'
                          ? Icons.arrow_upward
                          : Icons.arrow_downward,
                      color: Colors.white,
                      size: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}