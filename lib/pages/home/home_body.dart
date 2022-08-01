import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Show category List
        Container(
          height: 120,
          width: 120,
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container();
            },
          ),
        ),
        //Show Product List
      ],
    );
  }
}
