import 'package:flutter/material.dart';
import 'package:rush_basket_delivey_agent/Config/Colors.dart';
import 'package:rush_basket_delivey_agent/Screens/ConfirmOrder/ConfirmOrderWithOTP.dart';
import 'package:rush_basket_delivey_agent/Screens/NewOrders/NewOrderScreen.dart';
import 'OrderDetails.dart';

class ViewNewOrderScreen extends StatelessWidget {
  final OrderItem orderItem;

  const ViewNewOrderScreen({super.key, required this.orderItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orangeColor,
        title: const Text(
          "New Order",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 350,
          // margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(
              color: valvatColor,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          orderItem.name,
                          style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          orderItem.description,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "1 best offer",
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Price: ₹${orderItem.price}',
                          style: const TextStyle(
                              color: orangeColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: lighterOrangeColor,
                              border: Border.all(
                                color: valvatColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              child: Text(
                                "Quantity : 1",
                                style: TextStyle(
                                    color: valvatColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ],
                    ),
                    Container(
                      width: 150,
                      height: 150,
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
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Rk Saini",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          orderItem.location,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        const Text(
                          "88xxxxxx30",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ConfirmOrderWithOtp()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: valvatColor,
                              // minimumSize: Size(200, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text(
                              "accept",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const NewOrderScreen()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: orangeColor,
                              // minimumSize: Size(200, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text(
                              "reject",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:rush_basket_delivey_agent/Config/Colors.dart';
// import 'OrderDetails.dart';
//
// class ViewNewOrderScreen extends StatelessWidget {
//   final OrderItem orderItem;
//
//   const ViewNewOrderScreen({super.key, required this.orderItem});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: orangeColor,
//         title: const Text(
//           "View Order Details",
//           style: TextStyle(color: Colors.white),
//         ),
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back,
//             color: Colors.white,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Image Section
//             Container(
//               width: 150,
//               height: 150,
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
//             const SizedBox(height: 20),
//
//             // Order Details Section
//             Text(
//               orderItem.name,
//               style: const TextStyle(
//                   fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               'Location: ${orderItem.location}',
//               style: const TextStyle(color: Colors.black, fontSize: 16),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               'Description: ${orderItem.description}',
//               style: const TextStyle(color: Colors.black, fontSize: 16),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               'Price: ₹${orderItem.price}',
//               style: const TextStyle(
//                   color: valvatColor, fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
