class UserModel {
  final String name;
  final String photoUrl;
  int score;

  UserModel({required this.name, required this.photoUrl, this.score = 0});
}
