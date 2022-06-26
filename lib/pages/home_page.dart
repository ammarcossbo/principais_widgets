import 'package:flutter/material.dart';
import 'package:principais_widgets/pages/pageViews/one_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({Key? key}) : super(key: key);
  PageController _pageController = PageController();
  int indexBottomNavigationBar = 0;
/*com undeline é somente nessa classe visivel*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "App Bar",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          OnePage(),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.yellow,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottomNavigationBar,
          onTap: (int page) {
            setState(() {
              indexBottomNavigationBar = page;
            });
            _pageController.animateToPage(page,
                duration: Duration(
                  milliseconds: 300,
                ),
                curve: Curves.ease);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 3',
            ),
          ]),
    );
  }
}
