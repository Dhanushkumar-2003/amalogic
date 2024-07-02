import 'package:amologic/active.dart';
import 'package:amologic/home.dart';
import 'package:amologic/message.dart';
import 'package:amologic/person.dart';
import 'package:amologic/splash.dart';
import 'package:flutter/material.dart';

class Explit extends StatefulWidget {
  const Explit({super.key});

  @override
  State<Explit> createState() => _ExplitState();
}

int _currentIndex = 0;
final List<Widget> _screens = [Home(), Active(), Message(), Person()];

class _ExplitState extends State<Explit> with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Color.fromRGBO(37, 37, 37, 2),
        child: TabBar(
          dividerColor: Colors.transparent,
          //     showSelectedLabels: false,
          // showUnselectedLabels: false,Color.fromRGBO(191, 191, 191, 2),
          // backgroundColor: Colors.black,
          // showUnselectedLabels: true,
          unselectedLabelColor: const Color.fromRGBO(191, 191, 191, 2),
          // : Color.fromRGBO(129, 138, 249, 2),
          controller: controller,
          // unselectedLabelColor: Colors.grey,
          labelColor: Color.fromRGBO(129, 138, 249, 2),
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          tabs: const [
            Tab(
              icon: Icon(Icons.home_outlined),
            ),
            Tab(icon: ImageIcon(AssetImage('images/heart.png'))),
            Tab(
              icon: Icon(Icons.messenger_outline),
            ),
            Tab(
              icon: Icon(Icons.person_2_outlined),
            ),
          ],
        ),
      ),
      body: _screens[_currentIndex],
    );
    // bottomNavigationBar:
    //     // shadowColor: Colors.black,
    //     BottomNavigationBar(

    //   // backgroundColor: Colors.red,
    //   currentIndex: _currentIndex,
    //   onTap: (index) {
    //     setState(() {
    //       _currentIndex = index;
    //     });
    //   },
    //   type: BottomNavigationBarType.fixed,
    //   items: [
    //     BottomNavigationBarItem(
    //       // backgroundColor: Colors.red,
    //       // backgroundColor: Color.fromRGBO(255, 255, 255, 5),
    //       icon:
    //       label: 'Explore',
    //     ),
    //     BottomNavigationBarItem(
    //       backgroundColor: Color.fromRGBO(191, 191, 191, 2),
    //       icon: ),
    //       label: 'Explore',
    //     ),
    //     BottomNavigationBarItem(
    //       icon:
    //       label: 'Network',
    //     ),
    //     BottomNavigationBarItem(
    //       icon:
    //       label: 'chat',
    //     ),
    //   ],
    // ),
    //
  }
}

class Bottomnavi extends StatefulWidget {
  const Bottomnavi({super.key});

  @override
  State<Bottomnavi> createState() => _BottomnaviState();
}

class _BottomnaviState extends State<Bottomnavi> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    Home(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Card(
        shadowColor: Colors.black,
        elevation: 5,
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: const Color.fromARGB(255, 151, 149, 149),
          selectedItemColor: Color.fromRGBO(16, 61, 90, 8),
          // backgroundColor: Colors.red,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              // backgroundColor: Colors.red,
              // backgroundColor: Color.fromRGBO(255, 255, 255, 5),
              icon: Icon(Icons.checklist_rounded),
              label: 'refine',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.remove_red_eye),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.network_check_outlined),
              label: 'Network',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone_outlined),
              label: 'Contact',
            ),
          ],
        ),
      ),
      body: _screens[_currentIndex],
    );
  }
}
