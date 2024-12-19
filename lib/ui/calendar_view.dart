import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarView extends ConsumerWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DateTime now = DateTime.now();
    final DateTime firstDay = DateTime.utc(2024, 1, 1);
    final DateTime lastDay = DateTime(now.year + 1, now.month, now.day);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TableCalendar(
              focusedDay: now,
              firstDay: firstDay,
              lastDay: lastDay,
              headerStyle: const HeaderStyle(
                formatButtonVisible: false,
                titleCentered: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
