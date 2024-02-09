import 'package:flutter/material.dart';

class HomeTimeTrackerWidget extends StatelessWidget {
  const HomeTimeTrackerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
      return Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            VerticalDivider(
              thickness: 3,
              color: Colors.deepOrangeAccent,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('3M : PRJ000103', style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w700,
                  ),),
                  const SizedBox(height: 10,),
                  RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(text: 'Date:', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '25/07/2023'),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                    color: Colors.deepOrangeAccent,
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Text('1:00 hrs')),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
