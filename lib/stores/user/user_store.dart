
import 'dart:convert';
import 'package:jh_flutter_mobx/services/locator.dart';
import 'package:jh_flutter_mobx/services/navigation.dart';
import 'package:jh_flutter_mobx/services/routes.dart';
import 'package:mobx/mobx.dart';

import '../../models/user.dart';
import '../../services/helper.dart';
import '../../services/network/connection.dart';
import '../../services/user.helper.dart';
import '../../stores/error/error_store.dart';

part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore implements Store {

  _UserStore(){
    reaction((_) => userList,count);
    reaction((_) => itemDetail,setItemData);
  }

  // store for handling errors
  final ErrorStore errorStore = ErrorStore();


  // store variables:-----------------------------------------------------------
  @observable
  User itemDetail;

  @observable
  bool islistEmpty=true;

  @observable
  bool isItemEmpty=true;

  @observable
  User userProfile;

  @observable
  bool isModified=false;

  @observable
  List<User> userList ;

  @observable
  int totalUser = 0;

  @observable
  bool success = false;

  @observable
  bool loading = false;

@observable
  int id;

  @observable
  String username;

  @observable
  String firstname;

  @observable
  String lastname;

  @observable
  String email;

  @observable
  String dialogTitle = 'Update';

  @observable
  String dialogContent = 'Item has been update';


  // actions:-------------------------------------------------------------------
  @action
  void setUserId(int value) {
    id = value;
  }

  @action
  void setUsername(String value) {
    username = value;
  }

  @action
  void setFirstname(String value) {
    firstname = value;
  }

   @action
  void setLastname(String value) {
    lastname = value;
  }

  @action
  void setEmail(String value) {
    email = value;
  }


  @action
  void count(List<User> list){
    if(list != null ){
      totalUser =  list.length;
      islistEmpty = false;
      errorStore.showError = false;
    } else {
      errorStore.showError = true;
      errorStore.errorMessage = 'Data Empty';
    }
  }

  @action
  setItemData(User data ){
  
  }

  @action
  itemTapU(int position){
     print(position);
      itemDetail = userList[position];

     if(itemDetail!=null){
      isItemEmpty = false;
        
        print('>>>>>>>>   >>>>>>>>data>>>>>> $isItemEmpty >>>>>>>> $itemDetail');
       print(isItemEmpty);
     }
     locator<NavigationService>().navigateTo(Routes.userDetail);
  }

  @action
  itemTap(User data){
     locator<NavigationService>().navigateTo(Routes.userDetail);
      itemDetail = data;
  }


  @action
  add(){
    locator<NavigationService>().navigateTo(Routes.userForm);
  }

  @action
  delete(int id){

  }

  @action
  update(int id){

  }

  @action
  onDialogOk(){

  }

  @action
  onDialogCancel(){

  }

  @action
  Future getUserList() async{ 
    users().then((data)=> userList = data); 
    totalUser = userList != null ? userList.length:0;
  }

  @action
  getProfile() async {
    String profile = await restGet(API_ACCOUNT,true,false);
      setPrefs(PROFILE, profile);

      userProfile = User.fromJson(json.decode(profile));
  }

  maping(){
    return User(
              id: id,
              login: username,
              firstName: firstname,
              lastName: lastname,
              email: email,
              activated: true,
              createdBy: username,
              createdDate: instantToDate(DateTime.now()),
              langKey: "en",
              imageUrl: "",
              authorities: ['"ROLE_USER"'],
              lastModifiedBy: username,
              lastModifiedDate: instantToDate(DateTime.now())
              );
  }
}