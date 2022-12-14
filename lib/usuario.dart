class Usuario {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Usuario({required this.userId, required this.id, required this.title, required this.completed});

  factory Usuario.fromJson(Map<String, dynamic> json){ 
    return  Usuario(
    userId: json['userId'],
    id: json['id'],
    title: json['title'],
    completed: json['completed']
    );
  }
}