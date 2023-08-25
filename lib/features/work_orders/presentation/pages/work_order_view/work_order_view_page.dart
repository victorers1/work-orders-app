import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_orders_app/features/work_orders/presentation/pages/work_order_view/work_order_view_controller.dart';
import 'package:work_orders_app/features/work_orders/presentation/widgets/section_title_widget.dart';

class WorkOrderViewPage extends StatelessWidget {
  static const String routeId = '/work-order-view-page';
  const WorkOrderViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WorkOrderViewController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: Text('#${controller.workOrder.id}'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/work_order_title_icon.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    controller.workOrder.title,
                    style: const TextStyle(
                      color: Color(0xFF24292F),
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 26),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: WorkOrderSectionWidget(
                      title: 'Assignee',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: controller.assignees
                            .map((e) => Text(e.name))
                            .toList(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: WorkOrderSectionWidget(
                      title: 'Priority',
                      child: Text(controller.workOrder.priority),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 26),
              WorkOrderSectionWidget(
                title: 'Asset',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/asset_icon.png',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 8),
                    Text(controller.workOrder.assetId.toString()),
                  ],
                ),
              ),
              const SizedBox(height: 26),
              WorkOrderSectionWidget(
                title: 'Description',
                child: Text(controller.workOrder.description),
              ),
              const SizedBox(height: 26),
              WorkOrderSectionWidget(
                title: 'Procedures Checklist',
                child: Column(
                  children: controller.workOrder.checklist
                      .map(
                        (check) => CheckboxListTile.adaptive(
                          value: check.completed,
                          controlAffinity: ListTileControlAffinity.leading,
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            check.task,
                            style: const TextStyle(
                              color: Color(0xFF24292F),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onChanged: (checked) {},
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 26),
            ],
          ),
        ),
      ),
    );
  }
}
