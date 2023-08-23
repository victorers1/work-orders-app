import 'package:get/get.dart';
import 'package:work_orders_app/features/work_orders/data/data_sources/work_orders_data_source.dart';
import 'package:work_orders_app/features/work_orders/data/repositories/work_orders_repository.dart';
import 'package:work_orders_app/features/work_orders/data/use_cases/load_work_orders_use_case.dart';
import 'package:work_orders_app/features/work_orders/domain/repositories/i_work_orders_repositories.dart';
import 'package:work_orders_app/features/work_orders/presentation/pages/work_orders_list/work_orders_list_controller.dart';

class WorkOrdersBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WorkOrdersDataSource(Get.find()));

    Get.lazyPut<IWorkOrdersRepository>(() => WorkOrdersRepository(Get.find()));

    Get.lazyPut(() => LoadAllWorkOrdersUseCase(Get.find()));

    Get.lazyPut(() => WorkOrdersListController(Get.find()));
  }
}
