import 'package:get/get.dart';
import 'package:work_orders_app/features/assets/domain/entities/asset_entity.dart';
import 'package:work_orders_app/features/assets/domain/use_cases/load_all_assets_use_case.dart';

class AssetsListController extends GetxController {
  final LoadAllAssetsUseCase loadAllAssetsUseCase;

  AssetsListController(this.loadAllAssetsUseCase);

  final List<AssetEntity> assets = [];
  bool isLoadingAssets = false;

  @override
  void onReady() {
    super.onReady();
    _loadAllAssets();
  }

  Future _loadAllAssets() async {
    isLoadingAssets = true;
    update();

    final result = await loadAllAssetsUseCase();

    result.fold((l) => null, (r) {
      assets.clear();
      assets.addAll(r);
    });
    isLoadingAssets = false;
    update();
  }
}
