import 'package:dartz/dartz.dart';
import 'package:work_orders_app/features/work_orders/domain/entities/work_order_entity.dart';
import 'package:work_orders_app/features/work_orders/domain/repositories/i_work_orders_repositories.dart';

class LoadAllWorkOrdersUseCase {
  final IWorkOrdersRepository _repository;

  LoadAllWorkOrdersUseCase(this._repository);

  Future<Either<String, List<WorkOrderEntity>>> call() async {
    try {
      final workOrders = await _repository.getAllWorkWorders();
      return Right(workOrders);
    } catch (e) {
      return const Left('Error in work orders load');
    }
  }
}
