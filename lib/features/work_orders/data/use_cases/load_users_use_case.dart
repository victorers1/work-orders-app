import 'package:dartz/dartz.dart';
import 'package:work_orders_app/features/work_orders/domain/entities/user_entity.dart';
import 'package:work_orders_app/features/work_orders/domain/repositories/i_users_repository.dart';

class LoadUsersUseCase {
  final IUsersRepository _repository;

  LoadUsersUseCase(this._repository);

  Future<Either<String, List<UserEntity>>> byIds(List<int> ids) async {
    try {
      final users = await _repository.getUsersByIds(ids);
      return Right(users);
    } catch (e) {
      return const Left('Error loading users');
    }
  }
}
