import 'package:method_repo/collection/entry.dart';
import 'package:method_repo/collection/task.dart';
import 'package:method_repo/repository.dart';
import 'package:mocktail/mocktail.dart';

class MockRepository extends Mock implements Repository {}

class MockTaskRepository extends Mock implements TaskRepository {}

class MockEntryRepository extends Mock implements EntryRepository {}
