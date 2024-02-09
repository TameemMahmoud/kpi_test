import 'package:flutter/material.dart';
import 'package:kpi_test/common_widgets/info_line_widget.dart';
import 'package:kpi_test/common_widgets/input_field.dart';
import 'package:kpi_test/utils/resources/app_colors.dart';

class RepairDetails extends StatelessWidget {
   RepairDetails({super.key});

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const InfoLineWidget(text: 'CURRENT METER READING', value: Text('83')),
        InfoLineWidget(
          text: 'RUN HOURS',
          value: SizedBox(
            height: 40,
            child: MyInputFiled(
              hint: '',
              label: '',
              controller: controller,
              inputIcon: null,
              validate: (value) {},
            ),
          ),
        ),
        const InfoLineWidget(text: 'EQUIPMENT STATUS', value: Text('Sold')),
        const InfoLineWidget(text: 'ESTIMATED REPAIR HOUR', value: Text('10')),
        const SizedBox(
          height: 17,
        ),
        MaterialButton(
          onPressed: () {},
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: AppColors.mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.save_outlined,
                color: Colors.white,
              ),
              SizedBox(width: 10,),
              Text('Save Details', style: TextStyle(
                color: Colors.white
              ),),
            ],
          ),
        ),
      ],
    );
  }
}
