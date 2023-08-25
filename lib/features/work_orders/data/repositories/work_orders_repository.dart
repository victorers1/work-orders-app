import 'package:work_orders_app/features/work_orders/data/data_sources/work_orders_data_source.dart';
import 'package:work_orders_app/features/work_orders/domain/entities/work_order_entity.dart';
import 'package:work_orders_app/features/work_orders/domain/repositories/i_work_orders_repository.dart';

class WorkOrdersRepository implements IWorkOrdersRepository {
  final FakeWorkOrdersDataSource _dataSource;

  WorkOrdersRepository(this._dataSource);

  @override
  Future<List<WorkOrderEntity>> getAllWorkWorders() async {
    return _dataSource.loadWorkOrders();
  }
}
