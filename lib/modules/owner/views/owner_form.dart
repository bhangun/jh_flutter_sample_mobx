import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:jh_flutter_mobx/widgets/global_methods.dart';
import 'package:jh_flutter_mobx/widgets/progress_indicator_widget.dart';

import '../bloc/owner_bloc.dart';
import '../models/owner.dart';

class OwnerForm extends StatefulWidget {
  final Owner data;
  OwnerForm({this.data});
  @override
  _OwnerFormState createState() => _OwnerFormState();
}

class _OwnerFormState extends State<OwnerForm> {
  
  final _name = TextEditingController();

  OwnerStore _ownerBloc;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    _name.addListener(() {
      _ownerBloc.setName(_name.text);
    }); 

    return   Scaffold(
            appBar: AppBar(
              title: Text(_ownerBloc.formTitle),
            ),
            body: _buildBody(),
            floatingActionButton: FloatingActionButton(
              onPressed: () => _ownerBloc.save(),
              tooltip: 'Add',
              child: Icon(Icons.save),
            )
    );
  }

  _buildBody() {
    return Stack(
      children: <Widget>[
        _ownerBloc.loading
            ? CustomProgressIndicatorWidget()
            : Material(child: _buildForm()),
        _ownerBloc.showError
            ? showErrorMessage(context, '') :Container()
        //_ownerBloc.isModified ? KutAlert() : Container(),
      ],
    );
  }

  _buildForm() {
    return SafeArea(
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: _buildListChild()));
  }

  _buildListChild() {
    return <Widget>[
      SizedBox(height: 120.0),
      TextField(
        controller: _name,
        decoration: InputDecoration(
          filled: true,
          labelText: 'Name',
        ),
      ),
      
    ];
  }
}
