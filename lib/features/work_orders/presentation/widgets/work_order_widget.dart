import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:work_orders_app/features/work_orders/domain/entities/work_order_entity.dart';
import 'package:work_orders_app/features/work_orders/presentation/pages/work_order_view/work_order_view_page.dart';

class WorkOrderWidget extends StatelessWidget {
  const WorkOrderWidget({
    super.key,
    required this.workOrder,
  });

  final WorkOrderEntity workOrder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _onTapWorkOrder,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset(
              'assets/icons/work_order_icon.png',
              height: 47,
              width: 47,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  workOrder.title,
                  style: const TextStyle(
                    color: Color(0xFF24292F),
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'ID #${workOrder.id}',
                  style: const TextStyle(
                    color: Color(0xFF8C959F),
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 2,
                  ),
                  decoration: ShapeDecoration(
                    color: _getStatusColor(workOrder.status),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  child: Text(
                    workOrder.status,
                    style: const TextStyle(
                      color: Color(0xFFFAFAFA),
                      fontSize: 12,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'In Progress':
        return const Color(0xFF2188FF);

      case 'On Hold':
        return const Color(0xFFFB8F44);
      case 'Open':
      default:
        return const Color(0xFFE16F24);
    }
  }

  void _onTapWorkOrder() {
    Get.toNamed(
      WorkOrderViewPage.routeId,
      arguments: {'workOrder': workOrder.copyWith()},
    );
  }
}
