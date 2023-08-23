import 'package:get/get.dart';
import 'package:work_orders_app/features/work_orders/data/use_cases/load_work_orders_use_case.dart';
import 'package:work_orders_app/features/work_orders/domain/entities/work_order_entity.dart';

class WorkOrdersListController extends GetxController {
  final LoadAllWorkOrdersUseCase _loadWorkOrdersUseCase;

  WorkOrdersListController(
    LoadAllWorkOrdersUseCase loadWorkOrdersUseCase,
  ) : _loadWorkOrdersUseCase = loadWorkOrdersUseCase;

  List<WorkOrderEntity> workOrders = [];
  bool isLoading = false;

  @override
  void onReady() async {
    super.onReady();

    await _loadAllWorkOrders();
  }

  Future<void> _loadAllWorkOrders() async {
    isLoading = true;
    update();

    final result = await _loadWorkOrdersUseCase();
    result.fold((l) => null, (r) => workOrders = r);
    isLoading = false;
    update();
  }
}
