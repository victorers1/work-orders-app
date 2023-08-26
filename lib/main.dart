import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:work_orders_app/bindings.dart';
import 'package:work_orders_app/features/assets/bindings.dart';
import 'package:work_orders_app/features/assets/presentation/pages/assets_list/assets_list_page.dart';
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
    final textTheme = Theme.of(context).textTheme;

    return GetMaterialApp(
      title: 'Work Oorders',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF17192D)),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFF17192D),
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.robotoTextTheme(textTheme),
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
          name: WorkOrderViewPage.routeId,
          page: () => const WorkOrderViewPage(),
          binding: WorkOrdersBindings(),
        ),
        GetPage(
          name: AssetsListPage.routeId,
          page: () => const AssetsListPage(),
          binding: AssetsBindings(),
        ),
      ],
    );
  }
}
