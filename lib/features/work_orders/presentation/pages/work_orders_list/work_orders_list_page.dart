import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_orders_app/features/work_orders/presentation/pages/work_orders_list/work_orders_list_controller.dart';
import 'package:work_orders_app/features/work_orders/presentation/widgets/work_order_widget.dart';

class WorkOrdersListPage extends StatelessWidget {
  static const routeId = '/work-orders-list';
  const WorkOrdersListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Work Orders'),
      ),
      body: GetBuilder<WorkOrdersListController>(
        builder: (controller) => controller.isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.separated(
                padding: const EdgeInsets.only(top: 23),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: controller.workOrders.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: WorkOrderWidget(
                    workOrder: controller.workOrders[index],
                  ),
                ),
              ),
      ),
    );
  }
}
