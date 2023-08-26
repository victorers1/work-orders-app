import 'package:get/get.dart';
import 'package:work_orders_app/features/assets/data/data_sources/assets_data_source.dart';
import 'package:work_orders_app/features/assets/data/repositories/assets_repositories.dart';
import 'package:work_orders_app/features/assets/domain/repositories/i_assets_repositories.dart';
import 'package:work_orders_app/features/assets/domain/use_cases/load_all_assets_use_case.dart';
import 'package:work_orders_app/features/assets/presentation/pages/assets_list/assets_list_controller.dart';

class AssetsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AssetsDataSource(Get.find(tag: 'fake-api')));

    Get.lazyPut<IAssetsRepository>(() => AssetsRepository(Get.find()));

    Get.lazyPut(() => LoadAllAssetsUseCase(Get.find()));

    Get.lazyPut(() => AssetsListController(Get.find()));
  }
}
