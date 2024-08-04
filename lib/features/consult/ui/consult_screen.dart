import 'dart:developer';

import 'package:doctors/core/helper/area_size.dart';
import 'package:doctors/core/helper/extensions.dart';
import 'package:doctors/core/router/routes.dart';
import 'package:doctors/features/consult/ui/widgets/search_for_patient.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

class ConsultScreen extends StatelessWidget {
   ConsultScreen({super.key});
final TextEditingController textinput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: SafeArea(child: Column(children: [
      SearchForPatient(textinput: textinput),
     
     Expanded(
       child: HorizontalDataTable(
          leftHandSideColumnWidth: 100,
          rightHandSideColumnWidth: 600,
          isFixedHeader: true,
          headerWidgets: _getTitleWidget(),
          isFixedFooter: true,
          footerWidgets: _getTitleWidget(),
          leftSideItemBuilder: _generateFirstColumnRow,
          rightSideItemBuilder: _generateRightHandSideColumnRow,
          itemCount: 10,
          rowSeparatorWidget: const Divider(
            color: Colors.black38,
            height: 1.0,
            thickness: 0.0,
          ),
          leftHandSideColBackgroundColor: const Color(0xFFFFFFFF),
          rightHandSideColBackgroundColor: const Color(0xFFFFFFFF),
          itemExtent: 55,
        ),
     ),
    ],)),);
  }

 List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('Name', 200),
      _getTitleItemWidget('File Number', 100),
      _getTitleItemWidget('Comming Time', 120),
      _getTitleItemWidget('Status', 100),
    
    ];
  }

 Widget _getTitleItemWidget(String label, double width) {
    return Container(
      width: width,
      height: 56,
      color: Color.fromARGB(255, 245, 245, 245),
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return Container(
      width: 100,
      height: 52,
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: const Text('mohamed elmeshtawy'),
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child:
              const Text('12514'),
           
        ),
        Container(
          width: 200,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.centerLeft,
          child: const Text('10/2/2024'),
        ),
        Container(
          width: 100,
          height: 52,
          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
          alignment: Alignment.center,
          child: GestureDetector(onTap: (){
            log('=============');
            context.pushNamed(Routes.patientFormScreen);
          },child: const Text('attended')),
        ),
      
      ],
    );
  }






}