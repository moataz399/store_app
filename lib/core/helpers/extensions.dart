import 'package:flutter/material.dart';
import 'package:store_app/core/language/app_localizations.dart';
import 'package:store_app/core/style/theme/color_extension.dart';

extension Navigation on BuildContext {


  MyColors get color => Theme.of(this).extension<MyColors>()!;

  //Language
  String translate(String langKey) {
    return AppLocalizations.of(this)!.translate(langKey).toString();
  }

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {required RoutePredicate predicate, Object? arguments,}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}
