import 'package:costarica_app/river_pod/authentication/authentication.dart';
import 'package:costarica_app/theme/style/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootPage extends ConsumerStatefulWidget {
  const RootPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends ConsumerState<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  Widget _body() {
    SizeConfig().init(context);
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
