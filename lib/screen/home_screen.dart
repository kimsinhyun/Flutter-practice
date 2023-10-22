import 'package:flutter/material.dart';
import 'package:flutter_hello_world/component/main_app_bar.dart';
import 'package:flutter_hello_world/component/main_card.dart';
import 'package:flutter_hello_world/component/main_drawer.dart';
import 'package:flutter_hello_world/component/main_stat.dart';

import '../component/card_title.dart';
import '../component/category_card.dart';
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
                    MainCard(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                            CardTitle(title: "시간별 미세먼지"),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 8.0),
                          child: Column(
                              children: List.generate(
                                  24, (index) {
                                  final now = DateTime.now();
                                  int currentHour = now.hour - index;

                                  if (currentHour < 0) {
                                    currentHour = 24 + currentHour;
                                  }

                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0,
                                      vertical: 4.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Text('$currentHour시'),
                                        ),
                                        Expanded(
                                          child: Image.asset(
                                            'asset/img/good.png',
                                            height: 20.0,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            '${index * 10} ㎍/㎥',
                                            textAlign: TextAlign.right,
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                              }),
                        )
                    )
                  ],
                ),
              )
            ],
          ))]
      ,
    ),)
    ,
    );
  }
}
