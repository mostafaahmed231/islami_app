import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../home/tabs/quran_tab/sura_model/sura_model.dart';

class SuraDetalis extends StatefulWidget {
  static const String routName = "suraDetalis";

  SuraDetalis({super.key});

  @override
  State<SuraDetalis> createState() => _SuraDetalisState();
}

class _SuraDetalisState extends State<SuraDetalis> {
  List<String> verases = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as suraModel;
    if (verases.isEmpty) {
      loadSuraFiles(model.index + 1);
    }
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

          title: Text(
            model.nameEn,

          ),
        ),
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              "assets/images/Soura Details S.png",
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text(
                    model.nameAr,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 32,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 8,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(color:Theme.of(context).primaryColor,)
                          ),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: Text.rich(textAlign: TextAlign.center,
                                TextSpan(
                            
                              children: [
                                TextSpan(
                                text: "${verases[index]}",
                                  style: TextStyle(
                                      color:Theme.of(context).primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                text: "(${index+1})",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ]
                            )),
                          )
                        );
                      },
                      itemCount: verases.length,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  loadSuraFiles(int index) async {
    String file = await rootBundle.loadString("assets/files/$index.txt");
    List<String> lines = file.split("\n");
    print(lines);
    verases = lines;
    setState(() {});
  }
}
