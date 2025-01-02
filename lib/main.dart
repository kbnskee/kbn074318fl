import 'package:flutter/material.dart';
import 'package:kbn074318fl/components/bill_payment_1.dart';
import 'package:kbn074318fl/components/bill_payment_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 5, 61, 158)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Queue Viewer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(6),
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Row(
          children: [
            Column(
              children: [
                Container(height: 459, width: 465, padding: const EdgeInsets.all(9), margin: const EdgeInsets.all(3),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Container(
                    child: Column(children: [
                      const Text("Ticket Number",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                      Text("P30018",style: TextStyle(fontSize: 90,fontWeight: FontWeight.bold,color: Colors.red),),
                      Text("Please proceed to",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                      Text("Teller 1",style: TextStyle(fontSize: 63,fontWeight: FontWeight.bold,color: Colors.red),),
                    ],)
                  ),
                ),
                Container(height: 459, width: 465, margin: const EdgeInsets.all(3), padding: const EdgeInsets.all(9),
                  color: const Color.fromARGB(255, 26, 90, 63),
                  child: const Text(" Column 2"),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topRight,
              child: 
                Column(
                  children: [
                    Row(children: [
                      Container(height: 333, width: 333, margin: const EdgeInsets.all(3), padding: const EdgeInsets.all(9),
                        color: const Color.fromARGB(255, 26, 90, 63),
                        child: const Column(children: [
                          Text("Teller 1",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                          Text("Now Serving...",style: TextStyle(fontSize: 21,),),
                          const SizedBox(height: 45,),
                          BillPaymentOne()
                        ],),
                      ),
                      Container(height: 333,width: 333, margin: const EdgeInsets.all(3),padding: const EdgeInsets.all(9),
                        color: const Color.fromARGB(255, 26, 90, 63),
                        child: const Column(children: [
                          Text("Teller 2",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                          Text("Now Serving...",style:TextStyle(fontSize: 21)),
                          const SizedBox(height: 45,),
                          BillPaymentTwo()
                        ],),
                      ),
                      Container(height: 333,width: 333,margin: const EdgeInsets.all(3),padding: const EdgeInsets.all(9),
                        color: const Color.fromARGB(255, 26, 90, 63),
                        child: const Column(children: [
                          Text("Teller 3",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                          Text("Now Serving...",style: TextStyle(fontSize: 21),),
                          const SizedBox(height: 45,),
                          BillPaymentOne()
                        ],),
                      ),
                      Container(height: 333,width: 333,margin: const EdgeInsets.all(3),padding: const EdgeInsets.all(9),
                        color: const Color.fromARGB(255, 26, 90, 63),
                        child: const Column(children: [
                          Text("Teller 4",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                          Text("Now Serving...",style: TextStyle(fontSize: 21),)
                        ],),
                      ),
                    ],),
                  Row(children: [
                    Container(height: 333, width: 333, margin: const EdgeInsets.all(3), padding: const EdgeInsets.all(9),
                      color: const Color.fromARGB(255, 26, 90, 63),
                      child: const Column(
                        children: [
                          Text("Teller 1",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                          Text("Now Serving...",style: TextStyle(fontSize: 21,),)
                        ],
                      ),
                    ),
                    Container(height: 333,width: 333, margin: const EdgeInsets.all(3),padding: const EdgeInsets.all(9),
                      color: const Color.fromARGB(255, 26, 90, 63),
                      child: const Column(
                        children: [
                          Text("Teller 2",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                          Text("Now Serving...",style:TextStyle(fontSize: 21))
                        ],
                      ),
                    ),
                     Container(height: 333,width: 333,margin: const EdgeInsets.all(3),padding: const EdgeInsets.all(9),
                      color: const Color.fromARGB(255, 26, 90, 63),
                      child: const Column(
                        children: [
                          Text("Teller 3",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                          Text("Now Serving...",style: TextStyle(fontSize: 21),)
                        ],
                      ),
                    ),
                    Container(height: 333,width: 333,margin: const EdgeInsets.all(3),padding: const EdgeInsets.all(9),
                    color: const Color.fromARGB(255, 26, 90, 63),
                    child: const Column(
                      children: [
                        Text("Teller 4",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),),
                        Text("Now Serving...",style: TextStyle(fontSize: 21),)
                      ],
                    ),
                  ),
                ],
              ),
                  ],
                )
            )
          ],
        )
      
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
