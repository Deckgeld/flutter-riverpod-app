import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_app/config/config.dart';
import 'package:riverpod_app/domain/domain.dart';
import 'package:uuid/uuid.dart';

part 'todos_providers.g.dart';

const uuid = Uuid();
enum FilterType { all, completed, pendding }

@Riverpod(keepAlive: true)
class TodoCurrentFilter extends _$TodoCurrentFilter {
  @override
  FilterType build() => FilterType.all;

  void changeCurrentFilter(FilterType filter) {
    state = filter;
  }
}


@Riverpod(keepAlive: true)
class Todos extends _$Todos {
  @override
  List<Todo> build() => [
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: DateTime.now()),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: null),
    Todo(id: uuid.v4(), description: RandomGenerator.getRandomName(), completedAt: DateTime.now()),
  ];

  void creadTodo( String description ) {
    state = [
      ...state,
      Todo( id: uuid.v4(), description: description, completedAt: null),
    ];
  }

  void toggleCompleted( String id ) {
    state = state.map((todo) {
      if (todo.id == id) {
        return todo.copyWith(
          completedAt: todo.completedAt == null ? DateTime.now() : null,
        );
      }
      return todo;
    }).toList();
  }
}

@riverpod
List<Todo> filteredTodos(FilteredTodosRef ref) {
  final currentFilter = ref.watch( todoCurrentFilterProvider );
  final todos = ref.watch( todosProvider );

  switch (currentFilter) {
    
    case FilterType.all:
      return todos;
    case FilterType.completed:
      return todos.where((todo) => todo.completedAt != null).toList();
    case FilterType.pendding:
      return todos.where((todo) => todo.completedAt == null).toList();
  }
}