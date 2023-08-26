import 'package:get/get.dart';
import 'package:work_orders_app/features/work_orders/data/use_cases/load_users_use_case.dart';
import 'package:work_orders_app/features/work_orders/domain/entities/user_entity.dart';
import 'package:work_orders_app/features/work_orders/domain/entities/work_order_entity.dart';

class WorkOrderViewController extends GetxController {
  final LoadUsersUseCase _loadUsersUseCase;
  WorkOrderViewController(LoadUsersUseCase loadUsersUseCase)
      : _loadUsersUseCase = loadUsersUseCase;

  late WorkOrderEntity workOrder;

  final List<UserEntity> assignees = [];
  bool isLoadingAssignees = false;

  @override
  void onInit() {
    super.onInit();
    workOrder = Get.arguments['workOrder'];

    _loadAssignees(workOrder.assignedUserIds);
  }

  Future _loadAssignees(List<int> ids) async {
    isLoadingAssignees = true;
    update();
    final result = await _loadUsersUseCase.byIds(ids);

    result.fold((l) => null, (r) {
      assignees.clear();
      assignees.addAll(r);
    });
    isLoadingAssignees = false;
    update();
  }
}
