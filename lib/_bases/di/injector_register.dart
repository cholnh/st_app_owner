import 'dart:developer';

import 'package:injector/injector.dart';
import 'package:stappowner/_bases/initalizer/initializer.dart';
import 'package:stappowner/_bases/network/api/api.dart';
import 'package:stappowner/_bases/network/repository/authorization_repository.dart';
import 'package:stappowner/_bases/network/repository/resource_repository.dart';

class InjectorRegister {

  static register() {
    try {
      log('start injector register', name: 'InjectorRegister.register', time: DateTime.now());
      Injector.appInstance

      /// A singleton OauthTokenRepository provider.
      ///
      /// Calling it multiple times will return the same instance.
//        ..registerSingleton<Router>
//          ((_) => Router())


      /// A singleton OauthTokenRepository provider.
      ///
      /// Calling it multiple times will return the same instance.
//        ..registerSingleton<AppRouter>
//          ((injector) {
//          AppRouter router = AppRouter();
//          router.configureRoutes();
//          return router;
//        })


      /// A singleton OauthTokenRepository provider.
      ///
      /// Calling it multiple times will return the same instance.
        ..registerSingleton<OauthTokenRepository>
          ((_) => OauthTokenRepository())


      /// A singleton ResourceRepository provider.
      ///
      /// Calling it multiple times will return the same instance.
        ..registerSingleton<ResourceRepository>
          ((injector) => ResourceRepository(
            oauthTokenRepository: injector.getDependency<OauthTokenRepository>()
        ))


      /// A singleton NetworkService provider.
      ///
      /// Calling it multiple times will return the same instance.
        ..registerDependency<Api>
          ((injector) => Api(
            oauthTokenRepository: injector.getDependency<OauthTokenRepository>(),
            resourceRepository: injector.getDependency<ResourceRepository>()
        ))


      /// A singleton Initializer provider.
      ///
      /// Calling it multiple times will return the same instance.
        ..registerDependency<Initializer>
          ((injector) => Initializer(
            api: injector.getDependency<Api>()
        ));


      log('success', name: 'InjectorRegister.register', time: DateTime.now());
    } catch (error) {
      log('fail', name: 'InjectorRegister.register', time: DateTime.now(), error: error);
    }
  }
}