
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/screen/friends_screen.dart';
import '../view/screen/home_screen.dart';
import '../view/screen/bucket_screen.dart';
import '../view/screen/setting_screen.dart';


class MainController extends GetxController {
  var pageController = PageController();
  RxInt curPage = 0.obs;

  List<Widget> screens = [
    HomeScreen(),
    BucketScreen(),
    FriendsScreen(),
    SettingScreen(),
  ];

  onPageTapped(int v) {
    pageController.jumpToPage(v);
    curPage(v);
  }

  @override
  void onClose() {
    super.onClose();
    pageController.dispose();
    curPage(0);
  }
}
