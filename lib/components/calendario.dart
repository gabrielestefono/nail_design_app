import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendario extends StatefulWidget {
  const Calendario({super.key});

  @override
  CalendarioState createState() => CalendarioState();
}

class CalendarioState extends State<Calendario> {
  CalendarFormat _formato = CalendarFormat.month;
  DateTime _diaSelecionado = DateTime.now();
  final DateTime _diaInicial = DateTime.now();
  final DateTime _diaFinal = DateTime.utc(2100, 1, 1);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TableCalendar(
        headerStyle: const HeaderStyle(
          titleCentered: true,
          formatButtonVisible: false,
          leftChevronIcon: Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
          rightChevronIcon: Icon(
            Icons.chevron_right,
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        calendarStyle: const CalendarStyle(
          outsideDaysVisible: false,
          defaultTextStyle: TextStyle(
            color: Colors.white,
          ),
          selectedDecoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
        ),
        daysOfWeekVisible: true,
        daysOfWeekStyle: const DaysOfWeekStyle(
          weekdayStyle: TextStyle(
            color: Colors.white,
          ),
          weekendStyle: TextStyle(
            color: Colors.white,
          ),
        ),
        firstDay: _diaInicial,
        lastDay: _diaFinal,
        focusedDay: _diaSelecionado,
        calendarFormat: _formato,
        onFormatChanged: (format) {
          setState(() {
            _formato = format;
          });
        },
        onPageChanged: (focusedDay) {
          _diaSelecionado = focusedDay;
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _diaSelecionado = selectedDay;
          });
        },
      ),
    );
  }
}
