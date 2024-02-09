import 'package:flutter/material.dart';
import 'package:kpi_test/common_widgets/info_line_widget.dart';

class TaskDetailsWidget extends StatelessWidget {
  const TaskDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const InfoLineWidget(text: 'WO TYPE', value: Text('PMS')),
        const InfoLineWidget(
          text: 'SO REFERENCE',
          value: SizedBox(),
        ),
        const InfoLineWidget(text: 'ASSET NO#', value: Text('006182077')),
        InfoLineWidget(text: 'Asset Location', value: Row(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: const StadiumBorder(),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.add_location_alt, color: Colors.green,)),
                    const VerticalDivider(),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.location_on_rounded, color: Colors.grey,)),
                  ],
                ),
              ),
            ),
          ],
        )),
        const InfoLineWidget(
            text: 'Asset Descp.', value: Text('Compressor/150-199 CFM')),
      ],
    );
  }
}
