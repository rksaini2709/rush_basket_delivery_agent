import 'package:flutter/material.dart';
import 'package:rush_basket_delivey_agent/Config/Colors.dart';

import 'OrderDetails.dart';
import 'ViewNewOrderScreen.dart';

class OrderCard extends StatelessWidget {
  final OrderItem orderItem;

  const OrderCard({super.key, required this.orderItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: lighterOrangeColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          // Navigate to the ViewNewOrderScreen and pass the selected orderItem
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ViewNewOrderScreen(orderItem: orderItem),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        orderItem.name,
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '( ₹${orderItem.price} )',
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: valvatColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        orderItem.location,
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      Text(
                        orderItem.description,
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),

            // Container for the image
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 125,
                height: 125,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    orderItem.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}











// import 'package:flutter/material.dart';
// import 'package:rush_basket_delivey_agent/Config/Colors.dart';
//
// import 'OrderDetails.dart';
//
// class OrderCard extends StatelessWidget {
//   final OrderItem orderItem;
//
//   const OrderCard({super.key, required this.orderItem});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: lighterOrangeColor,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       orderItem.name,
//                       style: const TextStyle(
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black),
//                     ),
//                     const SizedBox(width: 5),
//                     Text(
//                       '( ₹${orderItem.price} )',
//                       style: const TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w500,
//                           color: valvatColor),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 5),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       orderItem.location,
//                       style: const TextStyle(color: Colors.black, fontSize: 14),
//                     ),
//                     Text(
//                       orderItem.description,
//                       style: const TextStyle(color: Colors.black, fontSize: 14),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 15),
//               ],
//             ),
//           ),
//
//           // Container for the image
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Container(
//               width: 125,
//               height: 125,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(12),
//                 border: Border.all(color: Colors.black),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Image.asset(
//                   orderItem.imageUrl,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
