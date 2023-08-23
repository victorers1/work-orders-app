import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_orders_app/features/home/presentation/widgets/home_options_card.dart';
import 'package:work_orders_app/features/work_orders/presentation/pages/work_orders_list/work_orders_list_page.dart';

class HomePage extends StatelessWidget {
  static const String routeId = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tractian'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HomeOptionCard(
              title: 'Work Orders',
              onTap: () {
                Get.toNamed(WorkOrdersListPage.routeId);
              },
            ),
            const SizedBox(height: 28),
            HomeOptionCard(
              title: 'Assets',
              onTap: () {},
            ),
            const SizedBox(height: 28),
            HomeOptionCard(
              title: 'QR Code',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
