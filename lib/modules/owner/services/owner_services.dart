import 'dart:async';
import 'dart:convert';

import 'package:jh_flutter_mobx/services/getIt.dart';

import '../models/owner.dart';
import '../../../services/network/rest_http_services.dart';


class OwnerServices {

  Future<Owner> owner(String id) async {
    var response = await getIt<RestHttpServices>().fetch('/api/owner' + id);
    return Owner.fromJson(json.decode(response));
  }

  Future<List<Owner>> owners([var page, var size, var sort]) async {
    var data = await getIt<RestHttpServices>().fetch('/api/owners');
    return Owner.listFromString(data);
  }

  createOwner(Owner owner) async {
    
  }

  //
  updateOwner(Owner owner) async {
    
  }

  //
  deleteOwner(int id) async {
    
  }

}