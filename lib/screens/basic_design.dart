import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          Title(),
          ButtonsSection(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus a bibendum ligula. Fusce mattis ex vitae turpis accumsan, sit amet iaculis felis molestie. Ut nec consequat ipsum. Suspendisse eu vulputate magna. Nulla porta nunc lectus, in suscipit augue cursus a. Proin molestie convallis nisl, in vestibulum dui porttitor nec. Sed imperdiet quam a purus elementum, vel mattis nibh consequat.'),
          ),
        ],
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

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(icon: Icons.phone, text: 'CALL'),
          CustomButton(icon: Icons.near_me, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Icon(
            icon,
            color: Colors.blue,
          ),
          margin: EdgeInsets.symmetric(vertical: 5),
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
