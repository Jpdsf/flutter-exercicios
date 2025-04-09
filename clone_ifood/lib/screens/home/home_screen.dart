import 'package:flutter/material.dart';
import 'components/location_bar.dart';
import 'components/filters_list.dart';
import 'components/promo_banner.dart';
import 'components/loop_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              LocationBar(),
              FiltersList(),
              PromoBanner(),
              LoopSection(),
            ],
          ),
        ),
      ),
    );
  }
}
