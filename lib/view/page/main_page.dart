
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../controller/main_controller.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);
  static const String route = '/main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,   // 자동 뒤로가기 버튼 생성 비활성화
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: PageView.builder(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        itemCount: controller.screens.length,
        itemBuilder: (context, index) {
          return controller.screens[index];
        }
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.deepOrangeAccent,
          onTap: controller.onPageTapped,
          currentIndex: controller.curPage.value,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: '홈'),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: '버킷리스트'),
            BottomNavigationBarItem(icon: Icon(Icons.people_outline), label: '친구'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '내정보'),
          ],
        ),
      ),
    );
  }
}
