import 'package:dio/dio.dart';
import 'package:work_orders_app/features/work_orders/data/models/work_order_model.dart';
import 'package:work_orders_app/features/work_orders/domain/entities/work_order_entity.dart';

class FakeWorkOrdersDataSource {
  final Dio _dio;

  FakeWorkOrdersDataSource(this._dio);

  Future<List<WorkOrderEntity>> loadWorkOrders() async {
    final result = await _dio.get('workorders');

    return (result.data as List?)
            ?.map(
              (e) => WorkOrderEntity.fromModel(WorkOrderModel.fromJson(e)),
            )
            .toList() ??
        [];
  }
}
