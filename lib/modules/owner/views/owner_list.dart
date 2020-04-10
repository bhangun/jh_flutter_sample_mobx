import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:jh_flutter_mobx/modules/owner/models/owner.dart';
import 'package:provider/provider.dart';

import 'package:jh_flutter_mobx/modules/owner/bloc/owner_bloc.dart';
import 'package:jh_flutter_mobx/widgets/appbar_widget.dart';
import 'package:jh_flutter_mobx/widgets/progress_indicator_widget.dart';


class OwnerList extends StatefulWidget {

  @override
  _OwnerListState createState() => _OwnerListState();
}

final String title = "Owner List";

class _OwnerListState extends State<OwnerList> {
  final _listKey = GlobalKey<ScaffoldState>();
  List<Owner> _ownerList;
  OwnerStore _ownerBloc;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    _ownerBloc.getOwnerList();

    int _totalOwner = _ownerBloc.totalItem;
    _ownerList = _ownerBloc.ownerList;

    return  Scaffold(
          key: _listKey,
          appBar: buildAppBar(context, 'Owner List ( $_totalOwner )'),
          body: _buildBody(context),
          floatingActionButton: FloatingActionButton(
            onPressed: _ownerBloc.add,
            tooltip: 'Add',
            child: Icon(Icons.add),
        )
    );
  }

  _buildBody(BuildContext context) {
    return Stack(
      children: <Widget>[
        _ownerBloc.loading
            ? CustomProgressIndicatorWidget()
            : Material(child: _buildSlidelist(context)),
      ],
    );
  }

  _buildSlidelist(BuildContext context) {
    return !_ownerBloc.isListEmpty
        ? ListView.separated(
            itemCount: _ownerBloc.totalItem,
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemBuilder: (context, index) {
              return Slidable(
                key: ValueKey(index),
                actionPane: SlidableDrawerActionPane(),
                actions: <Widget>[
                  IconSlideAction(
                    caption: 'Share',
                    color: Colors.indigo,
                    icon: Icons.share,
                  ),
                ],
                secondaryActions: <Widget>[
                  IconSlideAction(
                    caption: 'Delete',
                    color: Colors.red,
                    icon: Icons.delete,
                    onTap: () =>
                        _ownerBloc.delete(_ownerBloc.ownerList[index].id),
                  ),
                ],
                dismissal: SlidableDismissal(
                  child: SlidableDrawerDismissal(),
                ),
                child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text(
                      '${_ownerList[index].name}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text(
                      '${_ownerList[index].id} ',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                    onTap: () => _ownerBloc.itemTap(index)),
              );
            })
        : Center(child: Text('Data empty'));
  }
}