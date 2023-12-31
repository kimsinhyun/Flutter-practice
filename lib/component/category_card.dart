import 'package:flutter/material.dart';
import 'package:flutter_hello_world/component/main_card.dart';

import '../const/colors.dart';
import 'card_title.dart';
import 'main_stat.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 200.0,
      child: MainCard(
          child: LayoutBuilder(
            builder: (context, constraint) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CardTitle(title: "종류별 통계"),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: PageScrollPhysics(),
                      children: List.generate(
                          20,
                          (index) => MainStat(
                                  category: '미세먼지$index',
                                  imgPath: 'asset/img/best.png',
                                  level: '최고',
                                  stat: '0 ㎍/㎥',
                                  width: constraint.maxWidth / 3)
                      )
                    ),
                  )
                ],
              );
            }
          )),
    );
  }
}
