import 'package:work_orders_app/features/work_orders/data/data_sources/users_data_source.dart';
import 'package:work_orders_app/features/work_orders/domain/entities/user_entity.dart';
import 'package:work_orders_app/features/work_orders/domain/repositories/i_users_repository.dart';

class UsersRepository implements IUsersRepository {
  final FakeUsersDataSource _dataSource;

  UsersRepository(this._dataSource);

  @override
  Future<List<UserEntity>> getUsersByIds(List<int> ids) async {
    return _dataSource.loadUsersByIds(ids);
  }
}
