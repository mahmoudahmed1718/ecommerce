class ProfileEntity {
  final String name;
  final String email;
  final String newPassword;
  final String currentPassword;

  ProfileEntity({
    required this.currentPassword,
    required this.name,
    required this.email,
    required this.newPassword,
  });
}
