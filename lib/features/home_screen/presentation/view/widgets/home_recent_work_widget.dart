import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:kpi_test/features/details_screen/presentation/view/details_screen.dart';
import 'package:kpi_test/utils/resources/app_colors.dart';

class HomeRecentWork extends StatelessWidget {
  const HomeRecentWork({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.pushNamed(context, DetailsScreen.routeName);
            },
            child: SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 180,
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            const VerticalDivider(
                              thickness: 3,
                              color: AppColors.mainColor,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'PRJ000103',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text('Customer: AB&l Holdings'),
                                  Text('Asset: ATC100T0080'),
                                  Text('Date: 24/07/2023'),
                                  Text('Type: PDI'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 40,
                    child: MaterialButton(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: const StadiumBorder(),
                      color: AppColors.mainColor,
                      onPressed: () {},
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(AntDesign.search1, color: Colors.white,),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Open', style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
