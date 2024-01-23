import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';

class TrackerPage extends StatefulWidget {
  const TrackerPage({super.key});

  @override
  State<TrackerPage> createState() => _TrackerPageState();
}

class _TrackerPageState extends State<TrackerPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print(DateFormat('E, MMM d').format(DateTime.parse("2024-01-23")));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: SvgPicture.asset('assets/icons/menu.svg'))
        ],
      ),
      body: Column(
        children: [
          _buildDefaultSingleDatePickerWithValue(),
          Expanded(
            child: Container(
              height: 80,
              width: 80,
              child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xffD9D9D9),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 45,
                    ),
                    onPressed: () {
                      // ...
                    },
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDefaultSingleDatePickerWithValue() {
    final config = CalendarDatePicker2Config(
      selectedDayHighlightColor: Color(0xff6DADF9),
      yearBuilder: ({
        required year,
        decoration,
        isCurrentYear,
        isDisabled,
        isSelected,
        textStyle,
      }) {
      },
      weekdayLabels: ['S', 'M', 'T', 'W', 'T', 'F', 'S'],
      weekdayLabelTextStyle: const TextStyle(
          color: Colors.black87,
          fontSize: 16),
      firstDayOfWeek: 0,
      controlsHeight: 50,
      calendarType: CalendarDatePicker2Type.single,
      controlsTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
      dayTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 16),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              DateFormat('E, MMM d').format(DateTime.parse(_getValueText(
                config.calendarType,
                _singleDatePickerValueWithDefaultValue,
              ).trim())),
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            )),
        // const Text('Single Date Picker (With default value)'),
        CalendarDatePicker2(
          config: config,
          value: _singleDatePickerValueWithDefaultValue,
          onValueChanged: (dates) =>
              setState(() => _singleDatePickerValueWithDefaultValue = dates),
        ),
      ],
    );
  }

  List<DateTime?> _singleDatePickerValueWithDefaultValue = [
    DateTime.now(),
  ];
  String _getValueText(
    CalendarDatePicker2Type datePickerType,
    List<DateTime?> values,
  ) {
    values =
        values.map((e) => e != null ? DateUtils.dateOnly(e) : null).toList();
    var valueText = (values.isNotEmpty ? values[0] : null)
        .toString()
        .replaceAll('00:00:00.000', '');

    if (datePickerType == CalendarDatePicker2Type.multi) {
      valueText = values.isNotEmpty
          ? values
              .map((v) => v.toString().replaceAll('00:00:00.000', ''))
              .join(', ')
          : 'null';
    } else if (datePickerType == CalendarDatePicker2Type.range) {
      if (values.isNotEmpty) {
        final startDate = values[0].toString().replaceAll('00:00:00.000', '');
        final endDate = values.length > 1
            ? values[1].toString().replaceAll('00:00:00.000', '')
            : 'null';
        valueText = '$startDate to $endDate';
      } else {
        return 'null';
      }
    }

    return valueText;
  }
}