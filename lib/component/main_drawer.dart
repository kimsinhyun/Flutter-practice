import 'package:flutter/material.dart';
import 'package:flutter_hello_world/const/colors.dart';

const regions = [
  '서울',
  '경기',
  '인천',
  '강원',
  '충북',
  '충남',
  '대전',
  '경북',
  '경남',
  '대구',
  '울산',
  '부산',
  '전북',
  '전남',
  '광주',
];

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: darkColor ,
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(
              "지역 선택",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            )
          ),
          ...regions.map(
            (e) => ListTile(
              onTap: () {},
              tileColor: Colors.white,
              selectedTileColor: lightColor,
              selectedColor: Colors.black,
              selected: false,
              title: Text(
                e,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ).toList(),
        ],
      ),
    );
  }
}
