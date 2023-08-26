import 'package:dartz/dartz.dart';
import 'package:work_orders_app/features/assets/domain/entities/asset_entity.dart';
import 'package:work_orders_app/features/assets/domain/repositories/i_assets_repositories.dart';

class LoadAllAssetsUseCase {
  final IAssetsRepository _repository;

  const LoadAllAssetsUseCase(this._repository);

  Future<Either<String, List<AssetEntity>>> call() async {
    try {
      final assets = await _repository.loadAllAssets();
      return Right(assets);
    } catch (e) {
      return const Left('Erro loading assets');
    }
  }
}
