import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.grey, // Set the border color as per your requirement
              width: 1.0, // Set the border width as per your requirement
            ),
          ),
          child: DropdownButton<String>(
            value: categories[0],
            onChanged: (String? newValue) {

            },
            underline: const SizedBox(),
            items: categories.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 17,),
        SlideCountdown(
          duration: const Duration(days: 2),
          separatorType: SeparatorType.symbol,
          slideDirection: SlideDirection.up,
        )
      ],
    );
  }
}

List<String> categories = [
  'Construction',
  'Landscaping',
  'General Maintenance',
  'Manufacturing and Assembly',
  'Warehouse and Logistics',
  'Cleaning and Janitorial',
  'Demolition',
  'Roadwork and Infrastructure',
  'Specialized Trades',
  'Event Setup and Support',
  'Healthcare Support',
  'Agricultural Work',
];