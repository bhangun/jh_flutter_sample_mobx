// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$AppStore on _AppBloc, Store {
  Computed<ThemeData> _$themeComputed;

  @override
  ThemeData get theme =>
      (_$themeComputed ??= Computed<ThemeData>(() => super.theme)).value;
  Computed<bool> _$wthemeComputed;

  @override
  bool get wtheme =>
      (_$wthemeComputed ??= Computed<bool>(() => super.wtheme)).value;

  final _$isLightThemeAtom = Atom(name: '_AppBloc.isLightTheme');

  @override
  bool get isLightTheme {
    _$isLightThemeAtom.reportObserved();
    return super.isLightTheme;
  }

  @override
  set isLightTheme(bool value) {
    _$isLightThemeAtom.context
        .checkIfStateModificationsAreAllowed(_$isLightThemeAtom);
    super.isLightTheme = value;
    _$isLightThemeAtom.reportChanged();
  }

  final _$_AppBlocActionController = ActionController(name: '_AppBloc');

  @override
  void count(bool b) {
    final _$actionInfo = _$_AppBlocActionController.startAction();
    try {
      return super.count(b);
    } finally {
      _$_AppBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic switchToDark() {
    final _$actionInfo = _$_AppBlocActionController.startAction();
    try {
      return super.switchToDark();
    } finally {
      _$_AppBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic switchToLight() {
    final _$actionInfo = _$_AppBlocActionController.startAction();
    try {
      return super.switchToLight();
    } finally {
      _$_AppBlocActionController.endAction(_$actionInfo);
    }
  }
}
