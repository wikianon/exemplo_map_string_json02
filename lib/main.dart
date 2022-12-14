import 'dart:convert';
import 'usuario.dart';
//https://pastebin.com/W4NPCAz5
//https://pt.stackoverflow.com/questions/571532/mapeando-objetos-json-em-flutter/571849#571849

void main() async{

  const String jsonData = """
     [
      {
        "userId": 1,
        "id": 1,
        "title": "delectus aut autem",
        "completed": false
      },
      {
        "userId": 1,
        "id": 2,
        "title": "quis ut nam facilis et officia qui",
        "completed": false
      },
      {
        "userId": 1,
        "id": 3,
        "title": "fugiat veniam minus",
        "completed": false
      }
    ]
    """;

  // Transforma o JSON numa lista de Maps que o Flutter entende.
  final listaRaw = jsonDecode(jsonData) as List;
  
  // Transforma a lista de Maps em uma lista do tipo da sua classe Usuario
  final List<Usuario> listaDeTodos = listaRaw.map((item) => Usuario.fromJson(item)).toList();
  
  // Para passar item a item
  //for (final element in listaDeTodos) {
    //print("UserId: ${element.userId}\nId: ${element.id}\nTítulo: ${element.title}\nCompleted: ${element.completed}");
  //}
  
  // Para passar item a item desta forma tambem da certo.
  listaDeTodos.forEach((todos){
   print("UserId: ${todos.userId}\nId: ${todos.id}\nTítulo: ${todos.title}\nCompleted: ${todos.completed}");
  });

  //Para printar um item em específico
  //print("\nTítulo do item 1: " + listaDeTodos[1].title); 
}
