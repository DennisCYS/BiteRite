import 'package:flutter/material.dart';



class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(12, 15, 0, 1),
              ),
              
            )
          ],
        ),
      
    );

    
  }
}