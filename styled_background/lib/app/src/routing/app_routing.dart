import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:styled_background/app/app.dart';
import 'package:styled_background/styled_background/src/config/index.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
//final _shellNavigatorKey = GlobalKey<NavigatorState>();

final _defaultConfig = StyledBackgroundConfig(
  bgColor: StyledBackgroundConstants.color,
  bgImageOpacity: StyledBackgroundConstants.imageOpacity,
  bgImageFileName:
      'https://companieslogo.com/img/orig/ALKT-35963011.png?t=1720244490', // 'assets/images/${StyledBackgroundConstants.imageFileName2}',
  bgImageSize: StyledBackgroundConstants.imageSize,
  bgImagePosX: StyledBackgroundConstants.imagePosX,
  bgImagePosY: StyledBackgroundConstants.imagePosY,
  bgImageXOffset: StyledBackgroundConstants.imageOffsetX,
  bgImageYOffset: StyledBackgroundConstants.imageOffsetY,
);

final appRouterConfig = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/accounts',
  debugLogDiagnostics: true,
  routes: [
    // GoRoute(
    //   path: '/accounts',
    //   builder: (context, state) => AccountsPage(),
    // ),
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state, StatefulNavigationShell navigationShell) {
        return BlocProvider(
          create: (_) => AppCubit(config: _defaultConfig)..buildBackground(),
          child: AppScaffoldBottomNavigationBar(
            navigationShell: navigationShell,
          ),
        );
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/accounts',
            builder: (context, state) => AccountsPage(),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/configuration',
            builder: (context, state) => ConfigurationPage(
              config: context.read<AppCubit>().state.config,
            ),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/profile',
            builder: (context, state) => ProfilePage(),
          ),
        ]),
      ],
    ),
  ],
);
