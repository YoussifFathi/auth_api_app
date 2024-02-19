class UserModel {
  final String id;
  final String email;
  final String name;
  final String role;
  final int iat;

  UserModel(
      {required this.id,
      required this.email,
      required this.name,
      required this.role,
      required this.iat});

  factory UserModel.fromJson(jsonData) {
    return UserModel(
      id: jsonData['id'],
      email: jsonData['email'],
      name: jsonData['name'],
      role: jsonData['role'],
      iat: jsonData['iat'],
    );
  }
}

// {id: 659808df99ac2658832e376a, email: happytech.mohammedsaeed@gmail.com, name: HappyTech, role: user, iat: 1708345306}
