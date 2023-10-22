import 'package:flutter/material.dart';
import 'package:flutter_hello_world/component/main_app_bar.dart';
import 'package:flutter_hello_world/component/main_card.dart';
import 'package:flutter_hello_world/component/main_drawer.dart';
import 'package:flutter_hello_world/component/main_stat.dart';

import '../component/card_title.dart';
import '../component/category_card.dart';
import '../component/hourly_card.dart';
import '../const/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      drawer: MainDrawer(),
      body: Center(
        child: CustomScrollView(
          slivers: [
            MainAppBar(),
            SliverToBoxAdapter(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CategoryCard(),
                const SizedBox(height: 16.0),
                HourlyCard(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
