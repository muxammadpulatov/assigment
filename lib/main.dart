import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OnboardingScreens(),
  ));
}

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  _OnboardingScreensState createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 2) {
      setState(() {
        _currentPage++;
      });
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      print('Get Started bosildi');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        children: [
          OnboardingPage(
            imagePath: 'assets/images/intro_person1.png',
            title: 'Explore The Beautiful World!',
            buttonText: 'Next',
            onNext: _nextPage,
            isLastPage: false,
          ),
          OnboardingPage(
            imagePath: 'assets/images/intro_person2.png',
            title: 'Find Your Perfect Tickets To Fly',
            buttonText: 'Next',
            onNext: _nextPage,
            isLastPage: false,
          ),
          OnboardingPage(
            imagePath: 'assets/images/intro_person3.png',
            title: 'Book Appointment in Easiest Way!',
            buttonText: 'Get Started',
            onNext: _nextPage,
            isLastPage: true,
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String buttonText;
  final VoidCallback onNext;
  final bool isLastPage;

  const OnboardingPage({
    super.key,
    required this.imagePath,
    required this.title,
    required this.buttonText,
    required this.onNext,
    required this.isLastPage,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Rasm
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                imagePath,
                width: 418, // Rasmning eni
                height: 343, // Rasmning bo'yi
                fit: BoxFit.contain, // Rasmni moslashtirish uslubi
              ),
            ),
          ),
          // Matn
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontSize: 48, // O'lchamni kattalashtirish
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Indikatorlar
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIndicator(0),
              _buildIndicator(1),
              _buildIndicator(2),
            ],
          ),
          // Skip va Next tugmalari yonma-yon
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Skip tugmasi
                ElevatedButton(
                  onPressed: () {
                    print('Skip bosildi');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0), // Kattalashtirilgan padding
                  ),
                  child: Row(
                    children: const [
                      Text(
                        'Skip',
                        style: TextStyle(
                          fontSize: 24, // Tugma matni kattalashtirildi
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20), // Tugmalar orasidagi bo'shliq
                // Next yoki Get Started tugmasi
                ElevatedButton(
                  onPressed: () {
                    if (buttonText == 'Next') {
                      onNext();
                    } else {
                      print('Get Started bosildi');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0), // Kattalashtirilgan padding
                  ),
                  child: Row(
                    children: [
                      Text(
                        buttonText,
                        style: const TextStyle(
                          fontSize: 24, // Tugma matni kattalashtirildi
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.arrow_forward, size: 24), // Ikonka kattalashtirildi
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Indikator yaratuvchi funksiyasi
  Widget _buildIndicator(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: 24.0,
      decoration: BoxDecoration(
        color: index == 0 ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
