import 'package:flutter/material.dart';

Widget CardProduct()
{
  return SizedBox(
      height: 250,
      width: 150,
      child: Card(
        color: Colors.white,
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: const EdgeInsets.only(left: 33, top: 15),
                  child: Image.asset('assets/image/car_wash.png'),
                ),
                Padding(padding: const EdgeInsets.only(left: 12, bottom: 100),
                    child: Image.asset('assets/image/hit.png'),
                )
              ],
            ),
            const Padding(padding: const EdgeInsets.only(right: 35, top: 20),
                child: Text('МОЙКА RE 130 PLUS',
                  style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w700
                  ),
                )
            ),
            const Padding(padding: const EdgeInsets.only(right: 15, top: 10),
                child: Text('Компактная мойка высокого давления',
                  style: TextStyle(
                      fontSize: 5,
                      fontWeight: FontWeight.w500
                  ),
                )
            ),
            Padding(padding: const EdgeInsets.only(left: 13),
              child: Row(
               children: [
                 const Padding(padding: const EdgeInsets.only(right: 15, top: 10),
                     child: Text('49 990р.',
                       style: TextStyle(
                           color: Color(0xFFEE7100),
                           fontSize: 7,
                           fontWeight: FontWeight.w500
                       ),
                     )
                 ),
                 Padding(padding: const EdgeInsets.only(top: 10),
                     child: Container(
                       height: 20,
                       width: 59,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(3),
                         color: const Color(0xFFEE7100),
                       ),
                       child: TextButton(onPressed: (){}, child: const Text('ПОДРОБНЕЕ',
                         style: TextStyle(
                             fontSize: 3,
                             color: Colors.white
                         )
                         )
                       ),
                     )
                 )
               ],
              ),
            )
          ],
        ),
      )
  );
}