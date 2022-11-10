import 'package:cosquare_app/screens/home/album_page.dart';
import 'package:cosquare_app/screens/home/feed_page.dart';
import 'package:cosquare_app/screens/home/matching_page.dart';
import 'package:cosquare_app/screens/home/my_page.dart';
import 'package:cosquare_app/screens/home/setting_page.dart';
import 'package:cosquare_app/theme/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CSBottomNavigationBar extends ConsumerStatefulWidget {
  const CSBottomNavigationBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CSBottomNavigationBarState();
}

class _CSBottomNavigationBarState extends ConsumerState<CSBottomNavigationBar> {
  int _selectedPage = 0;
  int _calculateSelectedIndex(BuildContext context) {
    final GoRouter route = GoRouter.of(context);
    final String location = route.location;
    if (location == FeedPage.routeLocation) {
      _selectedPage = 0;
    }
    if (location == MatchingPage.routeLocation) {
      _selectedPage = 1;
    }
    if (location == AlbumPage.routeLocation) {
      _selectedPage = 2;
    }
    if (location == MyPage.routeLocation) {
      _selectedPage = 3;
    }
    if (location == SettingPage.routeLocation) {
      _selectedPage = 4;
    }
    return _selectedPage;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go(FeedPage.routeLocation);
        break;
      case 1:
        context.go(MatchingPage.routeLocation);
        break;
      case 2:
        context.go(AlbumPage.routeLocation);
        break;
      case 3:
        context.go(MyPage.routeLocation);
        break;
      case 4:
        context.go(SettingPage.routeLocation);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int idx) => _onItemTapped(idx, context),
      currentIndex: _calculateSelectedIndex(context),
      backgroundColor: kCosGray900,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.web_stories),
          label: '피드',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.connect_without_contact,
          ),
          label: '매칭',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.burst_mode),
          label: '앨범',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '마이페이지',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '설정',
        ),
      ],
      selectedFontSize: 11,
      unselectedFontSize: 11,
      // selectedItemColor: DUColors.blue03,
      // unselectedItemColor: DUColors.black04,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    );
  }
}
