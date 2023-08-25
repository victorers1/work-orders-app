import 'package:work_orders_app/features/work_orders/domain/entities/user_entity.dart';

abstract class IUsersRepository {
  Future<List<UserEntity>> getUsersByIds(List<int> ids);
}
