// qajet/lib/app/di/app_scope.dart

import 'package:api/api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:stock_investment_app/shared/app_config.dart';
import 'package:yx_scope/yx_scope.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

class AppScopeContainer extends ScopeContainer {
  @override
  List<Set<AsyncDep>> get initializeQueue => [];

  late final apiModule = ApiScopeModule(this);
}

class AppScopeHolder extends ScopeHolder<AppScopeContainer> {
  @protected
  @override
  AppScopeContainer createContainer() => AppScopeContainer();
}

extension AppScopeExtension on BuildContext {
  AppScopeContainer get appScope => ScopeProvider.of<AppScopeContainer>(this)!;
}

class ApiScopeModule extends ScopeModule<AppScopeContainer> {
  ApiScopeModule(super.container);

  late final apiDep = dep(() => Api(dioDep.get, baseUrl: AppConfig.domain));

  late final Dep<Dio> dioDep = dep(
    () => Dio(BaseOptions(headers: {'Content-Type': 'application/json'}))
      ..interceptors.addAll(
        [
          ...AppConfig.dioLoggers,
        ],
      ),
  );
}

extension BuildContextExtension on BuildContext {
  Api get api => ScopeProvider.of<AppScopeContainer>(this)!.apiModule.apiDep.get;
}
