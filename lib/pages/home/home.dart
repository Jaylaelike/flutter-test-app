import 'package:ecommerce/controller/app_controller.dart';
import 'package:ecommerce/pages/home/home_body.dart';
import 'package:ecommerce/pages/home/new_items.dart';
import 'package:ecommerce/pages/home/notifications_body.dart';
import 'package:ecommerce/pages/home/profile_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          title: Text('E-Commerce'),
          actions: [
            //cart icon
            Stack(
              children: [
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Get.toNamed('/cart');
                  },
                ),
                //Icon  button
                Positioned(
                    right: 0,
                    child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(16)),
                        child: Text('3')))
              ],
            )
          ],
        ),
        body: IndexedStack(
          index: controller.getCurrentNavIndex(),
          children: [
            HomeBody(),
            ProfileBody(),
            NewitemsBody(),
            NotificationBody()
          ],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: controller.getCurrentNavIndex(),
          onDestinationSelected: (value) {
            controller.setCurrentNavIndex(value);
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.favorite), label: 'New Items'),
            NavigationDestination(
                icon: Icon(Icons.notifications), label: 'Notifications'),
            NavigationDestination(icon: Icon(Icons.home), label: 'Profile'),
          ],
        ),
      );
    });
  }
}
