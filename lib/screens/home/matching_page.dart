import 'package:cosquare_app/components/widgets/card.dart';
import 'package:cosquare_app/components/widgets/filter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MatchingPage extends ConsumerStatefulWidget {
  const MatchingPage({super.key});
  static String get routeName => 'matching';
  static String get routeLocation => '/$routeName';
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MatchingPageState();
}

class _MatchingPageState extends ConsumerState<MatchingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MATCHING PAGE"),
        actions: [IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MatchingFilter(),
            Expanded(
              child: ListView(
                children: [
                  MatchingCard(),
                  MatchingCard(),
                  MatchingCard(),
                  MatchingCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
