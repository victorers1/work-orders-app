import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_orders_app/features/work_orders/presentation/pages/work_orders_controller.dart';

class WorkOrdersPage extends StatelessWidget {
  static const routeId = '/work-orders';
  const WorkOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Work Orders'),
      ),
      body: GetBuilder<WorkOrdersController>(
        builder: (controller) => controller.isLoading
            ? const Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                padding: const EdgeInsets.only(top: 23),
                child: Text(
                  controller.workOrders.map((e) => '$e').join('\n\n\n'),
                ),
              ),
      ),
    );
  }
}
