import 'package:doctors/core/helper/area_size.dart';
import 'package:doctors/core/helper/extensions.dart';
import 'package:doctors/core/router/routes.dart';
import 'package:doctors/core/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea
      (
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
          child:  Column(
            children:[
              SizedBox(
                width: double.infinity,
                height: 48.h,
                child: Stack(
                 children: [
Text('Hi, MOhamed',style: Styles.font16whitew6b.copyWith(color: Colors.black),),
Positioned(left: 0,top: 20.h,child: Text('How are you Today?',style: Styles.font12blackw4n,)),
PositionedDirectional(end: 0,top: 0,child: CircleAvatar(radius: 24.w,backgroundColor: Color(0xffF5F5F5,),child: IconButton(icon:Icon(Icons.notifications_none_rounded),onPressed: (){},)) )

                 ] 
                ),
              ),
         
          verticalSpacer(30),
           Expanded(
                child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1,
                    crossAxisCount: 3,
                    mainAxisSpacing: 5.h,
                    crossAxisSpacing: 5.w,
                  ),
                  children: [
                    //attendance
                    ServiceCard(
                      width: 100,
                      icon:  Icons.add,
                      iconSize: 25,
                      title: 'Consultation',
                      onTap: () async {
                       context.pushNamed(Routes.consultScreen);
                      },
                      isActive: true,
                    ),
                     ServiceCard(
                      width: 100,
                      icon:  Icons.add,
                      iconSize: 25,
                      title: 'Services',
                      onTap: () async {
                       
                      },
                      isActive: false,
                    ),
                     ServiceCard(
                      width: 100,
                      icon:  Icons.add,
                      iconSize: 25,
                      title: 'Store',
                      onTap: () async {
                       
                      },
                      isActive: false,
                    ),
                     ServiceCard(
                      width: 100,
                      icon:  Icons.add,
                      iconSize: 25,
                      title: 'Reports',
                      onTap: () async {
                       
                      },
                      isActive: false,
                    ),
              
            ],
          ),
        ),
      ]),
    )));
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.width,
    required this.icon,
    required this.iconSize,
    required this.title,
    required this.onTap,
    required this.isActive,
  });

  final double width;

  final IconData icon;
  final double iconSize;
  final String title;

  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: isActive ? Colors.white : Color.fromARGB(255, 247, 243, 243),
        elevation: isActive ? 5 : 0,
        child: SizedBox(
          width: width.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color:
                    isActive ? Colors.blue : const Color.fromARGB(255, 230, 226, 226),
                size: iconSize.sp,
                shadows: isActive
                    ? [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          blurRadius: 5,
                          spreadRadius: 3,
                          offset: const Offset(1, 4),
                        ),
                      ]
                    : [],
              ),
              verticalSpacer( 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: isActive
                    ? Styles.font16whitew6b.copyWith(color: Colors.black)
                       
                    : Styles.font16whitew6b
                        .copyWith(color: Colors.grey.shade300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
