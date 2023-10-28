import 'package:do_it_flutter/bottom_tab.dart';
import 'package:do_it_flutter/common/layout/default_layout.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        child: SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: SafeArea(
        top: true,
        bottom: true,
        child: Center(
          child: Column(
            children: [
              Text('home'),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => BottomTab())
                );
              }, child: Text('이동'))
            ],
          ),
        ),
      ),
    ));
  }
}
