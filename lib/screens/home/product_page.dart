import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // appBar: _appBar(),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ElevatedButton(
          child: Text('tabpage 가기 (go)'),
          onPressed: () {
            context.go(
              '/loginPage',
            );
          },
        ),
        const SizedBox(height: 8),
        ElevatedButton(
          child: Text('tabpage 가기 (push)'),
          onPressed: () {
            context.push(
              '/tabPage',
            );
          },
        ),
      ],
    ));
  }
}
