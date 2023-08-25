class UserModel {
  UserModel({
    this.companyId,
    this.email,
    this.id,
    this.name,
    this.unitId,
  });

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      companyId: map['companyId'],
      email: map['email'],
      id: map['id'],
      name: map['name'],
      unitId: map['unitId'],
    );
  }

  final int? companyId;
  final String? email;
  final int? id;
  final String? name;
  final int? unitId;

  @override
  bool operator ==(covariant UserModel other) {
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

  @override
  String toString() {
    return 'User(companyId: $companyId, email: $email, id: $id, name: $name, unitId: $unitId)';
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'companyId': companyId,
      'email': email,
      'id': id,
      'name': name,
      'unitId': unitId,
    };
  }
}
