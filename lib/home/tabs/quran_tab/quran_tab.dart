import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/quran_tab/sura_model/sura_model.dart';
import 'package:islami_app/home/tabs/quran_tab/sura_name_item.dart';

import 'sura_item_horizant.dart';


class QuranTab extends StatelessWidget {
  const QuranTab({super.key});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _searchNameItem(),
          _suraNameHorizontalList(),
          _suraNameVertcalList(),



        ],
      ),
    );
  }
  Widget _searchNameItem(){
    return Column(
      children: [
        TextField(
            cursorWidth: 3,
            cursorColor: Color(0xFFE2BE7F),
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Sura Name",
              hintStyle: TextStyle(color: Colors.white),
              prefixIcon: ImageIcon(
                AssetImage("assets/images/Vector1.png"),
                color: Color(0xFFE2BE7F),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Color(0xFFE2BE7F),
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Color(0xFFE2BE7F),
                  width: 2,
                ),
              ),
            )),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
  Widget _suraNameHorizontalList(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Most Recently ",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        Container(
          height: 150,

          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SuraItemHorizant(
               model: suraModel.getSuraModel(index),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              width: 20 ,
            ),
            itemCount: suraModel.length
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
  Widget _suraNameVertcalList(){
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Suras List ",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView.separated(

              itemBuilder: (context, index) {
                return SuraNameItem(

                   model: suraModel.getSuraModel(index),);
              },
              itemCount: suraModel.length,
              separatorBuilder: (BuildContext context, int index) => Divider(
                color: Colors.white,
                endIndent: 40,
                indent: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}
