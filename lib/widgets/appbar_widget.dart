

import 'package:flutter/material.dart';
import 'package:jh_flutter_mobx/services/apps_routes.dart';
import 'package:jh_flutter_mobx/utils/preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';


buildAppBar(BuildContext context, String title) {
    return AppBar(
      title: Text(title),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            SharedPreferences.getInstance().then((preference) {
              preference.setBool(Preferences.is_logged_in, false);
              Navigator.of(context).pushReplacementNamed(AppsRoutes.login);
            });
          },
          icon: Icon(
            Icons.power_settings_new,
          ),
        )
      ],
    );
  }


