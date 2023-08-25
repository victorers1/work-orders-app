import 'package:dio/dio.dart';
import 'package:work_orders_app/features/work_orders/data/models/user_model.dart';
import 'package:work_orders_app/features/work_orders/domain/entities/user_entity.dart';

class FakeUsersDataSource {
  final Dio _dio;

  FakeUsersDataSource(this._dio);

  Future<List<UserEntity>> loadUsersByIds(List<int> ids) {
    return Future.wait(ids.map((id) => loadUserById(id)));
  }

  Future<UserEntity> loadUserById(int id) async {
    final result = await _dio.get('users/$id');

    return UserEntity.fromModel(UserModel.fromJson(result.data));
  }
}
