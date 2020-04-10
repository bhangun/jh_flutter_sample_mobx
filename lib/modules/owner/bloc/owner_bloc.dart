import 'package:jh_flutter_mobx/modules/owner/services/owner_routes.dart';
import 'package:jh_flutter_mobx/modules/owner/services/owner_services.dart';
import 'package:jh_flutter_mobx/modules/owner/models/owner.dart';
import 'package:jh_flutter_mobx/services/getIt.dart';
import 'package:jh_flutter_mobx/services/navigation.dart';
import 'package:mobx/mobx.dart';

part 'owner_bloc.g.dart';

class OwnerStore = _OwnerStore with _$OwnerStore;


abstract class _OwnerStore with Store {

  @observable
  bool isListEmpty = true;

  bool isItemEmpty = true;

  bool isUpdated = false;

  bool isDeleted = false;

  String errorMessage='error';

  bool showError = false;

  String title = '';


  int totalItem = 0;

  bool success = false;

  bool loading = false;

  int position = 0;


  Owner itemDetail;

  List<Owner> ownerList;
  
    int id;
    String name;


  // actions:-------------------------------------------------------------------

  String get formTitle => isUpdated? title='Update Owner':'Create Owner'; 
    void setId( value) {
      id = value;
    }
    void setName( value) {
      name = value;
    }

  itemTap(int _position) {
    try {
      position = _position;
      itemDetail = ownerList[position];
      isItemEmpty = false;
      getIt<NavigationServices>().navigateTo(OwnerRoutes.ownerDetail);

    } catch (e) {
      isItemEmpty = true;
    }
  }

  add() {
    itemDetail = null;
    isUpdated = false;
    getIt<NavigationServices>().navigateTo(OwnerRoutes.ownerForm);
  }

  save() {
    loading = true;
    success = false;
    try {
      isUpdated ? getIt<OwnerServices>().updateOwner(_toOwner())
          :getIt<OwnerServices>().createOwner(_toOwner());
      getIt<NavigationServices>().navigateTo(OwnerRoutes.ownerList);
      loading = false;
      success = true;
      getOwnerList();
    }catch(e){
      print(e.toString());
    }
  }

  delete(int id) {
    loading = true;
    success = false;
    try {
      getIt<OwnerServices>().deleteOwner(id);
      isDeleted =true;
      loading = false;
      success = true;
      getOwnerList();
    }catch(e){
      print(e.toString());
    }
  }

  update() {
    loading = true;
    success = false;
    try {
      getIt<NavigationServices>().navigateTo(OwnerRoutes.ownerForm);
      isUpdated = true;
      loading = false;
      success = true;
      getOwnerList();
    }catch(e){
      print(e.toString());
    }
  }

  Future getOwnerList() async {
    loading = true;
    success = false;
    isListEmpty = true;
    try {
      getIt<OwnerServices>().owners().then((data) => _setOwnerList(data));
      isListEmpty = false;
      loading = false;
      success = true;
    } catch (e) {
      showError = true;
      errorMessage = 'Data Empty';
      print(e.toString());
    }

  }

  _setOwnerList(List<Owner> data){
    if (data != null) {
      ownerList = data;
      totalItem = data.length;
    }
  }

  Owner _toOwner() {
    return Owner(
    id: isUpdated ? itemDetail.id : '',
    name: name, );
  }

  viewList() {
    getOwnerList();
    getIt<NavigationServices>().navigateTo(OwnerRoutes.ownerList);
  }
}
