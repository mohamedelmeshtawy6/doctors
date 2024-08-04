
import 'package:doctors/core/helper/app_assets.dart';
import 'package:doctors/core/widget/app_button.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class PaientFormScreen extends StatefulWidget {
  const PaientFormScreen({super.key});

  @override
  State<PaientFormScreen> createState() => _PaientFormScreenState();
}



class _PaientFormScreenState extends State<PaientFormScreen> {

int counter = 0;
void increase(){
  setState(() {
      counter++;

  });
}
void decrease(){
setState(() {
  counter--;
});

}

  @override
  Widget build(BuildContext context) {
    return 
           Scaffold(
              body: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height: 120,
                            child: Row(
                              children: [
                               Image.asset(AppAssets.splash, height: 80, width: 80),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                   Text('how is that'),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                                                        Text('\$ 15'),

                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        color: Colors.grey.shade200,
                                        width: 140,
                                        height: 40,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            GestureDetector(
                                                onTap: () => increase(),
                                                child: const Icon(Icons.add)),
                                                                               Text(counter.toString()),

                                            Container(
                                                padding: const EdgeInsets.only(
                                                    bottom: 13),
                                                child: GestureDetector(
                                                    onTap: () => decrease(),
                                                    child: const Icon(
                                                        Icons.minimize))),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 20);
                        },
                        itemCount: 5),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                                                             Text('Total Price'),

                          const SizedBox(
                            height: 15,
                          ),
                                                           Text('\$1000'),

                        ],
                      ),
                                                                                       Align(alignment: Alignment.centerRight,child: AppButton(buttonName: 'Ok', onpress: (){},buttonWidth: 70,buttonHeight: 35,))

                     
                    ],
                  ),
                )
              ],
            ));
    
  }
}
