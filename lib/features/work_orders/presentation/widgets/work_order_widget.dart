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
      onTap: () {
        Get.toNamed(
          WorkOrderPage.routeId,
          arguments: {'workOrder': workOrder},
        );
      },
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
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'ID #${workOrder.id}',
                  style: const TextStyle(
                    color: Color(0xFF8C959F),
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
                    color: const Color(0xFFE16F24),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  child: Text(
                    workOrder.status.capitalize ?? '',
                    style: const TextStyle(
                      color: Color(0xFFFAFAFA),
                      fontSize: 12,
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
}
