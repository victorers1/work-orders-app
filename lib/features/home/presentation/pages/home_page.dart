import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_orders_app/features/assets/presentation/pages/assets_list/assets_list_page.dart';
import 'package:work_orders_app/features/home/presentation/widgets/home_options_card.dart';
import 'package:work_orders_app/features/work_orders/presentation/pages/work_orders_list/work_orders_list_page.dart';

class HomePage extends StatelessWidget {
  static const String routeId = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png', width: 126),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HomeOptionCard(
              title: 'Work Orders',
              iconAssetPath: 'assets/icons/work_order_menu_icon.png',
              onTap: () {
                Get.toNamed(WorkOrdersListPage.routeId);
              },
            ),
            const SizedBox(height: 28),
            HomeOptionCard(
              title: 'Assets',
              iconAssetPath: 'assets/icons/assets_menu_icon.png',
              onTap: () {
                Get.toNamed(AssetsListPage.routeId);
              },
            ),
            const SizedBox(height: 28),
            HomeOptionCard(
              title: 'QR Code',
              iconAssetPath: 'assets/icons/qr_code_menu_icon.png',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
