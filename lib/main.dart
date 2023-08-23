import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_orders_app/bindings.dart';
import 'package:work_orders_app/features/home/presentation/pages/home_page.dart';
import 'package:work_orders_app/features/work_orders/bindings.dart';
import 'package:work_orders_app/features/work_orders/presentation/pages/work_order_view/work_order_view_page.dart';
import 'package:work_orders_app/features/work_orders/presentation/pages/work_orders_list/work_orders_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Work Oorders',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF17192D)),
        useMaterial3: true,
      ),
      initialRoute: HomePage.routeId,
      getPages: [
        GetPage(
          name: HomePage.routeId,
          page: () => const HomePage(),
          binding: AppBindings(),
        ),
        GetPage(
          name: WorkOrdersListPage.routeId,
          page: () => const WorkOrdersListPage(),
          binding: WorkOrdersBindings(),
        ),
        GetPage(
          name: WorkOrderPage.routeId,
          page: () => WorkOrderPage(),
        )
      ],
    );
  }
}
