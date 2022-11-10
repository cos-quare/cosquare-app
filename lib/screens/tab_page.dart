import 'package:cosquare_app/components/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        child: CSBottomNavigationBar(),
      ),
    );
  }

  Widget _body() {
    return widget.child;
  }
}
