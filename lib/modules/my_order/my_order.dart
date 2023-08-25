import 'package:flutter/material.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(
                          Icons.arrow_back_ios,
                        size: 24,
                      ),
                      Spacer(),
                      Icon(
                          Icons.search,
                        size: 24,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                      'My Orders',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                 Row(
                   children: [
                     Expanded(
                       child: Container(
                         alignment: AlignmentDirectional.center,
                         height: 30,
                         width: 100,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(29),
                           color: const Color(0xFF222222),
                         ),
                         child: const Text(
                           'Delivered',
                           style: TextStyle(
                             fontSize: 14,
                             fontWeight: FontWeight.w500,
                             color: Colors.white,
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Container(
                         alignment: AlignmentDirectional.center,
                         height: 30,
                         width: 100,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(29),
                           color: Colors.white,
                         ),
                         child: const Text(
                           'Processing',
                           style: TextStyle(
                             fontSize: 14,
                             fontWeight: FontWeight.w500,
                             color: Colors.black,
                           ),
                         ),
                       ),
                     ),
                     Expanded(
                       child: Container(
                         alignment: AlignmentDirectional.center,
                         height: 30,
                         width: 100,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(29),
                           color: Colors.white,
                         ),
                         child: const Text(
                           'Cancelled',
                           style: TextStyle(
                             fontSize: 14,
                             fontWeight: FontWeight.w500,
                             color: Colors.black,
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding:const EdgeInsets.all(17),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFFFFFFFF),
                    ),
                    child:  Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                                'Order №1947034',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                            Spacer(),
                            Text(
                              '05-12-2019',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                color:Color(0xFF9B9B9B),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Tracking number:',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color:Color(0xFF9B9B9B),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'IW3475453455',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color:Color(0xFF222222),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Quantity:',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:Color(0xFF9B9B9B),
                                  ),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color:Color(0xFF222222),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Text(
                                  'Total Amount:',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:Color(0xFF9B9B9B),
                                  ),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  '112\$',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:Color(0xFF222222),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: AlignmentDirectional.center,
                              height: 36,
                              width: 98,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(
                                    color: Colors.black
                                ),
                                color: Colors.white,
                              ),
                              child: const Text(
                                'Details',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const Spacer(),
                            const Text(
                                'Delivered',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color:Color(0xFF2AA952),
                            ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding:const EdgeInsets.all(17),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFFFFFFFF),
                    ),
                    child:  Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Order №1947034',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Spacer(),
                            Text(
                              '05-12-2019',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color:Color(0xFF9B9B9B),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Tracking number:',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color:Color(0xFF9B9B9B),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'IW3475453455',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color:Color(0xFF222222),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Quantity:',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:Color(0xFF9B9B9B),
                                  ),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color:Color(0xFF222222),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Text(
                                  'Total Amount:',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:Color(0xFF9B9B9B),
                                  ),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  '112\$',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:Color(0xFF222222),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: AlignmentDirectional.center,
                              height: 36,
                              width: 98,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(
                                    color: Colors.black
                                ),
                                color: Colors.white,
                              ),
                              child: const Text(
                                'Details',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              'Delivered',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color:Color(0xFF2AA952),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding:const EdgeInsets.all(17),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFFFFFFFF),
                    ),
                    child:  Column(
                      children: [
                        const Row(
                          children: [
                            Text(
                              'Order №1947034',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            Spacer(),
                            Text(
                              '05-12-2019',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color:Color(0xFF9B9B9B),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Row(
                          children: [
                            Text(
                              'Tracking number:',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color:Color(0xFF9B9B9B),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'IW3475453455',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color:Color(0xFF222222),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Quantity:',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:Color(0xFF9B9B9B),
                                  ),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color:Color(0xFF222222),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Text(
                                  'Total Amount:',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:Color(0xFF9B9B9B),
                                  ),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Text(
                                  '112\$',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:Color(0xFF222222),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          children: [
                            Container(
                              alignment: AlignmentDirectional.center,
                              height: 36,
                              width: 98,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(
                                    color: Colors.black
                                ),
                                color: Colors.white,
                              ),
                              child: const Text(
                                'Details',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              'Delivered',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color:Color(0xFF2AA952),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),


                ],
              ),
            ),

        ]
        ),
      ),
    );
  }
}
