import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepstayapp/core/utils/color_util.dart';
import 'package:nepstayapp/core/utils/nef_spacing.dart';
import 'package:nepstayapp/features/Home/presentation/pages/home_page.dart';
import 'package:nepstayapp/features/Inbox/inbox_page.dart';
import 'package:nepstayapp/features/profile/presentation/screens/profile_page.dart';

class NefNavBar extends ConsumerStatefulWidget {
  final int selectedIndex;

  const NefNavBar({super.key, this.selectedIndex = 0});

  @override
  _NefNavBarState createState() => _NefNavBarState();
}

class _NefNavBarState extends ConsumerState<NefNavBar> {
  late int _selectedIndex;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HomePage(),
    HomePage(),
    InboxPage(),
    ProfilePage()
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {});

    _selectedIndex = widget.selectedIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final navState = ref.watch(navbarNotifierProvider);

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Explore",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "wishists",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.show_chart),
              label: "trip",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.all_inbox_rounded),
              label: "inbox",
            ),
            BottomNavigationBarItem(
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox(
                  height: NefSpacing.spacing5,
                  width: NefSpacing.spacing5,
                  child: Image.asset(
                    "assets/images/IMG_4610.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              label: "Profile",
            ),
          ],
          currentIndex: _selectedIndex,
          backgroundColor: whiteColor,
          unselectedIconTheme: const IconThemeData(size: 20),
          selectedIconTheme: const IconThemeData(size: 20),
          elevation: 5,
          unselectedItemColor: greyColor.withOpacity(0.5),
          unselectedLabelStyle: TextStyle(
            color: greyColor.withOpacity(0.5),
            fontSize: 14,
          ),
          selectedItemColor: primaryColor,
          showUnselectedLabels: true,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          selectedLabelStyle: const TextStyle(
            color: primaryColor,
            fontSize: 14,
          ),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
