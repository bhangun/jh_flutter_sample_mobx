import 'package:provider/provider.dart';

import 'package:jh_flutter_mobx/models/module.dart';
import 'package:jh_flutter_mobx/modules/owner/services/owner_routes.dart';
import 'package:jh_flutter_mobx/services/getIt.dart';
import 'package:jh_flutter_mobx/utils/routes.dart';

import 'bloc/owner_bloc.dart';
import 'services/owner_services.dart';

class OwnerModule implements Module {
  @override
  String name = 'Owner';

  @override
  pages() {
    return [
      Page(title: 'Owner Detail', route: OwnerRoutes.ownerDetail),
      Page(title: 'Owner Form', route: OwnerRoutes.ownerForm),
      Page(
          title: 'Owner List',
          route: OwnerRoutes.ownerList,
          showInDrawer: true,
          showInHome: true)
    ];
  }

  @override
  services() {
    getIt.registerFactory<OwnerServices>(() => OwnerServices());
  }

  @override
  routes() {
    getIt<Routes>().addRoutes(OwnerRoutes.routes);
  }

  @override
  providers() {
    return [
      
    ];
  }
}
