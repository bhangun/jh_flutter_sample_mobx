// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$UserStore on _UserBloc, Store {
  Computed<User> _$userDetailComputed;

  @override
  User get userDetail =>
      (_$userDetailComputed ??= Computed<User>(() => super.userDetail)).value;

  final _$itemDetailAtom = Atom(name: '_UserBloc.itemDetail');

  @override
  User get itemDetail {
    _$itemDetailAtom.reportObserved();
    return super.itemDetail;
  }

  @override
  set itemDetail(User value) {
    _$itemDetailAtom.context
        .checkIfStateModificationsAreAllowed(_$itemDetailAtom);
    super.itemDetail = value;
    _$itemDetailAtom.reportChanged();
  }

  final _$islistEmptyAtom = Atom(name: '_UserBloc.islistEmpty');

  @override
  bool get islistEmpty {
    _$islistEmptyAtom.reportObserved();
    return super.islistEmpty;
  }

  @override
  set islistEmpty(bool value) {
    _$islistEmptyAtom.context
        .checkIfStateModificationsAreAllowed(_$islistEmptyAtom);
    super.islistEmpty = value;
    _$islistEmptyAtom.reportChanged();
  }

  final _$isItemEmptyAtom = Atom(name: '_UserBloc.isItemEmpty');

  @override
  bool get isItemEmpty {
    _$isItemEmptyAtom.reportObserved();
    return super.isItemEmpty;
  }

  @override
  set isItemEmpty(bool value) {
    _$isItemEmptyAtom.context
        .checkIfStateModificationsAreAllowed(_$isItemEmptyAtom);
    super.isItemEmpty = value;
    _$isItemEmptyAtom.reportChanged();
  }

  final _$userProfileAtom = Atom(name: '_UserBloc.userProfile');

  @override
  User get userProfile {
    _$userProfileAtom.reportObserved();
    return super.userProfile;
  }

  @override
  set userProfile(User value) {
    _$userProfileAtom.context
        .checkIfStateModificationsAreAllowed(_$userProfileAtom);
    super.userProfile = value;
    _$userProfileAtom.reportChanged();
  }

  final _$personAtom = Atom(name: '_UserBloc.person');

  @override
  User get person {
    _$personAtom.reportObserved();
    return super.person;
  }

  @override
  set person(User value) {
    _$personAtom.context.checkIfStateModificationsAreAllowed(_$personAtom);
    super.person = value;
    _$personAtom.reportChanged();
  }

  final _$isModifiedAtom = Atom(name: '_UserBloc.isModified');

  @override
  bool get isModified {
    _$isModifiedAtom.reportObserved();
    return super.isModified;
  }

  @override
  set isModified(bool value) {
    _$isModifiedAtom.context
        .checkIfStateModificationsAreAllowed(_$isModifiedAtom);
    super.isModified = value;
    _$isModifiedAtom.reportChanged();
  }

  final _$userListAtom = Atom(name: '_UserBloc.userList');

  @override
  List<User> get userList {
    _$userListAtom.reportObserved();
    return super.userList;
  }

  @override
  set userList(List<User> value) {
    _$userListAtom.context.checkIfStateModificationsAreAllowed(_$userListAtom);
    super.userList = value;
    _$userListAtom.reportChanged();
  }

  final _$totalUserAtom = Atom(name: '_UserBloc.totalUser');

  @override
  int get totalUser {
    _$totalUserAtom.reportObserved();
    return super.totalUser;
  }

  @override
  set totalUser(int value) {
    _$totalUserAtom.context
        .checkIfStateModificationsAreAllowed(_$totalUserAtom);
    super.totalUser = value;
    _$totalUserAtom.reportChanged();
  }

  final _$successAtom = Atom(name: '_UserBloc.success');

  @override
  bool get success {
    _$successAtom.reportObserved();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.context.checkIfStateModificationsAreAllowed(_$successAtom);
    super.success = value;
    _$successAtom.reportChanged();
  }

  final _$loadingAtom = Atom(name: '_UserBloc.loading');

  @override
  bool get loading {
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.checkIfStateModificationsAreAllowed(_$loadingAtom);
    super.loading = value;
    _$loadingAtom.reportChanged();
  }

  final _$idAtom = Atom(name: '_UserBloc.id');

  @override
  int get id {
    _$idAtom.reportObserved();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.context.checkIfStateModificationsAreAllowed(_$idAtom);
    super.id = value;
    _$idAtom.reportChanged();
  }

  final _$usernameAtom = Atom(name: '_UserBloc.username');

  @override
  String get username {
    _$usernameAtom.reportObserved();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.context.checkIfStateModificationsAreAllowed(_$usernameAtom);
    super.username = value;
    _$usernameAtom.reportChanged();
  }

  final _$firstnameAtom = Atom(name: '_UserBloc.firstname');

  @override
  String get firstname {
    _$firstnameAtom.reportObserved();
    return super.firstname;
  }

  @override
  set firstname(String value) {
    _$firstnameAtom.context
        .checkIfStateModificationsAreAllowed(_$firstnameAtom);
    super.firstname = value;
    _$firstnameAtom.reportChanged();
  }

  final _$lastnameAtom = Atom(name: '_UserBloc.lastname');

  @override
  String get lastname {
    _$lastnameAtom.reportObserved();
    return super.lastname;
  }

  @override
  set lastname(String value) {
    _$lastnameAtom.context.checkIfStateModificationsAreAllowed(_$lastnameAtom);
    super.lastname = value;
    _$lastnameAtom.reportChanged();
  }

  final _$emailAtom = Atom(name: '_UserBloc.email');

  @override
  String get email {
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.checkIfStateModificationsAreAllowed(_$emailAtom);
    super.email = value;
    _$emailAtom.reportChanged();
  }

  final _$activatedAtom = Atom(name: '_UserBloc.activated');

  @override
  String get activated {
    _$activatedAtom.reportObserved();
    return super.activated;
  }

  @override
  set activated(String value) {
    _$activatedAtom.context
        .checkIfStateModificationsAreAllowed(_$activatedAtom);
    super.activated = value;
    _$activatedAtom.reportChanged();
  }

  final _$profileAtom = Atom(name: '_UserBloc.profile');

  @override
  String get profile {
    _$profileAtom.reportObserved();
    return super.profile;
  }

  @override
  set profile(String value) {
    _$profileAtom.context.checkIfStateModificationsAreAllowed(_$profileAtom);
    super.profile = value;
    _$profileAtom.reportChanged();
  }

  final _$positionAtom = Atom(name: '_UserBloc.position');

  @override
  int get position {
    _$positionAtom.reportObserved();
    return super.position;
  }

  @override
  set position(int value) {
    _$positionAtom.context.checkIfStateModificationsAreAllowed(_$positionAtom);
    super.position = value;
    _$positionAtom.reportChanged();
  }

  final _$getUserListAsyncAction = AsyncAction('getUserList');

  @override
  Future<dynamic> getUserList() {
    return _$getUserListAsyncAction.run(() => super.getUserList());
  }

  final _$getProfileAsyncAction = AsyncAction('getProfile');

  @override
  Future getProfile() {
    return _$getProfileAsyncAction.run(() => super.getProfile());
  }

  final _$_UserBlocActionController = ActionController(name: '_UserBloc');

  @override
  void setUserId(int value) {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.setUserId(value);
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUsername(String value) {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.setUsername(value);
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFirstname(String value) {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.setFirstname(value);
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLastname(String value) {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.setLastname(value);
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.setEmail(value);
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setActivated(String value) {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.setActivated(value);
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setProfile(String value) {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.setProfile(value);
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  void count(List<User> list) {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.count(list);
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setItemData(int data) {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.setItemData(data);
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic itemTapU(int _position) {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.itemTapU(_position);
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic itemTap(User data) {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.itemTap(data);
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic add() {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.add();
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic save() {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.save();
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic delete(String userid) {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.delete(userid);
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic update(int id) {
    final _$actionInfo = _$_UserBlocActionController.startAction();
    try {
      return super.update(id);
    } finally {
      _$_UserBlocActionController.endAction(_$actionInfo);
    }
  }
}
