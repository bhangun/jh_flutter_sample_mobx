import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:jh_flutter_mobx/widgets/appbar_widget.dart';
import '../bloc/owner_bloc.dart';


class OwnerDetail extends StatefulWidget {
  @override
  _OwnerDetailState createState() => _OwnerDetailState();
}

class _OwnerDetailState extends State<OwnerDetail> {
  OwnerStore _ownerBloc;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
   _ownerBloc = Provider.of<OwnerStore>(context);

    return  Scaffold(
            appBar: buildAppBar(context, 'Owner Detail'),
            body: _ownerBloc.isItemEmpty
                ? Center(child: Text('Owner data are empty'))
                : ownerDetail(),
            floatingActionButton: FloatingActionButton(
              onPressed: () => _ownerBloc.update(),
              tooltip: 'Edit',
              child: Icon(Icons.edit),
            )
    );
  }

  ownerDetail() {
    return ListView(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        children: <Widget>[
          SizedBox(height: 100.0),
          Icon(Icons.person, size: 100, color: Colors.blue[500]),
          Column(children: <Widget>[
            Text(_ownerBloc.itemDetail.name),
          ])
        ]);
  }
}