import 'package:flutter/material.dart';
import 'package:kpi_test/features/home_screen/data/model/category_model.dart';

class HomeFirstWidget extends StatelessWidget {
  const HomeFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (context, index){
      return SizedBox(
        height: 110,
        width: 110,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(categoriesList[index].value.toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                Row(
                  children: [
                    Icon(categoriesList[index].icon, size: 30,),
                    const SizedBox(width: 5,),
                    Text(categoriesList[index].text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}



