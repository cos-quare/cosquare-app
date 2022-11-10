import 'package:cosquare_app/screens/home/album_page.dart';
import 'package:cosquare_app/screens/home/feed_page.dart';
import 'package:cosquare_app/screens/home/matching_page.dart';
import 'package:cosquare_app/screens/home/my_page.dart';
import 'package:cosquare_app/screens/home/setting_page.dart';
import 'package:cosquare_app/theme/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class TabPage extends ConsumerStatefulWidget {
  const TabPage({super.key, required this.child});
  final Widget child;
  static String get routeName => 'tab';
  static String get routeLocation => '/';
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TabPageState();
}

class _TabPageState extends ConsumerState<TabPage> with WidgetsBindingObserver {
  int _selectedPage = 0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        break;
      case AppLifecycleState.inactive:
        break;
      case AppLifecycleState.detached:
        break;
      case AppLifecycleState.paused:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _body(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: _navigationBar(),
      ),
    );
  }

  Widget _body() {
    return widget.child;
  }

  Widget _navigationBar() {
    return BottomNavigationBar(
      onTap: (int idx) => _onItemTapped(idx, context),
      currentIndex: _calculateSelectedIndex(context),

      backgroundColor: kCosPurple500,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.maps_home_work_outlined),
          label: '피드',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.production_quantity_limits_outlined),
          label: '매칭',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: '앨범',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: '마이페이지',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
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
}
