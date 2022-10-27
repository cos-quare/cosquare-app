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
      appBar: AppBar(title: const Text("MATCHING PAGE")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
