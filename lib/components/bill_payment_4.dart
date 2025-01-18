import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/io.dart';

class BillPaymentFour extends StatefulWidget {
  const BillPaymentFour({super.key});

  @override
  State<BillPaymentFour> createState() => _BillPaymentFourState();
}

class _BillPaymentFourState extends State<BillPaymentFour> {
  final TextEditingController _controller=TextEditingController();
  final _channel=WebSocketChannel.connect(
    Uri.parse('ws://5.5.5.5:30231/ws/queue/bill_payment_4/bill_payment_4/'),
  );

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _channel.stream,
      builder:(context,snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text(
            "...",
            style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
          );
        } else if (snapshot.hasError) {
          return const Text(
            "Error",
            style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.red),
          );
        } else if (snapshot.hasData) {
          try {
            final data = jsonDecode(snapshot.data.toString());
            final queueNo = data['queue_no'];
            return Text(
              queueNo.toString(),
              style: const TextStyle(fontSize: 63,fontWeight: FontWeight.bold),
            );
          } catch (e){
            return const Text(
              '!',
              style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.red),
            );
          }
        } else {
          return const Text(
            '-',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          );
        }
      }
    );
  }
  @override
  void dispose() {
    _channel.sink.close();
    super.dispose();
   }
}