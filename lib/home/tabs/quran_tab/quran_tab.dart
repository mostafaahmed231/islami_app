import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/quran_tab/sura_model/sura_model.dart';
import 'package:islami_app/home/tabs/quran_tab/sura_name_item.dart';
import 'package:islami_app/sura_detalis/sura_detalis.dart';

import 'sura_item_horizant.dart';

class QuranTab extends StatefulWidget {
  QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  @override
  void initState() {
    super.initState();
    searchControllar.addListener(onSearch);
  }

  var searchControllar = TextEditingController();

  onSearch() {
    suraModel.searchResult.clear();
    String text = searchControllar.text;
    if (text.isNotEmpty) {
      for (String data in suraModel.suraNameEnglish) {
        if (text.toLowerCase().contains(text.toLowerCase())) {
          suraModel.searchResult.add(data);
        }
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _searchNameItem(),
          if (suraModel.searchResult.isEmpty &&
              searchControllar.text.isEmpty) ...[_suraNameHorizontalList()],
          _suraNameVertcalList(),
        ],
      ),
    );
  }

  Widget _searchNameItem() {
    return Column(
      children: [
        TextField(
            controller: searchControllar,
            cursorWidth: 3,
            cursorColor:Theme.of(context).primaryColor,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Sura Name",
              hintStyle: TextStyle(color: Colors.white),
              prefixIcon: ImageIcon(
                AssetImage("assets/images/Vector1.png"),
                color: Theme.of(context).primaryColor,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 2,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
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

  Widget _suraNameHorizontalList() {
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
                  model:
                  suraModel.getSuraModel(index),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
              itemCount: suraModel.length),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget _suraNameVertcalList() {
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
              separatorBuilder: (BuildContext context, int index) => Divider(
                color: Colors.white,
                endIndent: 40,
                indent: 40,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, SuraDetalis.routName,arguments: suraModel.getSuraModel(index));

                  },
                  child: SuraNameItem(
                    model: searchControllar.text.isNotEmpty
                        ? suraModel.getSelectSuraModel(index)
                        : suraModel.getSuraModel(index),
                  ),
                );
              },
              itemCount: searchControllar.text.isNotEmpty
                  ? suraModel.searchResult.length
                  : suraModel.length,
            ),
          )
        ],
      ),
    );
  }
}
