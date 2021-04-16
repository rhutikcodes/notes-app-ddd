// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../notes/notes_page.dart' as _i4;
import '../sign_in/sign_in_page.dart' as _i3;
import '../splash/splash_page.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i2.SplashPage());
    },
    SignInRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i3.SignInPage());
    },
    NotesRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.NotesPage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: 'SignIn'),
        _i1.RouteConfig(NotesRoute.name, path: '/notes-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: 'SignIn');

  static const String name = 'SignInRoute';
}

class NotesRoute extends _i1.PageRouteInfo {
  const NotesRoute() : super(name, path: '/notes-page');

  static const String name = 'NotesRoute';
}
