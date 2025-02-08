import 'package:args/args.dart';

abstract class CommandInterface {
  Future<void> handleAddCommand(ArgResults command);
  Future<void> handleInitCommand(ArgResults command);
  Future<void> handleSearchCommand(ArgResults command);
  Future<void> handleListCommand();
  Future<void> handleUpdateCommand();
}
