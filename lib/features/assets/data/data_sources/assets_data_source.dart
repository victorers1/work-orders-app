import 'package:dio/dio.dart';
import 'package:work_orders_app/features/assets/data/models/asset_model.dart';
import 'package:work_orders_app/features/assets/domain/entities/asset_entity.dart';

class AssetsDataSource {
  final Dio _dio;

  AssetsDataSource(this._dio);

  Future<List<AssetEntity>> loadAllAssets() async {
    final result = await _dio.get('assets');

    return (result.data as List?)
            ?.map((e) => AssetEntity.fromModel(AssetModel.fromJson(e)))
            .toList() ??
        [];
  }
}
