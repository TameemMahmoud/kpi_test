import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:kpi_test/utils/resources/app_colors.dart';
import 'package:toggle_list/toggle_list.dart';

import 'widgets/customer_info_widget.dart';
import 'widgets/repair_details_widget.dart';
import 'widgets/task_details_widget.dart';
import 'widgets/timer_widget.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = '/DetailsScreen';
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const Text('s17726'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Accordion(
          disableScrolling: true,
          headerBorderColor: Colors.blueGrey,
          headerBorderColorOpened: Colors.transparent,
          // headerBorderWidth: 1,
          headerBackgroundColorOpened: Colors.green,
          contentBackgroundColor: Colors.white,
          contentHorizontalPadding: 20,
          scaleWhenAnimating: true,
          openAndCloseAnimation: true,
          headerPadding:
          const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
          sectionClosingHapticFeedback: SectionHapticFeedback.light,

          children: [
            AccordionSection(
              contentVerticalPadding: 20,
              isOpen: true,
              leftIcon:
              const Icon(Icons.person_outline, color: Colors.white,),
              headerBackgroundColorOpened: AppColors.mainColor,
              header: const Text(
                'Customer Information',
                style: TextStyle(color: Colors.white),
              ),
              content: const CustomerInfoWidget(),
              contentHorizontalPadding: 20,
            ),
            AccordionSection(
              contentVerticalPadding: 20,
              isOpen: true,
              leftIcon:
              const Icon(Icons.timer_outlined, color: Colors.white,),
              headerBackgroundColorOpened: AppColors.mainColor,
              header: const Text(
                'Timer',
                style: TextStyle(color: Colors.white),
              ),
              content: TimerWidget(),
              contentHorizontalPadding: 20,
            ),
            AccordionSection(
              contentVerticalPadding: 20,
              isOpen: true,
              leftIcon:
              const Icon(Ionicons.document_text, color: Colors.white,),
              headerBackgroundColorOpened: AppColors.mainColor,
              header: const Text(
                'WO Task Details',
                style: TextStyle(color: Colors.white),
              ),
              content: const TaskDetailsWidget(),
              contentHorizontalPadding: 20,
            ),
            AccordionSection(
              contentVerticalPadding: 20,
              isOpen: true,
              leftIcon:
              const Icon(Ionicons.document_text, color: Colors.white,),
              headerBackgroundColorOpened: AppColors.mainColor,
              header: const Text(
                'Repair Details',
                style: TextStyle(color: Colors.white),
              ),
              content:  RepairDetails(),
              contentHorizontalPadding: 20,
            ),
            AccordionSection(
              contentVerticalPadding: 20,
              isOpen: true,
              leftIcon:
              const Icon(Ionicons.people, color: Colors.white,),
              headerBackgroundColorOpened: AppColors.mainColor,
              header: const Text(
                'RESOURCE',
                style: TextStyle(color: Colors.white),
              ),
              content:  Text('RESOURCE'),
              contentHorizontalPadding: 20,
            ),
            AccordionSection(
              contentVerticalPadding: 20,
              isOpen: true,
              leftIcon:
              const Icon(Ionicons.image, color: Colors.white,),
              headerBackgroundColorOpened: AppColors.mainColor,
              header: const Text(
                'IMAGES/SIGNATURES',
                style: TextStyle(color: Colors.white),
              ),
              content:  Text('IMAGES/SIGNATURES'),
              contentHorizontalPadding: 20,
            ),
            AccordionSection(
              contentVerticalPadding: 20,
              isOpen: true,
              leftIcon:
              const Icon(MaterialCommunityIcons.cart_plus, color: Colors.white,),
              headerBackgroundColorOpened: AppColors.mainColor,
              header: const Text(
                'ALLOCATE MATERIAL',
                style: TextStyle(color: Colors.white),
              ),
              content:  Text('ALLOCATE MATERIAL'),
              contentHorizontalPadding: 20,
            ),
            AccordionSection(
              contentVerticalPadding: 20,
              isOpen: true,
              leftIcon:
              const Icon(SimpleLineIcons.list, color: Colors.white,),
              headerBackgroundColorOpened: AppColors.mainColor,
              header: const Text(
                'TASK CHECKLIST',
                style: TextStyle(color: Colors.white),
              ),
              content: Text('TASK CHECKLIST'),
              contentHorizontalPadding: 20,
            ),
          ],
        ),
      ),
    );
  }
}
