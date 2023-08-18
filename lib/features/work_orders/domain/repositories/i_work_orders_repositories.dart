import 'package:work_orders_app/features/work_orders/domain/entities/work_order_entity.dart';

abstract class IWorkOrdersRepository {
  Future<List<WorkOrderEntity>> getAllWorkWorders();
}
