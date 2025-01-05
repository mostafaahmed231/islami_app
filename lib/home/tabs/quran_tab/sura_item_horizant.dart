import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/quran_tab/sura_model/sura_model.dart';

class SuraItemHorizant extends StatelessWidget {
  SuraItemHorizant({required this.model, super.key});

  suraModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFE2BE7F),
      ),
      child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Column(

            children: [
              SizedBox(height: 10,),
              Text("${model.nameEn}", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
              ),),
              SizedBox(height: 10,),
              Text("${model.nameAr}", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
              ),),
              SizedBox(height: 10,),
              Text("${model.numOfVerses} Verses", style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black
              ),),
            ],
          ),
          SizedBox(width: 24,),
          Image.asset("assets/images/vv1.png"),
        ],
      ),
    );
  }
}
