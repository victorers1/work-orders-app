import 'package:work_orders_app/features/assets/data/data_sources/assets_data_source.dart';
import 'package:work_orders_app/features/assets/domain/entities/asset_entity.dart';
import 'package:work_orders_app/features/assets/domain/repositories/i_assets_repositories.dart';

class AssetsRepository implements IAssetsRepository {
  final AssetsDataSource _dataSource;

  AssetsRepository(this._dataSource);

  @override
  Future<List<AssetEntity>> loadAllAssets() => _dataSource.loadAllAssets();
}
