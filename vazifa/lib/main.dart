import 'package:flutter/widgets.dart';
import 'package:flutter_todos/app/app.dart';
import 'package:local_storage_todos_api/local_storage_todos_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todos_repository/todos_repository.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App(
      todosRepository: TodosRepository(
          todosApi: LocalStorageTodosApi(
              plugin: await SharedPreferences.getInstance()))));
}
