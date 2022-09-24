import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/counter1_provider.dart';

class CounterThree extends StatelessWidget {
  const CounterThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0XFF8CBC22),
        title: Text("Counter ${context.watch<Counter>().index3}"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.network(
                'https://static.wixstatic.com/media/fb82b4_f1c06513fa964be1b7551cad7dd8d27b~mv2.png/v1/fill/w_164,h_30,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Ativo%201.png'),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () => context.read<Counter>().increment3(),
            child: Container(
              width: 200,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0XFF47C0FC),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Increment Me !",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<Counter>().increment3(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
