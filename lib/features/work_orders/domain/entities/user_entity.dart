import 'package:work_orders_app/features/work_orders/data/models/user_model.dart';

class UserEntity {
  final int companyId;
  final String email;
  final int id;
  final String name;
  final int unitId;

  UserEntity({
    required this.companyId,
    required this.email,
    required this.id,
    required this.name,
    required this.unitId,
  });

  factory UserEntity.fromModel(UserModel model) {
    return UserEntity(
      companyId: model.companyId ?? 0,
      email: model.email ?? '',
      id: model.id ?? 0,
      name: model.name ?? '',
      unitId: model.unitId ?? 0,
    );
  }

  @override
  String toString() {
    return 'User(companyId: $companyId, email: $email, id: $id, name: $name, unitId: $unitId)';
  }

  @override
  bool operator ==(covariant UserEntity other) {
    if (identical(this, other)) return true;

    return other.companyId == companyId &&
        other.email == email &&
        other.id == id &&
        other.name == name &&
        other.unitId == unitId;
  }

  @override
  int get hashCode {
    return companyId.hashCode ^
        email.hashCode ^
        id.hashCode ^
        name.hashCode ^
        unitId.hashCode;
  }
}
