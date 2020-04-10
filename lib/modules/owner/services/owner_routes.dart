import 'package:flutter/material.dart';

import '../views/owner_list.dart';
import '../views/owner_detail.dart';
import '../views/owner_form.dart';

class OwnerRoutes {

  OwnerRoutes._();

  static const String ownerList = '/ownerList';
  static const String ownerDetail = '/ownerDetail';
  static const String ownerForm = '/ownerForm';

  static final routes = <String, WidgetBuilder>{
    ownerList: (BuildContext context) => OwnerList(),
    ownerDetail: (BuildContext context) => OwnerDetail(),
    ownerForm: (BuildContext context) => OwnerForm(),
  };
}

