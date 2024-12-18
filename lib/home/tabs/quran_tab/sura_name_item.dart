import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/quran_tab/sura_model/sura_model.dart';

class SuraNameItem extends StatelessWidget {
  SuraNameItem({required this.model, super.key});

suraModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Stack(
           alignment: Alignment.center,
           children: [
             ImageIcon(AssetImage("assets/images/Group.png"),size: 35,color: Colors.white,)
         ,Text("${model.index}",style: TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: Colors.white
    ),)
           ],
         ),
          SizedBox(width: 16,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.nameEn, style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                ),),
                Text("${model.numOfVerses} Verses" , style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                ),),
              ],
            ),
          ),

          Text(model.nameAr, style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white
          ),),
        ],
      ),
    );
  }
}
