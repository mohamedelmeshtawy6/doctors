

import 'package:doctors/core/helper/area_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> sharedSnackBar(BuildContext context,IconData icon,Color iconColor,String content,Color backgroundColor) {
 
 return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      dismissDirection: DismissDirection.horizontal,
      duration: const Duration(seconds: 2),
      content: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: iconColor,
              ),
              horizontalSpacer(2),
              Center(child: Text(content)),
            ],
          ),
        ],
      ),
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
      
        left: 20.w,
        right: 20.w,
      ),
    ),
  );

}