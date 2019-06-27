import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:jh_flutter_mobx/widgets/appbar_widget.dart';
import '../../stores/user/user_store.dart';
import '../../widgets/global_methods.dart';
import '../../widgets/progress_indicator_widget.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class UserList extends StatefulWidget {
  final String title;
  UserList({Key key, this.title}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {

  final _userStore = UserStore();

  @override
  void initState() {
    super.initState();
    _getUserList();
  }

  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
          // cannot be used using this form $_userStore.totalUser
          appBar: buildAppBar(context, 'User List ( ${_userStore.totalUser} )'),
          body: _buildBody(),
          floatingActionButton: FloatingActionButton(
            onPressed: _userStore.add,
            tooltip: 'Add',
            child: Icon(Icons.add),
          )
      );
  }

  _buildBody() {
    return Stack(
      children: <Widget>[
        Observer(
          builder: (context) {
            return _userStore.loading
                ? CustomProgressIndicatorWidget()
                : Material(child: _buildSlidelist());
          },
        ),
        Observer(
          name: 'error',
          builder: (context) {
            return _userStore.success
                ? Container()
                : showErrorMessage(context, _userStore.errorStore.errorMessage);
          },
        ),
        Observer(
          name: 'error',
          builder: (context) {
            return _userStore.isModified?
                AlertDialog(
                        title: Text('Delete'),
                        content: Text('Item will be deleted'),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.of(context).pop(false),
                          ),
                          FlatButton(
                            child: Text('Ok'),
                            onPressed: () => Navigator.of(context).pop(true),
                          ),
                        ],
                      ):Container();
        }),
      ],
    );
  }

  _buildSlidelist(){
    return !_userStore.islistEmpty? 
          ListView.separated(
            itemCount: _userStore.userList.length,
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemBuilder: (context, index) {
              return Slidable(
                  key: ValueKey(index),
                  actionPane: SlidableDrawerActionPane(),
                  actions: <Widget>[
                    IconSlideAction(
                      caption: 'Archive',
                      color: Colors.blue,
                      icon: Icons.archive,
                    ),
                    IconSlideAction(
                      caption: 'Share',
                      color: Colors.indigo,
                      icon: Icons.share,
                    ),
                  ],
                  secondaryActions: <Widget>[
                    IconSlideAction(
                      caption: 'More',
                      color: Colors.grey.shade200,
                      icon: Icons.more_horiz,
                    ),
                    IconSlideAction(
                      caption: 'Delete',
                      color: Colors.red,
                      icon: Icons.delete,
                      onTap: _userStore.delete(_userStore.userList[index].id),
                    ),
                  ],
                  dismissal: SlidableDismissal(
                    child: SlidableDrawerDismissal(),
                  ),
                  child: ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  '${_userStore.userList[index].firstName}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: Theme.of(context).textTheme.title,
                ),
                subtitle: Text(
                  '${_userStore.userList[index].email}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
                 onTap: (){_userStore.itemTapU(index);}
              ),
                );
            }
          ): Center(child: Text('Data empty'));
  }


  _buildListView() {
    return !_userStore.islistEmpty
        ? ListView.separated(
            itemCount: _userStore.userList.length,
            separatorBuilder: (context, position) {
              return Divider();
            },
            itemBuilder: (context, position) {
              return ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  '${_userStore.userList[position].firstName}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: Theme.of(context).textTheme.title,
                ),
                subtitle: Text(
                  '${_userStore.userList[position].email}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                ),
                 onTap: (){_userStore.itemTapU(position);}
                 //onTap://_userStore.userList[position])// () {
                  /*     Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserDetail(
                                    id: id,
                                    username: name,
                                  ))); */
                    //}
              );
            },
          )
        : Center(child: Text('No posts found'));
  }

  _getUserList(){
    _userStore.getUserList();
  }

}

