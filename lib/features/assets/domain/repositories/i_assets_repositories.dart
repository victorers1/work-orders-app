import 'package:work_orders_app/features/assets/domain/entities/asset_entity.dart';

abstract class IAssetsRepository {
  Future<List<AssetEntity>> loadAllAssets();
}
