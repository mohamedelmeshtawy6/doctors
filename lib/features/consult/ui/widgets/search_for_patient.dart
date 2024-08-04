import 'dart:ffi';


import 'package:doctors/core/helper/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchForPatient extends StatefulWidget {
  final TextEditingController textinput;

  const SearchForPatient({
    super.key,
    required this.textinput,
  });

  @override
  State<SearchForPatient> createState() => _SearchForPatientState();
}

class _SearchForPatientState extends State<SearchForPatient> {
  bool issearch = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 48.h, bottom: 30.h),
      child: widgetappbar(context),
    );
  }

  Row widgetappbar(BuildContext context) {
    if (issearch == true) {
      return Row(
        children: [
          Expanded(
              child: TextFormField(
                textAlign: TextAlign.center,
                  decoration:
                      const InputDecoration(hintText: 'find with name',),
                  controller: widget.textinput,
                  onChanged: (value) {
                 /*    if (value.isNotEmpty) {
                      BlocProvider.of<NewestCubit>(context)
                          .filtersearched(value);
                      BlocProvider.of<ImagesCubit>(context)
                          .filtersearched(value);
                    } else {
                      BlocProvider.of<NewestCubit>(context).closesearch();
                      BlocProvider.of<ImagesCubit>(context).closesearch();
                    } */
                  })),
          IconButton(
              onPressed: () {
                setState(() {
                  widget.textinput.clear();
                  issearch = false;
                });
              /*   BlocProvider.of<NewestCubit>(context).closesearch();
                BlocProvider.of<ImagesCubit>(context).closesearch(); */
              },
              icon: Icon(Icons.close))
        ],
      );
    } else {
      return Row(
        children: [
          SvgPicture.asset(AppAssets.logo),
          const Spacer(),
          IconButton(
              onPressed: () {
                print('oh');
                ModalRoute.of(context)!.addLocalHistoryEntry(LocalHistoryEntry(
                  onRemove: stopsearch(),
                ));
                //?change it direct to search bar
                setState(() {
                  issearch = true;
                });
              },
              icon: const Opacity(
                  opacity: .6, child: Icon(Icons.search_rounded)))
        ],
      );
    }
  }

  stopsearch() {
    setState(() {
      widget.textinput.clear();

      issearch = false;
    });
  }
}
