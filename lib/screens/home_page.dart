import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/top_bar.dart';

class HomePage extends StatelessWidget {
  get itemBuilder => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(
                subtitle: 'Developer',
                title: 'Muhammad Shanoop E K',
                color: Color(0xff0B3D2E)),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Photography',
              style: TextStyle(fontSize: 22, color: Colors.green),
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 2,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 10,
                childAspectRatio: 1.5,
              ),
              itemBuilder: (ctx, index) => Container(
                child: Image.network(
                    "https://images.unsplash.com/photo-1623003439034-e55e6a1d4543?ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8NnNNVmpUTFNrZVF8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
