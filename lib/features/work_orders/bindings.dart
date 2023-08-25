import 'package:get/get.dart';
import 'package:work_orders_app/features/work_orders/data/data_sources/users_data_source.dart';
import 'package:work_orders_app/features/work_orders/data/data_sources/work_orders_data_source.dart';
import 'package:work_orders_app/features/work_orders/data/repositories/users_repository.dart';
import 'package:work_orders_app/features/work_orders/data/repositories/work_orders_repository.dart';
import 'package:work_orders_app/features/work_orders/data/use_cases/load_users_use_case.dart';
import 'package:work_orders_app/features/work_orders/data/use_cases/load_all_work_orders_use_case.dart';
import 'package:work_orders_app/features/work_orders/domain/repositories/i_users_repository.dart';
import 'package:work_orders_app/features/work_orders/domain/repositories/i_work_orders_repository.dart';
import 'package:work_orders_app/features/work_orders/presentation/pages/work_order_view/work_order_view_controller.dart';
import 'package:work_orders_app/features/work_orders/presentation/pages/work_orders_list/work_orders_list_controller.dart';

class WorkOrdersBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FakeWorkOrdersDataSource(Get.find(tag: 'fake-api')));
    Get.lazyPut(() => FakeUsersDataSource(Get.find(tag: 'fake-api')));

    Get.lazyPut<IWorkOrdersRepository>(() => WorkOrdersRepository(Get.find()));
    Get.lazyPut<IUsersRepository>(() => UsersRepository(Get.find()));

    Get.lazyPut(() => LoadAllWorkOrdersUseCase(Get.find()));
    Get.lazyPut(() => LoadUsersUseCase(Get.find()));

    Get
      ..lazyPut(() => WorkOrdersListController(Get.find()))
      ..lazyPut(() => WorkOrderViewController(Get.find()));
  }
}
