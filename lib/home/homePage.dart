import 'package:assigment/booking/pages/flights_options.dart';
import 'package:assigment/home/account_page.dart';
import 'package:assigment/home/transaction_page.dart';
import 'package:flutter/material.dart';
import '../core/commont/constants/AppColors.dart';
import '../core/commont/constants/Icons_p.dart';
import '../core/utils/App_reponsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // Current selected index for BottomNavigationBar

  // Pages for BottomNavigationBar
  final List<Widget> _pages = [
    HomeScreen(), // Sizning mavjud Home sahifangiz
    TransactionPage(), // Sizning Transactions sahifangiz
    AccountScreen(), // Sizning Accounts sahifangiz
  ];

  @override
  Widget build(BuildContext context) {
    AppResponsive.init(context); // Responsiveness initialization
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: AppColors.blue,
        unselectedItemColor: AppColors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: "Transactions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Accounts",
          ),
        ],
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          // Top Section with Background Image
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/map.png"),
                  fit: BoxFit.contain,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: AppResponsive.screenHeight * 0.07),
                        Text(
                          "Search Flights",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: AppResponsive.screenHeight * 0.03,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Inter",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: AppResponsive.screenWidth * 0.1,
                      bottom: AppResponsive.screenWidth * 0.055,
                    ),
                    child: Text(
                      "Discover \na new world",
                      style: TextStyle(
                        height: AppResponsive.screenHeight * 0.0016,
                        color: AppColors.white,
                        fontSize: AppResponsive.screenHeight * 0.045,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Inter",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Main Content Section
          Expanded(
            flex: 9,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppResponsive.screenWidth * 0.079),
                  topRight: Radius.circular(AppResponsive.screenWidth * 0.079),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppResponsive.height(0.037),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: AppResponsive.height(0.025)),
                      // Radio Button Options
                      Transform.translate(
                        offset: Offset(-AppResponsive.screenWidth * 0.037, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildRadioButton("One-way", "val1"),
                            _buildRadioButton("Round-trip", "val2"),
                          ],
                        ),
                      ),
                      // Input Fields
                      textAndContainerMaker(
                        "From",
                        "New York, USA",
                        IconsPaths.flightTakeOff,
                      ),
                      textAndContainerMaker(
                        "To",
                        "Da Nang, Vietnam",
                        IconsPaths.flightLanding,
                      ),
                      textAndContainerMaker(
                        "Departure Date",
                        "August 28, 2021",
                        IconsPaths.calendar,
                      ),
                      textAndContainerMaker(
                        "Travelers",
                        "1 Adult, 1 child, 0 Infant",
                        IconsPaths.passenger,
                      ),
                      SizedBox(height: AppResponsive.screenHeight * 0.037),
                      // Search Flights Button
                      Container(
                        height: AppResponsive.screenHeight * 0.065,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(
                            AppResponsive.screenHeight * 0.017,
                          ),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FlightsOptions1(),
                              ),
                            );
                          },
                          child: Text(
                            "Search flights",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: AppResponsive.screenHeight * 0.023,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: AppResponsive.screenHeight * 0.037),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRadioButton(String text, String value) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.2,
          child: Radio(
            value: value,
            groupValue: "val1",
            onChanged: (value) {},
            activeColor: AppColors.blue,
            splashRadius: AppResponsive.screenHeight * 0.039,
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: AppColors.black,
            fontSize: AppResponsive.screenHeight * 0.0219,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

Widget textAndContainerMaker(String text, String innerText, IconData icon) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: AppResponsive.screenHeight * 0.017),
      Text(
        text,
        style: TextStyle(
          color: AppColors.black,
          fontSize: AppResponsive.screenHeight * 0.0239,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: AppResponsive.screenHeight * 0.01),
      Container(
        height: AppResponsive.screenHeight * 0.065,
        width: double.infinity,
        padding: EdgeInsets.only(left: AppResponsive.screenWidth * 0.05),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.grey,
            width: AppResponsive.screenHeight * 0.0005,
          ),
          color: AppColors.grey.withOpacity(0.13),
          borderRadius: BorderRadius.circular(
            AppResponsive.screenHeight * 0.017,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColors.blue,
              size: AppResponsive.screenHeight * 0.033,
            ),
            SizedBox(width: AppResponsive.screenWidth * 0.05),
            Text(
              innerText,
              style: TextStyle(
                color: AppColors.black,
                fontSize: AppResponsive.screenHeight * 0.023,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
