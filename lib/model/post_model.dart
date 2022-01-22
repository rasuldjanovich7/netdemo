class Post {
  int userId;
  String name;
  int salary;
  int age;
  int id;

  Post(
      {required this.userId,
      required this.name,
      required this.salary,
      required this.age,
      required this.id});

  Post.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        name = json['name'],
        salary = json['salary'],
        age = json['age'],
        id = json['id'];

  Map<String, dynamic> toJson() =>
      {'userId': userId, 'name': name, 'salary': salary, 'age': age, 'id': id};
}
