import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Image(image: AssetImage('assets/landscape.jpg')), Title()],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Montaña misteriosa',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Lugar inventado')
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.amber[200],
              ),
              Text('41')
            ],
          )
        ],
      ),
    );
  }
}
