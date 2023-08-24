import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_orders_app/features/work_orders/domain/entities/work_order_entity.dart';
import 'package:work_orders_app/features/work_orders/presentation/widgets/section_title_widget.dart';

class WorkOrderPage extends StatelessWidget {
  static const String routeId = '/work-order-page';
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Text(
              workOrder.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF24292F),
                fontSize: 18,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 26),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: WorkOrderSectionWidget(
                    title: 'Assignee',
                    child: Text(workOrder.assignedUserIds.join(',')),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: WorkOrderSectionWidget(
                    title: 'Priority',
                    child: Text(workOrder.priority),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 26),
            WorkOrderSectionWidget(
              title: 'Asset',
              child: Text(workOrder.assetId.toString()),
            ),
            const SizedBox(height: 26),
            WorkOrderSectionWidget(
              title: 'Description',
              child: Text(workOrder.description),
            ),
            const SizedBox(height: 26),
            WorkOrderSectionWidget(
              title: 'Procedure Checklist',
              child: Text(workOrder.checklist.join(', ')),
            ),
            const SizedBox(height: 26),
          ],
        ),
      ),
    );
  }
}
