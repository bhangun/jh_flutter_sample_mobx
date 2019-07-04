import 'package:mobx/mobx.dart';

part 'error_store.g.dart';

class ErrorStore = _ErrorBloc with _$ErrorStore;

abstract class _ErrorBloc implements Store {

  // store variables:-----------------------------------------------------------
  @observable
  String errorMessage;

  @observable
  bool showError = false;
}