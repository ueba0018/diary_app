import 'package:diary_app/ui/calendar_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const CalendarView(),
        )
      ],
    );
  },
);
