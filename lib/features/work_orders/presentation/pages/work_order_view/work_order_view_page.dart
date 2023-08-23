import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_orders_app/features/work_orders/domain/entities/work_order_entity.dart';
import 'package:work_orders_app/features/work_orders/presentation/widgets/section_title_widget.dart';

class WorkOrderPage extends StatelessWidget {
  static const String routeId = '/work-order-view-page';
  WorkOrderPage({super.key}) : workOrder = Get.arguments['workOrder'];

  late final WorkOrderEntity workOrder;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('#${workOrder.id}'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            SizedBox(
              child: Text(
                workOrder.title,
                style: const TextStyle(
                  color: Color(0xFF24292F),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Row(
              children: [
                WorkOrderSectionWidget(
                  title: 'Assignee',
                  child: Text(workOrder.assignedUserIds.join(',')),
                ),
                const SizedBox(width: 16),
                WorkOrderSectionWidget(
                  title: 'Priority',
                  child: Text(workOrder.priority),
                ),
              ],
            ),
            WorkOrderSectionWidget(
              title: 'Asset',
              child: Text(workOrder.assetId.toString()),
            ),
            WorkOrderSectionWidget(
              title: 'Description',
              child: Text(workOrder.description),
            ),
            WorkOrderSectionWidget(
              title: 'Procedure Checklist',
              child: Text(workOrder.checklist.join(', ')),
            ),
          ],
        ),
      ),
    );
  }
}
