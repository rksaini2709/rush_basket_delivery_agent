import 'package:flutter/material.dart';
import 'package:rush_basket_delivey_agent/Config/Colors.dart';
import 'package:rush_basket_delivey_agent/Screens/NewOrders/OrderCard.dart';


import 'OrderDetails.dart';

class NewOrderScreen extends StatefulWidget {
  const NewOrderScreen({super.key});

  @override
  State<NewOrderScreen> createState() => _NewOrderScreenState();
}

class _NewOrderScreenState extends State<NewOrderScreen> {
  List<OrderItem> orderItems = [
    OrderItem(
        name: "Chips",
        description: "hey its rk product.. so yummy",
        price: 20.00,
        imageUrl: 'assets/images/LaysChips.png',
        location: 'Saharanpur'),
    OrderItem(
        name: "Chips",
        description: "hey its rk product.. so yummy",
        price: 30.00,
        imageUrl: 'assets/images/LaysChips.png',
        location: 'Chandigarh'),
    OrderItem(
        name: "Chips",
        description: "hey its rk product.. so yummy",
        price: 20.00,
        imageUrl: 'assets/images/LaysChips.png',
        location: 'Delhi'),
    OrderItem(
        name: "Chips",
        description: "hey its rk product.. so yummy",
        price: 30.00,
        imageUrl: 'assets/images/LaysChips.png',
        location: 'Lucknow'),
  ];

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
      body: ListView.builder(
        itemCount: orderItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: OrderCard(orderItem: orderItems[index]),
          );
        },
      ),
    );
  }
}














// import 'package:flutter/material.dart';
// import 'package:rush_basket_delivey_agent/Config/Colors.dart';
// import 'package:rush_basket_delivey_agent/Screens/NewOrders/OrderCard.dart';
//
// import 'OrderDetails.dart';
//
// class NewOrderScreen extends StatefulWidget {
//   const NewOrderScreen({super.key});
//
//   @override
//   State<NewOrderScreen> createState() => _NewOrderScreenState();
// }
//
// class _NewOrderScreenState extends State<NewOrderScreen> {
//   List<OrderItem> orderItems = [
//     OrderItem(
//         name: "Chips",
//         description: "hey its rk product.. so yummy",
//         price: 20.00,
//         imageUrl: 'assets/images/LaysChips.png',
//         location: 'Saharanpur'),
//     OrderItem(
//         name: "Chips",
//         description: "hey its rk product.. so yummy",
//         price: 30.00,
//         imageUrl: 'assets/images/LaysChips.png',
//         location: 'Chandigarh'),
//     OrderItem(
//         name: "Chips",
//         description: "hey its rk product.. so yummy",
//         price: 20.00,
//         imageUrl: 'assets/images/LaysChips.png',
//         location: 'Delhi'),
//     OrderItem(
//         name: "Chips",
//         description: "hey its rk product.. so yummy",
//         price: 30.00,
//         imageUrl: 'assets/images/LaysChips.png',
//         location: 'Lucknow'),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: orangeColor,
//         title: const Text(
//           "New Order",
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
//       body: ListView.builder(
//         itemCount: orderItems.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
//             child: OrderCard(orderItem: orderItems[index]),
//           );
//         },
//       ),
//     );
//   }
// }
